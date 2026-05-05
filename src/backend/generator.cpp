#include "backend/generator.h"

#include <algorithm>
#include <cassert>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <map>
#include <set>
#include <string>
#include <vector>

using ir::CallInst;
using ir::Function;
using ir::GlobalVal;
using ir::Instruction;
using ir::Operand;
using ir::Operator;
using ir::Type;

namespace {

bool is_float_like(Type type) {
    return type == Type::Float || type == Type::FloatLiteral;
}

bool is_literal(Type type) {
    return type == Type::IntLiteral || type == Type::FloatLiteral;
}

bool is_float_arg(Type type) {
    return type == Type::Float || type == Type::FloatLiteral;
}

bool fits_imm12(int value) {
    return value >= -2048 && value <= 2047;
}

int align16(int value) {
    return (value + 15) / 16 * 16;
}

long long parse_int(const std::string& text) {
    if (text.size() > 2 && text[0] == '0' && (text[1] == 'b' || text[1] == 'B')) {
        long long value = 0;
        for (size_t i = 2; i < text.size(); ++i) {
            value = value * 2 + (text[i] == '1' ? 1 : 0);
        }
        return value;
    }
    return std::strtoll(text.c_str(), nullptr, 0);
}

int32_t float_bits(const std::string& text) {
    float value = std::strtof(text.c_str(), nullptr);
    uint32_t bits = 0;
    std::memcpy(&bits, &value, sizeof(bits));
    return static_cast<int32_t>(bits);
}

struct GlobalInfo {
    Type type = Type::null;
    int len = 0;
};

struct VarInfo {
    Type type = Type::null;
    int slot_offset = 0;
    bool has_array = false;
    int array_offset = 0;
    int array_bytes = 0;
};

class FunctionGenerator {
public:
    FunctionGenerator(const Function& func,
                      const std::map<std::string, GlobalInfo>& globals,
                      std::ofstream& fout)
        : func(func), globals(globals), fout(fout) {}

    void gen() {
        analyze_frame();
        emit_func_header();
        save_params();
        for (size_t i = 0; i < func.InstVec.size(); ++i) {
            emit(label_for(static_cast<int>(i)) + ":");
            gen_inst(*func.InstVec[i], static_cast<int>(i));
        }
        emit(exit_label() + ":");
        emit_epilogue();
        emit("    .size " + func.name + ", .-" + func.name);
        emit("");
    }

private:
    const Function& func;
    const std::map<std::string, GlobalInfo>& globals;
    std::ofstream& fout;
    std::map<std::string, VarInfo> vars;
    int local_bytes = 8;
    int outgoing_bytes = 0;
    int frame_size = 16;

    void emit(const std::string& line) {
        fout << line << '\n';
    }

    bool is_global(const Operand& op) const {
        return globals.find(op.name) != globals.end();
    }

    bool global_is_array(const Operand& op) const {
        auto it = globals.find(op.name);
        return it != globals.end() && it->second.len > 0;
    }

    bool needs_local_slot(const Operand& op) const {
        return op.type != Type::null && !is_literal(op.type) && !is_global(op);
    }

    void ensure_scalar(const Operand& op) {
        if (!needs_local_slot(op)) return;
        auto it = vars.find(op.name);
        if (it != vars.end()) return;
        local_bytes += 4;
        VarInfo info;
        info.type = op.type;
        info.slot_offset = -local_bytes;
        vars[op.name] = info;
    }

    void ensure_array(const Operand& op, int len) {
        ensure_scalar(op);
        auto& info = vars[op.name];
        if (info.has_array) return;
        int bytes = std::max(0, len) * 4;
        local_bytes += bytes;
        info.has_array = true;
        info.array_offset = -local_bytes;
        info.array_bytes = bytes;
    }

    void analyze_operand(const Operand& op) {
        ensure_scalar(op);
    }

    void analyze_call(const Instruction* inst) {
        auto* call = dynamic_cast<const CallInst*>(inst);
        assert(call);
        analyze_operand(call->des);
        int int_arg_count = 0;
        int float_arg_count = 0;
        int stack_arg_count = 0;
        for (const auto& arg : call->argumentList) {
            analyze_operand(arg);
            if (is_float_arg(arg.type)) {
                if (float_arg_count >= 8) ++stack_arg_count;
                ++float_arg_count;
            } else {
                if (int_arg_count >= 8) ++stack_arg_count;
                ++int_arg_count;
            }
        }
        outgoing_bytes = std::max(outgoing_bytes, stack_arg_count * 4);
    }

    void analyze_frame() {
        for (const auto& param : func.ParameterList) {
            ensure_scalar(param);
        }

        for (auto* inst : func.InstVec) {
            if (inst->op == Operator::call) {
                analyze_call(inst);
                continue;
            }
            if (inst->op == Operator::alloc) {
                int len = static_cast<int>(parse_int(inst->op1.name));
                ensure_array(inst->des, len);
                continue;
            }
            analyze_operand(inst->op1);
            analyze_operand(inst->op2);
            analyze_operand(inst->des);
        }

        frame_size = std::max(16, align16(local_bytes + outgoing_bytes));
    }

    std::string label_for(int index) const {
        if (index >= static_cast<int>(func.InstVec.size())) return exit_label();
        return ".L_" + func.name + "_" + std::to_string(index);
    }

    std::string exit_label() const {
        return ".L_" + func.name + "_exit";
    }

    int slot_offset(const Operand& op) const {
        auto it = vars.find(op.name);
        assert(it != vars.end());
        return it->second.slot_offset;
    }

    int array_offset(const Operand& op) const {
        auto it = vars.find(op.name);
        assert(it != vars.end() && it->second.has_array);
        return it->second.array_offset;
    }

    void emit_li(const std::string& reg, long long value) {
        emit("    li " + reg + ", " + std::to_string(value));
    }

    void emit_add_imm(const std::string& rd, const std::string& rs, int imm) {
        if (imm == 0 && rd == rs) return;
        if (fits_imm12(imm)) {
            emit("    addi " + rd + ", " + rs + ", " + std::to_string(imm));
        } else {
            emit_li("t5", imm);
            emit("    add " + rd + ", " + rs + ", t5");
        }
    }

    void emit_load_addr(const std::string& rd, const std::string& label) {
        emit("    la " + rd + ", " + label);
    }

    void emit_load_word(const std::string& rd, const std::string& base, int offset) {
        if (fits_imm12(offset)) {
            emit("    lw " + rd + ", " + std::to_string(offset) + "(" + base + ")");
        } else {
            emit_add_imm("t5", base, offset);
            emit("    lw " + rd + ", 0(t5)");
        }
    }

    void emit_store_word(const std::string& rs, const std::string& base, int offset) {
        if (fits_imm12(offset)) {
            emit("    sw " + rs + ", " + std::to_string(offset) + "(" + base + ")");
        } else {
            emit_add_imm("t5", base, offset);
            emit("    sw " + rs + ", 0(t5)");
        }
    }

    void emit_load_float_mem(const std::string& rd, const std::string& base, int offset) {
        if (fits_imm12(offset)) {
            emit("    flw " + rd + ", " + std::to_string(offset) + "(" + base + ")");
        } else {
            emit_add_imm("t5", base, offset);
            emit("    flw " + rd + ", 0(t5)");
        }
    }

    void emit_store_float_mem(const std::string& rs, const std::string& base, int offset) {
        if (fits_imm12(offset)) {
            emit("    fsw " + rs + ", " + std::to_string(offset) + "(" + base + ")");
        } else {
            emit_add_imm("t5", base, offset);
            emit("    fsw " + rs + ", 0(t5)");
        }
    }

    void emit_load_global_word(const std::string& rd, const std::string& label) {
        std::string addr = rd == "t6" ? "t5" : "t6";
        emit_load_addr(addr, label);
        emit("    lw " + rd + ", 0(" + addr + ")");
    }

    void emit_store_global_word(const std::string& rs, const std::string& label) {
        std::string addr = rs == "t6" ? "t5" : "t6";
        emit_load_addr(addr, label);
        emit("    sw " + rs + ", 0(" + addr + ")");
    }

    void emit_load_global_float(const std::string& rd, const std::string& label) {
        emit_load_addr("t6", label);
        emit("    flw " + rd + ", 0(t6)");
    }

    void emit_store_global_float(const std::string& rs, const std::string& label) {
        emit_load_addr("t6", label);
        emit("    fsw " + rs + ", 0(t6)");
    }

    void emit_load_int(const Operand& op, const std::string& rd) {
        if (op.type == Type::IntLiteral) {
            emit_li(rd, parse_int(op.name));
            return;
        }
        if (op.type == Type::FloatLiteral) {
            emit_li(rd, static_cast<int>(std::strtof(op.name.c_str(), nullptr)));
            return;
        }
        if (global_is_array(op)) {
            emit_load_addr(rd, op.name);
            return;
        }
        if (is_global(op)) {
            emit_load_global_word(rd, op.name);
            return;
        }
        emit_load_word(rd, "s0", slot_offset(op));
    }

    void emit_store_int(const Operand& op, const std::string& rs) {
        if (op.type == Type::null) return;
        if (is_global(op) && !global_is_array(op)) {
            emit_store_global_word(rs, op.name);
            return;
        }
        emit_store_word(rs, "s0", slot_offset(op));
    }

    void emit_load_float(const Operand& op, const std::string& rd) {
        if (op.type == Type::FloatLiteral) {
            emit_li("t6", float_bits(op.name));
            emit("    fmv.w.x " + rd + ", t6");
            return;
        }
        if (op.type == Type::IntLiteral) {
            float value = static_cast<float>(parse_int(op.name));
            uint32_t bits = 0;
            std::memcpy(&bits, &value, sizeof(bits));
            emit_li("t6", static_cast<int32_t>(bits));
            emit("    fmv.w.x " + rd + ", t6");
            return;
        }
        if (is_global(op)) {
            emit_load_global_float(rd, op.name);
            return;
        }
        emit_load_float_mem(rd, "s0", slot_offset(op));
    }

    void emit_store_float(const Operand& op, const std::string& rs) {
        if (op.type == Type::null) return;
        if (is_global(op) && !global_is_array(op)) {
            emit_store_global_float(rs, op.name);
            return;
        }
        emit_store_float_mem(rs, "s0", slot_offset(op));
    }

    void emit_pointer_value(const Operand& op, const std::string& rd) {
        if (global_is_array(op)) {
            emit_load_addr(rd, op.name);
            return;
        }
        emit_load_int(op, rd);
    }

    void emit_indexed_addr(const Operand& base, const Operand& index, const std::string& rd) {
        emit_pointer_value(base, rd);
        if (index.type == Type::IntLiteral) {
            emit_add_imm(rd, rd, static_cast<int>(parse_int(index.name) * 4));
        } else {
            emit_load_int(index, "t0");
            emit("    slli t0, t0, 2");
            emit("    add " + rd + ", " + rd + ", t0");
        }
    }

    void emit_func_header() {
        emit("    .text");
        emit("    .align 1");
        emit("    .globl " + func.name);
        emit("    .type " + func.name + ", @function");
        emit(func.name + ":");
        emit_add_imm("sp", "sp", -frame_size);
        emit_store_word("ra", "sp", frame_size - 4);
        emit_store_word("s0", "sp", frame_size - 8);
        emit_add_imm("s0", "sp", frame_size);
    }

    void emit_epilogue() {
        emit_load_word("ra", "sp", frame_size - 4);
        emit_load_word("s0", "sp", frame_size - 8);
        emit_add_imm("sp", "sp", frame_size);
        emit("    jr ra");
    }

    void save_params() {
        int int_arg_count = 0;
        int float_arg_count = 0;
        int stack_arg_count = 0;
        for (const auto& param : func.ParameterList) {
            if (is_float_arg(param.type)) {
                if (float_arg_count < 8) {
                    emit_store_float(param, "fa" + std::to_string(float_arg_count));
                } else {
                    emit_load_float_mem("ft0", "s0", stack_arg_count * 4);
                    emit_store_float(param, "ft0");
                    ++stack_arg_count;
                }
                ++float_arg_count;
            } else {
                if (int_arg_count < 8) {
                    emit_store_int(param, "a" + std::to_string(int_arg_count));
                } else {
                    emit_load_word("t0", "s0", stack_arg_count * 4);
                    emit_store_int(param, "t0");
                    ++stack_arg_count;
                }
                ++int_arg_count;
            }
        }
    }

    void gen_alloc(const Instruction& inst) {
        emit_add_imm("t0", "s0", array_offset(inst.des));
        emit_store_int(inst.des, "t0");
    }

    void gen_load(const Instruction& inst) {
        emit_indexed_addr(inst.op1, inst.op2, "t6");
        if (is_float_like(inst.des.type)) {
            emit("    flw ft0, 0(t6)");
            emit_store_float(inst.des, "ft0");
        } else {
            emit("    lw t0, 0(t6)");
            emit_store_int(inst.des, "t0");
        }
    }

    void gen_store(const Instruction& inst) {
        if (inst.op1.type == Type::FloatPtr || is_float_like(inst.des.type)) {
            emit_load_float(inst.des, "ft0");
            emit_indexed_addr(inst.op1, inst.op2, "t6");
            emit("    fsw ft0, 0(t6)");
        } else {
            emit_load_int(inst.des, "t2");
            emit_indexed_addr(inst.op1, inst.op2, "t6");
            emit("    sw t2, 0(t6)");
        }
    }

    void gen_getptr(const Instruction& inst) {
        emit_indexed_addr(inst.op1, inst.op2, "t6");
        emit_store_int(inst.des, "t6");
    }

    void gen_goto(const Instruction& inst, int pc) {
        int target = pc + static_cast<int>(parse_int(inst.des.name));
        if (inst.op1.type == Type::null) {
            emit("    j " + label_for(target));
        } else {
            emit_load_int(inst.op1, "t0");
            emit("    bne t0, zero, " + label_for(target));
        }
    }

    void gen_return(const Instruction& inst) {
        if (func.returnType == Type::Float && inst.op1.type != Type::null) {
            emit_load_float(inst.op1, "fa0");
        } else if (func.returnType == Type::Int && inst.op1.type != Type::null) {
            emit_load_int(inst.op1, "a0");
        }
        emit("    j " + exit_label());
    }

    void gen_call(const Instruction& inst) {
        auto* call = dynamic_cast<const CallInst*>(&inst);
        assert(call);
        int int_arg_count = 0;
        int float_arg_count = 0;
        int stack_arg_count = 0;
        for (const auto& arg : call->argumentList) {
            if (is_float_arg(arg.type)) {
                if (float_arg_count < 8) {
                    emit_load_float(arg, "fa" + std::to_string(float_arg_count));
                } else {
                    emit_load_float(arg, "ft0");
                    emit_store_float_mem("ft0", "sp", stack_arg_count * 4);
                    ++stack_arg_count;
                }
                ++float_arg_count;
            } else {
                if (int_arg_count < 8) {
                    emit_load_int(arg, "a" + std::to_string(int_arg_count));
                } else {
                    emit_load_int(arg, "t0");
                    emit_store_word("t0", "sp", stack_arg_count * 4);
                    ++stack_arg_count;
                }
                ++int_arg_count;
            }
        }

        emit("    call " + call->op1.name);
        if (call->des.type == Type::null) return;
        if (call->des.type == Type::Float) {
            emit_store_float(call->des, "fa0");
        } else {
            emit_store_int(call->des, "a0");
        }
    }

    void gen_int_binary(const Instruction& inst) {
        emit_load_int(inst.op1, "t0");
        emit_load_int(inst.op2, "t1");
        switch (inst.op) {
            case Operator::add:
                emit("    add t2, t0, t1");
                break;
            case Operator::sub:
                emit("    sub t2, t0, t1");
                break;
            case Operator::mul:
                emit("    mul t2, t0, t1");
                break;
            case Operator::div:
                emit("    div t2, t0, t1");
                break;
            case Operator::mod:
                emit("    rem t2, t0, t1");
                break;
            case Operator::lss:
                emit("    slt t2, t0, t1");
                break;
            case Operator::gtr:
                emit("    slt t2, t1, t0");
                break;
            case Operator::leq:
                emit("    slt t2, t1, t0");
                emit("    xori t2, t2, 1");
                break;
            case Operator::geq:
                emit("    slt t2, t0, t1");
                emit("    xori t2, t2, 1");
                break;
            case Operator::eq:
                emit("    xor t2, t0, t1");
                emit("    sltiu t2, t2, 1");
                break;
            case Operator::neq:
                emit("    xor t2, t0, t1");
                emit("    sltu t2, zero, t2");
                break;
            case Operator::_and:
                emit("    sltu t0, zero, t0");
                emit("    sltu t1, zero, t1");
                emit("    and t2, t0, t1");
                break;
            case Operator::_or:
                emit("    sltu t0, zero, t0");
                emit("    sltu t1, zero, t1");
                emit("    or t2, t0, t1");
                break;
            default:
                assert(false);
                break;
        }
        emit_store_int(inst.des, "t2");
    }

    void gen_int_imm_binary(const Instruction& inst) {
        emit_load_int(inst.op1, "t0");
        int imm = static_cast<int>(parse_int(inst.op2.name));
        if (inst.op == Operator::subi) imm = -imm;
        emit_add_imm("t2", "t0", imm);
        emit_store_int(inst.des, "t2");
    }

    void gen_float_binary(const Instruction& inst) {
        emit_load_float(inst.op1, "ft0");
        emit_load_float(inst.op2, "ft1");
        switch (inst.op) {
            case Operator::fadd:
                emit("    fadd.s ft2, ft0, ft1");
                break;
            case Operator::fsub:
                emit("    fsub.s ft2, ft0, ft1");
                break;
            case Operator::fmul:
                emit("    fmul.s ft2, ft0, ft1");
                break;
            case Operator::fdiv:
                emit("    fdiv.s ft2, ft0, ft1");
                break;
            case Operator::flss:
                emit("    flt.s t2, ft0, ft1");
                emit("    fcvt.s.w ft2, t2");
                break;
            case Operator::fgtr:
                emit("    flt.s t2, ft1, ft0");
                emit("    fcvt.s.w ft2, t2");
                break;
            case Operator::fleq:
                emit("    fle.s t2, ft0, ft1");
                emit("    fcvt.s.w ft2, t2");
                break;
            case Operator::fgeq:
                emit("    fle.s t2, ft1, ft0");
                emit("    fcvt.s.w ft2, t2");
                break;
            case Operator::feq:
                emit("    feq.s t2, ft0, ft1");
                emit("    fcvt.s.w ft2, t2");
                break;
            case Operator::fneq:
                emit("    feq.s t2, ft0, ft1");
                emit("    xori t2, t2, 1");
                emit("    fcvt.s.w ft2, t2");
                break;
            default:
                assert(false);
                break;
        }
        emit_store_float(inst.des, "ft2");
    }

    void gen_inst(const Instruction& inst, int pc) {
        switch (inst.op) {
            case Operator::__unuse__:
                break;
            case Operator::alloc:
                gen_alloc(inst);
                break;
            case Operator::load:
                gen_load(inst);
                break;
            case Operator::store:
                gen_store(inst);
                break;
            case Operator::getptr:
                gen_getptr(inst);
                break;
            case Operator::_goto:
                gen_goto(inst, pc);
                break;
            case Operator::_return:
                gen_return(inst);
                break;
            case Operator::call:
                gen_call(inst);
                break;
            case Operator::def:
            case Operator::mov:
                emit_load_int(inst.op1, "t0");
                emit_store_int(inst.des, "t0");
                break;
            case Operator::fdef:
            case Operator::fmov:
                emit_load_float(inst.op1, "ft0");
                emit_store_float(inst.des, "ft0");
                break;
            case Operator::cvt_i2f:
                emit_load_int(inst.op1, "t0");
                emit("    fcvt.s.w ft0, t0");
                emit_store_float(inst.des, "ft0");
                break;
            case Operator::cvt_f2i:
                emit_load_float(inst.op1, "ft0");
                emit("    fcvt.w.s t0, ft0, rtz");
                emit_store_int(inst.des, "t0");
                break;
            case Operator::_not:
                emit_load_int(inst.op1, "t0");
                emit("    sltiu t2, t0, 1");
                emit_store_int(inst.des, "t2");
                break;
            case Operator::addi:
            case Operator::subi:
                gen_int_imm_binary(inst);
                break;
            case Operator::add:
            case Operator::sub:
            case Operator::mul:
            case Operator::div:
            case Operator::mod:
            case Operator::lss:
            case Operator::leq:
            case Operator::gtr:
            case Operator::geq:
            case Operator::eq:
            case Operator::neq:
            case Operator::_and:
            case Operator::_or:
                gen_int_binary(inst);
                break;
            case Operator::fadd:
            case Operator::fsub:
            case Operator::fmul:
            case Operator::fdiv:
            case Operator::flss:
            case Operator::fleq:
            case Operator::fgtr:
            case Operator::fgeq:
            case Operator::feq:
            case Operator::fneq:
                gen_float_binary(inst);
                break;
            default:
                assert(false && "unsupported IR operator");
                break;
        }
    }
};

} // namespace

backend::Generator::Generator(const ir::Program& program, std::ofstream& fout)
    : program(program), fout(fout) {}

void backend::Generator::gen() {
    std::map<std::string, GlobalInfo> globals;
    for (const auto& global : program.globalVal) {
        GlobalInfo info;
        info.type = global.val.type;
        info.len = global.maxlen;
        globals[global.val.name] = info;
    }

    fout << "    .option nopic\n";
    if (!program.globalVal.empty()) {
        fout << "    .data\n";
        for (const auto& global : program.globalVal) {
            fout << "    .align 2\n";
            fout << "    .globl " << global.val.name << '\n';
            fout << global.val.name << ":\n";
            if (global.maxlen > 0) {
                fout << "    .zero " << global.maxlen * 4 << '\n';
            } else {
                fout << "    .word 0\n";
            }
        }
    }

    for (const auto& func : program.functions) {
        FunctionGenerator gen_func(func, globals, fout);
        gen_func.gen();
    }

    fout << "    .section .note.GNU-stack,\"\",@progbits\n";
}
