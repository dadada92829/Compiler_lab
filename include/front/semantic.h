/**
 * @file semantic.h
 * @brief SysY semantic analysis and IR generation.
 */

#ifndef SEMANTIC_H
#define SEMANTIC_H

#include "front/abstract_syntax_tree.h"
#include "ir/ir.h"

#include <map>
#include <string>
#include <vector>

namespace frontend {

struct STE {
    ir::Operand operand;
    std::vector<int> dimension;
    bool is_const = false;
};

using map_str_ste = std::map<std::string, STE>;

struct ScopeInfo {
    int cnt = 0;
    std::string name;
    map_str_ste table;
};

std::map<std::string, ir::Function*>* get_lib_funcs();

struct SymbolTable {
    std::vector<ScopeInfo> scope_stack;
    std::map<std::string, ir::Function*> functions;
    int scope_cnt = 0;

    void add_scope(Block* node = nullptr);
    void exit_scope();
    std::string get_scoped_name(std::string id) const;
    ir::Operand get_operand(std::string id) const;
    STE get_ste(std::string id) const;
    void add_ste(const std::string& id, const STE& ste);
};

struct Analyzer {
    int tmp_cnt;
    std::vector<ir::Instruction*> g_init_inst;
    SymbolTable symbol_table;

    Analyzer();

    ir::Program get_ir_program(CompUnit*);

    Analyzer(const Analyzer&) = delete;
    Analyzer& operator=(const Analyzer&) = delete;
};

} // namespace frontend

#endif
