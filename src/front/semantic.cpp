#include "front/semantic.h"

#include <algorithm>
#include <cassert>
#include <cmath>
#include <cstdlib>
#include <numeric>
#include <sstream>

using ir::Function;
using ir::Instruction;
using ir::Operand;
using ir::Operator;
using ir::Type;

namespace {

template <typename T>
T* as(frontend::AstNode* node) {
    T* ptr = dynamic_cast<T*>(node);
    assert(ptr);
    return ptr;
}

frontend::Term* term(frontend::AstNode* node) {
    return as<frontend::Term>(node);
}

bool is_term(frontend::AstNode* node, frontend::TokenType type) {
    return node->type == frontend::NodeType::TERMINAL && term(node)->token.type == type;
}

bool is_float(Type t) {
    return t == Type::Float || t == Type::FloatLiteral;
}

bool is_literal(Type t) {
    return t == Type::IntLiteral || t == Type::FloatLiteral;
}

bool is_ptr(Type t) {
    return t == Type::IntPtr || t == Type::FloatPtr;
}

Type base_type(Type t) {
    if (t == Type::IntLiteral) return Type::Int;
    if (t == Type::FloatLiteral) return Type::Float;
    return t;
}

Type literal_type(Type t) {
    if (t == Type::Float) return Type::FloatLiteral;
    return Type::IntLiteral;
}

Type ptr_type(Type t) {
    return t == Type::Float ? Type::FloatPtr : Type::IntPtr;
}

Type elem_type(Type t) {
    return t == Type::FloatPtr ? Type::Float : Type::Int;
}

long long parse_int(const std::string& text) {
    if (text.size() > 2 && text[0] == '0' && (text[1] == 'b' || text[1] == 'B')) {
        return std::strtoll(text.c_str() + 2, nullptr, 2);
    }
    return std::strtoll(text.c_str(), nullptr, 0);
}

float parse_float(const std::string& text) {
    return std::strtof(text.c_str(), nullptr);
}

std::string float_text(float value) {
    std::ostringstream os;
    os.precision(9);
    os << value;
    return os.str();
}

Operand null_op() {
    return Operand("null", Type::null);
}

Operand int_lit(long long value) {
    return Operand(std::to_string(value), Type::IntLiteral);
}

Operand float_lit(float value) {
    return Operand(float_text(value), Type::FloatLiteral);
}

struct Expr {
    Operand op;
    bool computable = false;
};

struct LoopPatch {
    std::vector<std::pair<Instruction*, int>> breaks;
    std::vector<std::pair<Instruction*, int>> continues;
    int begin = 0;
};

class IRBuilder {
public:
    explicit IRBuilder(frontend::Analyzer& a)
        : analyzer(a), sym(a.symbol_table), global_func(new Function("global", Type::null)) {}

    ir::Program build(frontend::CompUnit* root) {
        collect_functions(root);
        current = global_func;
        generate_comp_unit(root);
        emit(new Instruction(null_op(), null_op(), null_op(), Operator::_return));
        program.addFunction(*global_func);
        return program;
    }

private:
    frontend::Analyzer& analyzer;
    frontend::SymbolTable& sym;
    ir::Program program;
    Function* current = nullptr;
    Function* global_func = nullptr;
    Type current_return = Type::null;
    std::vector<LoopPatch> loops;

    Operand tmp(Type t) {
        return Operand("t" + std::to_string(analyzer.tmp_cnt++), t);
    }

    int pc() const {
        return static_cast<int>(current->InstVec.size());
    }

    Instruction* emit(Instruction* inst) {
        current->addInst(inst);
        return inst;
    }

    std::pair<Instruction*, int> emit_goto(const Operand& cond, const Operand& offset = int_lit(0)) {
        int pos = pc();
        auto* inst = new Instruction(cond, null_op(), offset, Operator::_goto);
        emit(inst);
        return {inst, pos};
    }

    void patch(const std::pair<Instruction*, int>& p, int target) {
        p.first->des = int_lit(target - p.second);
    }

    bool is_global_scope() const {
        return sym.scope_stack.size() == 1;
    }

    Type read_type(frontend::AstNode* node) {
        auto* t = term(node->children[0]);
        if (t->token.type == frontend::TokenType::FLOATTK) return Type::Float;
        if (t->token.type == frontend::TokenType::VOIDTK) return Type::null;
        return Type::Int;
    }

    std::string read_ident(frontend::AstNode* node) {
        return term(node)->token.value;
    }

    std::vector<int> read_dimensions(frontend::AstNode* root, size_t first) {
        std::vector<int> dims;
        for (size_t i = first; i < root->children.size(); ++i) {
            if (root->children[i]->type == frontend::NodeType::CONSTEXP ||
                root->children[i]->type == frontend::NodeType::EXP) {
                Expr e = gen_exp_node(root->children[i]);
                assert(e.op.type == Type::IntLiteral);
                dims.push_back(static_cast<int>(parse_int(e.op.name)));
            }
        }
        return dims;
    }

    int total_len(const std::vector<int>& dims) {
        if (dims.empty()) return 0;
        int ans = 1;
        for (int d : dims) {
            ans *= std::max(1, d);
        }
        return ans;
    }

    Operand convert_literal(const Operand& op, Type target) {
        if (target == Type::Float) {
            if (op.type == Type::FloatLiteral) return op;
            return float_lit(static_cast<float>(parse_int(op.name)));
        }
        if (op.type == Type::IntLiteral) return op;
        return int_lit(static_cast<int>(parse_float(op.name)));
    }

    Expr convert(Expr value, Type target) {
        target = base_type(target);
        Type src = base_type(value.op.type);
        if (src == target) {
            if (value.computable && is_literal(value.op.type)) {
                value.op.type = literal_type(target);
            }
            return value;
        }
        if (is_literal(value.op.type)) {
            return {convert_literal(value.op, target), true};
        }
        Operand dst = tmp(target);
        emit(new Instruction(value.op, null_op(), dst,
                             target == Type::Float ? Operator::cvt_i2f : Operator::cvt_f2i));
        return {dst, false};
    }

    Operand materialize(Expr value) {
        if (!is_literal(value.op.type)) return value.op;
        Type bt = base_type(value.op.type);
        Operand dst = tmp(bt);
        emit(new Instruction(value.op, null_op(), dst, bt == Type::Float ? Operator::fdef : Operator::def));
        return dst;
    }

    void move_to(Expr src, const Operand& dst) {
        Type target = base_type(dst.type);
        src = convert(src, target);
        emit(new Instruction(src.op, null_op(), dst, target == Type::Float ? Operator::fmov : Operator::mov));
    }

    Expr bool_value(Expr value) {
        if (value.op.type == Type::IntLiteral) {
            return {int_lit(parse_int(value.op.name) != 0), true};
        }
        if (value.op.type == Type::FloatLiteral) {
            return {int_lit(std::fabs(parse_float(value.op.name)) > 0.0f), true};
        }
        Operand dst = tmp(Type::Int);
        if (is_float(value.op.type)) {
            Operand fcmp = tmp(Type::Float);
            emit(new Instruction(value.op, float_lit(0.0f), fcmp, Operator::fneq));
            emit(new Instruction(fcmp, null_op(), dst, Operator::cvt_f2i));
        } else {
            emit(new Instruction(value.op, int_lit(0), dst, Operator::neq));
        }
        return {dst, false};
    }

    Expr fold_unary(frontend::TokenType op, Expr rhs) {
        if (op == frontend::TokenType::PLUS) return rhs;
        if (rhs.op.type == Type::IntLiteral) {
            long long v = parse_int(rhs.op.name);
            if (op == frontend::TokenType::MINU) return {int_lit(-v), true};
            return {int_lit(v == 0), true};
        }
        if (rhs.op.type == Type::FloatLiteral) {
            float v = parse_float(rhs.op.name);
            if (op == frontend::TokenType::MINU) return {float_lit(-v), true};
            return {int_lit(std::fabs(v) <= 0.0f), true};
        }
        Operand dst = tmp(op == frontend::TokenType::NOT ? Type::Int : base_type(rhs.op.type));
        if (op == frontend::TokenType::MINU) {
            if (is_float(rhs.op.type)) {
                emit(new Instruction(float_lit(0.0f), rhs.op, dst, Operator::fsub));
            } else {
                emit(new Instruction(int_lit(0), rhs.op, dst, Operator::sub));
            }
        } else {
            rhs = bool_value(rhs);
            emit(new Instruction(rhs.op, int_lit(0), dst, Operator::eq));
        }
        return {dst, false};
    }

    Expr binary_arith(Expr lhs, frontend::TokenType op, Expr rhs) {
        Type result = (is_float(lhs.op.type) || is_float(rhs.op.type)) ? Type::Float : Type::Int;
        lhs = convert(lhs, result);
        rhs = convert(rhs, result);

        if (is_literal(lhs.op.type) && is_literal(rhs.op.type)) {
            if (result == Type::Float) {
                float a = parse_float(lhs.op.name), b = parse_float(rhs.op.name);
                if (op == frontend::TokenType::PLUS) return {float_lit(a + b), true};
                if (op == frontend::TokenType::MINU) return {float_lit(a - b), true};
                if (op == frontend::TokenType::MULT) return {float_lit(a * b), true};
                return {float_lit(a / b), true};
            }
            long long a = parse_int(lhs.op.name), b = parse_int(rhs.op.name);
            if (op == frontend::TokenType::PLUS) return {int_lit(a + b), true};
            if (op == frontend::TokenType::MINU) return {int_lit(a - b), true};
            if (op == frontend::TokenType::MULT) return {int_lit(a * b), true};
            if (op == frontend::TokenType::DIV) return {int_lit(a / b), true};
            return {int_lit(a % b), true};
        }

        Operand dst = tmp(result);
        if (result == Type::Float) {
            Operator ir_op = Operator::fadd;
            if (op == frontend::TokenType::MINU) ir_op = Operator::fsub;
            else if (op == frontend::TokenType::MULT) ir_op = Operator::fmul;
            else if (op == frontend::TokenType::DIV) ir_op = Operator::fdiv;
            emit(new Instruction(lhs.op, rhs.op, dst, ir_op));
            return {dst, false};
        }

        Operator ir_op = Operator::add;
        if (op == frontend::TokenType::MINU) ir_op = Operator::sub;
        else if (op == frontend::TokenType::MULT) ir_op = Operator::mul;
        else if (op == frontend::TokenType::DIV) ir_op = Operator::div;
        else if (op == frontend::TokenType::MOD) ir_op = Operator::mod;

        if (op == frontend::TokenType::PLUS && rhs.op.type == Type::IntLiteral) {
            emit(new Instruction(lhs.op, rhs.op, dst, Operator::addi));
        } else if (op == frontend::TokenType::MINU && rhs.op.type == Type::IntLiteral) {
            emit(new Instruction(lhs.op, rhs.op, dst, Operator::subi));
        } else {
            Operand left = materialize(lhs);
            Operand right = materialize(rhs);
            emit(new Instruction(left, right, dst, ir_op));
        }
        return {dst, false};
    }

    Expr binary_cmp(Expr lhs, frontend::TokenType op, Expr rhs) {
        Type common = (is_float(lhs.op.type) || is_float(rhs.op.type)) ? Type::Float : Type::Int;
        lhs = convert(lhs, common);
        rhs = convert(rhs, common);

        if (is_literal(lhs.op.type) && is_literal(rhs.op.type)) {
            bool res = false;
            if (common == Type::Float) {
                float a = parse_float(lhs.op.name), b = parse_float(rhs.op.name);
                if (op == frontend::TokenType::LSS) res = a < b;
                else if (op == frontend::TokenType::GTR) res = a > b;
                else if (op == frontend::TokenType::LEQ) res = a <= b;
                else if (op == frontend::TokenType::GEQ) res = a >= b;
                else if (op == frontend::TokenType::EQL) res = a == b;
                else res = a != b;
            } else {
                long long a = parse_int(lhs.op.name), b = parse_int(rhs.op.name);
                if (op == frontend::TokenType::LSS) res = a < b;
                else if (op == frontend::TokenType::GTR) res = a > b;
                else if (op == frontend::TokenType::LEQ) res = a <= b;
                else if (op == frontend::TokenType::GEQ) res = a >= b;
                else if (op == frontend::TokenType::EQL) res = a == b;
                else res = a != b;
            }
            return {int_lit(res), true};
        }

        Operand dst = tmp(common == Type::Float ? Type::Float : Type::Int);
        Operator ir_op = Operator::lss;
        if (op == frontend::TokenType::GTR) ir_op = Operator::gtr;
        else if (op == frontend::TokenType::LEQ) ir_op = Operator::leq;
        else if (op == frontend::TokenType::GEQ) ir_op = Operator::geq;
        else if (op == frontend::TokenType::EQL) ir_op = Operator::eq;
        else if (op == frontend::TokenType::NEQ) ir_op = Operator::neq;
        if (common == Type::Float) {
            if (op == frontend::TokenType::LSS) ir_op = Operator::flss;
            else if (op == frontend::TokenType::GTR) ir_op = Operator::fgtr;
            else if (op == frontend::TokenType::LEQ) ir_op = Operator::fleq;
            else if (op == frontend::TokenType::GEQ) ir_op = Operator::fgeq;
            else if (op == frontend::TokenType::EQL) ir_op = Operator::feq;
            else if (op == frontend::TokenType::NEQ) ir_op = Operator::fneq;
        }
        emit(new Instruction(lhs.op, rhs.op, dst, ir_op));
        return {dst, false};
    }

    Expr gen_number(frontend::Number* root) {
        auto* t = term(root->children[0]);
        if (t->token.type == frontend::TokenType::FLOATLTR) {
            return {Operand(t->token.value, Type::FloatLiteral), true};
        }
        return {int_lit(parse_int(t->token.value)), true};
    }

    Expr gen_primary(frontend::PrimaryExp* root) {
        if (root->children[0]->type == frontend::NodeType::NUMBER) {
            return gen_number(as<frontend::Number>(root->children[0]));
        }
        if (root->children[0]->type == frontend::NodeType::LVAL) {
            return gen_lval(as<frontend::LVal>(root->children[0]));
        }
        return gen_exp(as<frontend::Exp>(root->children[1]));
    }

    Expr gen_unary(frontend::UnaryExp* root) {
        if (root->children[0]->type == frontend::NodeType::PRIMARYEXP) {
            return gen_primary(as<frontend::PrimaryExp>(root->children[0]));
        }
        if (root->children[0]->type == frontend::NodeType::UNARYOP) {
            auto* op_node = as<frontend::UnaryOp>(root->children[0]);
            auto* op_term = term(op_node->children[0]);
            return fold_unary(op_term->token.type, gen_unary(as<frontend::UnaryExp>(root->children[1])));
        }

        std::string name = read_ident(root->children[0]);
        Function* func = nullptr;
        auto it = sym.functions.find(name);
        if (it != sym.functions.end()) func = it->second;
        if (!func && frontend::get_lib_funcs()->count(name)) func = (*frontend::get_lib_funcs())[name];
        assert(func);

        std::vector<Operand> args;
        for (auto* child : root->children) {
            if (child->type != frontend::NodeType::FUNCRPARAMS) continue;
            auto* params = as<frontend::FuncRParams>(child);
            size_t arg_no = 0;
            for (auto* pchild : params->children) {
                if (pchild->type != frontend::NodeType::EXP) continue;
                Expr arg = gen_exp(as<frontend::Exp>(pchild));
                if (arg_no < func->ParameterList.size() && !is_ptr(func->ParameterList[arg_no].type)) {
                    arg = convert(arg, func->ParameterList[arg_no].type);
                }
                args.push_back(arg.op);
                ++arg_no;
            }
        }

        Operand dst = tmp(func->returnType);
        if (args.empty()) emit(new ir::CallInst(Operand(name, func->returnType), dst));
        else emit(new ir::CallInst(Operand(name, func->returnType), args, dst));
        return {dst, false};
    }

    Expr gen_mul(frontend::MulExp* root) {
        Expr cur = gen_unary(as<frontend::UnaryExp>(root->children[0]));
        for (size_t i = 1; i + 1 < root->children.size(); i += 2) {
            cur = binary_arith(cur, term(root->children[i])->token.type,
                               gen_unary(as<frontend::UnaryExp>(root->children[i + 1])));
        }
        return cur;
    }

    Expr gen_add(frontend::AddExp* root) {
        Expr cur = gen_mul(as<frontend::MulExp>(root->children[0]));
        for (size_t i = 1; i + 1 < root->children.size(); i += 2) {
            cur = binary_arith(cur, term(root->children[i])->token.type,
                               gen_mul(as<frontend::MulExp>(root->children[i + 1])));
        }
        return cur;
    }

    Expr gen_rel(frontend::RelExp* root) {
        Expr cur = gen_add(as<frontend::AddExp>(root->children[0]));
        for (size_t i = 1; i + 1 < root->children.size(); i += 2) {
            cur = binary_cmp(cur, term(root->children[i])->token.type,
                             gen_add(as<frontend::AddExp>(root->children[i + 1])));
        }
        return cur;
    }

    Expr gen_eq(frontend::EqExp* root) {
        Expr cur = gen_rel(as<frontend::RelExp>(root->children[0]));
        for (size_t i = 1; i + 1 < root->children.size(); i += 2) {
            cur = binary_cmp(cur, term(root->children[i])->token.type,
                             gen_rel(as<frontend::RelExp>(root->children[i + 1])));
        }
        return cur;
    }

    Expr gen_land(frontend::LAndExp* root) {
        Expr left = bool_value(gen_eq(as<frontend::EqExp>(root->children[0])));
        if (root->children.size() == 1) return left;

        Operand result = tmp(Type::Int);
        emit(new Instruction(int_lit(0), null_op(), result, Operator::def));
        emit_goto(left.op, int_lit(2));
        auto end_jump = emit_goto(null_op());
        Expr right = gen_land(as<frontend::LAndExp>(root->children[2]));
        move_to(right, result);
        emit(new Instruction(null_op(), null_op(), null_op(), Operator::__unuse__));
        patch(end_jump, pc() - 1);
        return {result, false};
    }

    Expr gen_lor(frontend::LOrExp* root) {
        Expr left = bool_value(gen_land(as<frontend::LAndExp>(root->children[0])));
        if (root->children.size() == 1) return left;

        Operand result = tmp(Type::Int);
        emit(new Instruction(int_lit(1), null_op(), result, Operator::def));
        auto end_jump = emit_goto(left.op);
        Expr right = gen_lor(as<frontend::LOrExp>(root->children[2]));
        move_to(right, result);
        emit(new Instruction(null_op(), null_op(), null_op(), Operator::__unuse__));
        patch(end_jump, pc() - 1);
        return {result, false};
    }

    Expr gen_exp(frontend::Exp* root) {
        return gen_add(as<frontend::AddExp>(root->children[0]));
    }

    Expr gen_cond(frontend::Cond* root) {
        return bool_value(gen_lor(as<frontend::LOrExp>(root->children[0])));
    }

    Expr gen_exp_node(frontend::AstNode* node) {
        if (node->type == frontend::NodeType::EXP) return gen_exp(as<frontend::Exp>(node));
        if (node->type == frontend::NodeType::CONSTEXP) {
            auto* ce = as<frontend::ConstExp>(node);
            return gen_add(as<frontend::AddExp>(ce->children[0]));
        }
        assert(false);
        return {null_op(), false};
    }

    Expr offset_for(frontend::LVal* root, const frontend::STE& ste, size_t& index_count) {
        std::vector<Expr> idxs;
        for (auto* child : root->children) {
            if (child->type == frontend::NodeType::EXP) {
                idxs.push_back(convert(gen_exp(as<frontend::Exp>(child)), Type::Int));
            }
        }
        index_count = idxs.size();
        if (idxs.empty()) return {int_lit(0), true};

        Expr off{int_lit(0), true};
        for (size_t i = 0; i < idxs.size(); ++i) {
            int mul = 1;
            for (size_t j = i + 1; j < ste.dimension.size(); ++j) {
                mul *= std::max(1, ste.dimension[j]);
            }
            Expr part = idxs[i];
            if (mul != 1) part = binary_arith(part, frontend::TokenType::MULT, {int_lit(mul), true});
            off = binary_arith(off, frontend::TokenType::PLUS, part);
        }
        return off;
    }

    Expr gen_lval(frontend::LVal* root) {
        std::string id = read_ident(root->children[0]);
        frontend::STE ste = sym.get_ste(id);
        if (ste.dimension.empty()) {
            return {ste.operand, is_literal(ste.operand.type)};
        }

        size_t idx_count = 0;
        Expr off = offset_for(root, ste, idx_count);
        if (idx_count == 0) return {ste.operand, false};

        if (idx_count < ste.dimension.size()) {
            Operand dst = tmp(ste.operand.type);
            emit(new Instruction(ste.operand, off.op, dst, Operator::getptr));
            return {dst, false};
        }

        Operand dst = tmp(elem_type(ste.operand.type));
        emit(new Instruction(ste.operand, off.op, dst, Operator::load));
        return {dst, false};
    }

    void store_lval(frontend::LVal* root, Expr value) {
        std::string id = read_ident(root->children[0]);
        frontend::STE ste = sym.get_ste(id);
        if (ste.dimension.empty()) {
            move_to(value, ste.operand);
            return;
        }
        size_t idx_count = 0;
        Expr off = offset_for(root, ste, idx_count);
        assert(idx_count == ste.dimension.size());
        value = convert(value, elem_type(ste.operand.type));
        emit(new Instruction(ste.operand, off.op, value.op, Operator::store));
    }

    void collect_init(frontend::AstNode* root, Type elem, std::vector<Expr>& values) {
        for (auto* child : root->children) {
            if (child->type == frontend::NodeType::EXP || child->type == frontend::NodeType::CONSTEXP) {
                values.push_back(convert(gen_exp_node(child), elem));
                return;
            }
        }
        for (auto* child : root->children) {
            if (child->type == frontend::NodeType::INITVAL || child->type == frontend::NodeType::CONSTINITVAL) {
                collect_init(child, elem, values);
            }
        }
    }

    void declare_one(frontend::AstNode* root, Type type, bool is_const) {
        std::string id = read_ident(root->children[0]);
        std::string scoped = sym.get_scoped_name(id);
        std::vector<int> dims = read_dimensions(root, 1);
        bool global = is_global_scope();

        frontend::AstNode* init = nullptr;
        for (auto* child : root->children) {
            if (child->type == frontend::NodeType::INITVAL || child->type == frontend::NodeType::CONSTINITVAL) {
                init = child;
            }
        }

        if (!dims.empty()) {
            Operand arr(scoped, ptr_type(type));
            sym.add_ste(id, {arr, dims, is_const});
            int len = total_len(dims);
            if (global) program.globalVal.emplace_back(arr, len);
            else emit(new Instruction(int_lit(len), null_op(), arr, Operator::alloc));

            if (init) {
                std::vector<Expr> values;
                collect_init(init, type, values);
                for (size_t i = 0; i < values.size(); ++i) {
                    emit(new Instruction(arr, int_lit(static_cast<long long>(i)), values[i].op, Operator::store));
                }
                Expr zero{type == Type::Float ? float_lit(0.0f) : int_lit(0), true};
                for (int i = static_cast<int>(values.size()); i < len; ++i) {
                    emit(new Instruction(arr, int_lit(i), zero.op, Operator::store));
                }
            }
            return;
        }

        Expr init_value{type == Type::Float ? float_lit(0.0f) : int_lit(0), true};
        if (init) {
            std::vector<Expr> values;
            collect_init(init, type, values);
            if (!values.empty()) init_value = values[0];
        }
        init_value = convert(init_value, type);

        if (is_const && is_literal(init_value.op.type)) {
            sym.add_ste(id, {init_value.op, {}, true});
            return;
        }

        Operand var(scoped, type);
        sym.add_ste(id, {var, {}, is_const});
        if (global) program.globalVal.emplace_back(var);
        emit(new Instruction(init_value.op, null_op(), var, type == Type::Float ? Operator::fdef : Operator::def));
    }

    void gen_decl(frontend::Decl* root) {
        auto* child = root->children[0];
        if (child->type == frontend::NodeType::VARDECL) {
            auto* vd = as<frontend::VarDecl>(child);
            Type type = read_type(vd->children[0]);
            for (auto* c : vd->children) {
                if (c->type == frontend::NodeType::VARDEF) declare_one(c, type, false);
            }
        } else {
            auto* cd = as<frontend::ConstDecl>(child);
            Type type = read_type(cd->children[1]);
            for (auto* c : cd->children) {
                if (c->type == frontend::NodeType::CONSTDEF) declare_one(c, type, true);
            }
        }
    }

    void gen_block(frontend::Block* root, bool new_scope) {
        if (new_scope) sym.add_scope(root);
        for (auto* child : root->children) {
            if (child->type == frontend::NodeType::BLOCKITEM) gen_block_item(as<frontend::BlockItem>(child));
        }
        if (new_scope) sym.exit_scope();
    }

    void gen_block_item(frontend::BlockItem* root) {
        if (root->children[0]->type == frontend::NodeType::DECL) {
            gen_decl(as<frontend::Decl>(root->children[0]));
        } else {
            gen_stmt(as<frontend::Stmt>(root->children[0]));
        }
    }

    void gen_if(frontend::Stmt* root) {
        auto* cond = as<frontend::Cond>(root->children[2]);
        Expr c = gen_cond(cond);
        emit_goto(c.op, int_lit(2));
        auto false_jump = emit_goto(null_op());
        gen_stmt(as<frontend::Stmt>(root->children[4]));
        if (root->children.size() > 5) {
            auto end_jump = emit_goto(null_op());
            emit(new Instruction(null_op(), null_op(), null_op(), Operator::__unuse__));
            patch(false_jump, pc() - 1);
            gen_stmt(as<frontend::Stmt>(root->children[6]));
            emit(new Instruction(null_op(), null_op(), null_op(), Operator::__unuse__));
            patch(end_jump, pc() - 1);
        } else {
            emit(new Instruction(null_op(), null_op(), null_op(), Operator::__unuse__));
            patch(false_jump, pc() - 1);
        }
    }

    void gen_while(frontend::Stmt* root) {
        int begin = pc();
        LoopPatch lp;
        lp.begin = begin;
        loops.push_back(lp);

        Expr c = gen_cond(as<frontend::Cond>(root->children[2]));
        emit_goto(c.op, int_lit(2));
        auto exit_jump = emit_goto(null_op());
        gen_stmt(as<frontend::Stmt>(root->children[4]));
        emit_goto(null_op(), int_lit(begin - pc()));
        emit(new Instruction(null_op(), null_op(), null_op(), Operator::__unuse__));
        int end = pc() - 1;

        patch(exit_jump, end);
        for (auto& p : loops.back().breaks) patch(p, end);
        for (auto& p : loops.back().continues) patch(p, begin);
        loops.pop_back();
    }

    void gen_stmt(frontend::Stmt* root) {
        if (root->children.empty()) return;
        auto* first = root->children[0];

        if (first->type == frontend::NodeType::LVAL) {
            store_lval(as<frontend::LVal>(first), gen_exp(as<frontend::Exp>(root->children[2])));
        } else if (first->type == frontend::NodeType::BLOCK) {
            gen_block(as<frontend::Block>(first), true);
        } else if (is_term(first, frontend::TokenType::IFTK)) {
            gen_if(root);
        } else if (is_term(first, frontend::TokenType::WHILETK)) {
            gen_while(root);
        } else if (is_term(first, frontend::TokenType::BREAKTK)) {
            assert(!loops.empty());
            loops.back().breaks.push_back(emit_goto(null_op()));
        } else if (is_term(first, frontend::TokenType::CONTINUETK)) {
            assert(!loops.empty());
            loops.back().continues.push_back(emit_goto(null_op()));
        } else if (is_term(first, frontend::TokenType::RETURNTK)) {
            if (root->children.size() > 2 && root->children[1]->type == frontend::NodeType::EXP) {
                Expr value = convert(gen_exp(as<frontend::Exp>(root->children[1])), current_return);
                emit(new Instruction(value.op, null_op(), null_op(), Operator::_return));
            } else {
                emit(new Instruction(null_op(), null_op(), null_op(), Operator::_return));
            }
        } else if (first->type == frontend::NodeType::EXP) {
            gen_exp(as<frontend::Exp>(first));
        }
    }

    std::vector<int> param_dims(frontend::FuncFParam* root) {
        std::vector<int> dims;
        bool saw_array = false;
        for (auto* child : root->children) {
            if (child->type == frontend::NodeType::TERMINAL && term(child)->token.type == frontend::TokenType::LBRACK) {
                if (!saw_array) {
                    dims.push_back(0);
                    saw_array = true;
                }
            } else if (child->type == frontend::NodeType::EXP) {
                Expr e = gen_exp(as<frontend::Exp>(child));
                dims.push_back(static_cast<int>(parse_int(e.op.name)));
            }
        }
        return dims;
    }

    std::vector<Operand> function_params(frontend::FuncFParams* root) {
        std::vector<Operand> params;
        for (auto* child : root->children) {
            if (child->type != frontend::NodeType::FUNCFPARAM) continue;
            auto* fp = as<frontend::FuncFParam>(child);
            Type type = read_type(fp->children[0]);
            std::string id = read_ident(fp->children[1]);
            std::vector<int> dims = param_dims(fp);
            if (!dims.empty()) type = ptr_type(type);
            Operand op(sym.get_scoped_name(id), type);
            params.push_back(op);
            sym.add_ste(id, {op, dims, false});
        }
        return params;
    }

    std::vector<Operand> signature_params(frontend::FuncFParams* root) {
        std::vector<Operand> params;
        for (auto* child : root->children) {
            if (child->type != frontend::NodeType::FUNCFPARAM) continue;
            auto* fp = as<frontend::FuncFParam>(child);
            Type type = read_type(fp->children[0]);
            for (auto* c : fp->children) {
                if (c->type == frontend::NodeType::TERMINAL && term(c)->token.type == frontend::TokenType::LBRACK) {
                    type = ptr_type(type);
                    break;
                }
            }
            params.emplace_back(read_ident(fp->children[1]), type);
        }
        return params;
    }

    void collect_functions(frontend::CompUnit* root) {
        if (root->children.empty()) return;
        if (root->children[0]->type == frontend::NodeType::FUNCDEF) {
            auto* fd = as<frontend::FuncDef>(root->children[0]);
            Type ret = read_type(fd->children[0]);
            std::string name = read_ident(fd->children[1]);
            std::vector<Operand> params;
            for (auto* child : fd->children) {
                if (child->type == frontend::NodeType::FUNCFPARAMS) {
                    params = signature_params(as<frontend::FuncFParams>(child));
                }
            }
            sym.functions[name] = new Function(name, params, ret);
        }
        if (root->children.size() > 1) collect_functions(as<frontend::CompUnit>(root->children[1]));
    }

    void gen_func(frontend::FuncDef* root) {
        Type ret = read_type(root->children[0]);
        std::string name = read_ident(root->children[1]);
        sym.add_scope();

        std::vector<Operand> params;
        for (auto* child : root->children) {
            if (child->type == frontend::NodeType::FUNCFPARAMS) {
                params = function_params(as<frontend::FuncFParams>(child));
            }
        }

        Function* saved = current;
        Type saved_ret = current_return;
        auto* func = new Function(name, params, ret);
        sym.functions[name] = func;
        current = func;
        current_return = ret;

        for (auto* child : root->children) {
            if (child->type == frontend::NodeType::BLOCK) gen_block(as<frontend::Block>(child), false);
        }
        if (func->InstVec.empty() || func->InstVec.back()->op != Operator::_return) {
            if (ret == Type::Float) emit(new Instruction(float_lit(0.0f), null_op(), null_op(), Operator::_return));
            else if (ret == Type::Int) emit(new Instruction(int_lit(0), null_op(), null_op(), Operator::_return));
            else emit(new Instruction(null_op(), null_op(), null_op(), Operator::_return));
        }
        if (name == "main") {
            func->InstVec.insert(func->InstVec.begin(),
                                 new ir::CallInst(Operand("global", Type::null), Operand("tg", Type::null)));
        }
        program.addFunction(*func);

        current = saved;
        current_return = saved_ret;
        sym.exit_scope();
    }

    void generate_comp_unit(frontend::CompUnit* root) {
        if (root->children.empty()) return;
        if (root->children[0]->type == frontend::NodeType::DECL) {
            gen_decl(as<frontend::Decl>(root->children[0]));
        } else {
            gen_func(as<frontend::FuncDef>(root->children[0]));
        }
        if (root->children.size() > 1) generate_comp_unit(as<frontend::CompUnit>(root->children[1]));
    }
};

} // namespace

std::map<std::string, ir::Function*>* frontend::get_lib_funcs() {
    static std::map<std::string, ir::Function*> lib_funcs = {
        {"getint", new Function("getint", Type::Int)},
        {"getch", new Function("getch", Type::Int)},
        {"getfloat", new Function("getfloat", Type::Float)},
        {"getarray", new Function("getarray", {Operand("arr", Type::IntPtr)}, Type::Int)},
        {"getfarray", new Function("getfarray", {Operand("arr", Type::FloatPtr)}, Type::Int)},
        {"putint", new Function("putint", {Operand("i", Type::Int)}, Type::null)},
        {"putch", new Function("putch", {Operand("i", Type::Int)}, Type::null)},
        {"putfloat", new Function("putfloat", {Operand("f", Type::Float)}, Type::null)},
        {"putarray", new Function("putarray", {Operand("n", Type::Int), Operand("arr", Type::IntPtr)}, Type::null)},
        {"putfarray", new Function("putfarray", {Operand("n", Type::Int), Operand("arr", Type::FloatPtr)}, Type::null)},
    };
    return &lib_funcs;
}

void frontend::SymbolTable::add_scope(Block*) {
    ScopeInfo info;
    info.cnt = scope_cnt++;
    info.name = "b";
    scope_stack.push_back(info);
}

void frontend::SymbolTable::exit_scope() {
    assert(!scope_stack.empty());
    scope_stack.pop_back();
}

std::string frontend::SymbolTable::get_scoped_name(std::string id) const {
    if (scope_stack.size() <= 1) return id;
    return id + "_" + std::to_string(scope_stack.back().cnt);
}

Operand frontend::SymbolTable::get_operand(std::string id) const {
    return get_ste(id).operand;
}

frontend::STE frontend::SymbolTable::get_ste(std::string id) const {
    for (auto it = scope_stack.rbegin(); it != scope_stack.rend(); ++it) {
        auto found = it->table.find(id);
        if (found != it->table.end()) return found->second;
    }
    assert(false && "undefined identifier");
    return {};
}

void frontend::SymbolTable::add_ste(const std::string& id, const STE& ste) {
    assert(!scope_stack.empty());
    scope_stack.back().table[id] = ste;
}

frontend::Analyzer::Analyzer() : tmp_cnt(0), symbol_table() {
    symbol_table.add_scope();
    auto* libs = get_lib_funcs();
    for (auto& item : *libs) {
        symbol_table.functions[item.first] = item.second;
    }
}

ir::Program frontend::Analyzer::get_ir_program(CompUnit* root) {
    IRBuilder builder(*this);
    return builder.build(root);
}
