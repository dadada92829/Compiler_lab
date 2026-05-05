#include"front/syntax.h"

#include<iostream>
#include<cassert>

using frontend::Parser;

// #define DEBUG_PARSER
#define CUR_TOKEN_IS(tk_type) (index < token_stream.size() && token_stream[index].type == TokenType::tk_type)
#define PARSE_TOKEN(tk_type) root->children.push_back(parseTerm(root, TokenType::tk_type))
#define PARSE(name, type) auto name = new type(root); assert(parse##type(name)); root->children.push_back(name); 

Parser::Parser(const std::vector<frontend::Token>& tokens): index(0), token_stream(tokens) {}

Parser::~Parser() {}

frontend::CompUnit* Parser::get_abstract_syntax_tree(){
    CompUnit* root = new CompUnit();
    parseCompUnit(root);
    return root;
}

void Parser::log(AstNode* node){
#ifdef DEBUG_PARSER
    if (index < token_stream.size()) {
        std::cout << "in parse " << toString(node->type) << ", cur_token_type::" << toString(token_stream[index].type) << ", token_val::" << token_stream[index].value << '\n';
    }
#endif
}

frontend::Term* Parser::parseTerm(AstNode* parent, TokenType expected) {
    if (index < token_stream.size() && token_stream[index].type == expected) {
        Term* term = new Term(token_stream[index], parent);
        index++;
        return term;
    }
    assert(0 && "parseTerm failed! Unexpected Token.");
    return nullptr;
}

bool Parser::parseCompUnit(CompUnit* root) {
    log(root);
    if (index >= token_stream.size()) return false;

    // 前瞻预测：区分 Decl 和 FuncDef
    bool is_func = false;
    if (CUR_TOKEN_IS(VOIDTK)) {
        is_func = true;
    } else if (CUR_TOKEN_IS(INTTK) || CUR_TOKEN_IS(FLOATTK)) {
        // 如果是 int/float，往后看两个Token，如果是 '(' 则是函数
        if (index + 2 < token_stream.size() && token_stream[index+2].type == TokenType::LPARENT) {
            is_func = true;
        }
    }

    if (is_func) {
        PARSE(funcdef, FuncDef);
    } else {
        PARSE(decl, Decl);
    }

    if (index < token_stream.size()) {
        PARSE(comp_unit, CompUnit);
    }
    return true;
}

bool Parser::parseDecl(Decl* root) {
    log(root);
    if (CUR_TOKEN_IS(CONSTTK)) {
        PARSE(const_decl, ConstDecl);
    } else {
        PARSE(var_decl, VarDecl);
    }
    return true;
}

bool Parser::parseConstDecl(ConstDecl* root) {
    log(root);
    PARSE_TOKEN(CONSTTK);
    PARSE(btype, BType);
    PARSE(cdef, ConstDef);
    while (CUR_TOKEN_IS(COMMA)) {
        PARSE_TOKEN(COMMA);
        PARSE(cdef2, ConstDef);
    }
    PARSE_TOKEN(SEMICN);
    return true;
}

bool Parser::parseBType(BType* root) {
    log(root);
    if (CUR_TOKEN_IS(INTTK)) { PARSE_TOKEN(INTTK); } 
    else if (CUR_TOKEN_IS(FLOATTK)) { PARSE_TOKEN(FLOATTK); } 
    else { return false; }
    return true;
}

bool Parser::parseConstDef(ConstDef* root) {
    log(root);
    PARSE_TOKEN(IDENFR);
    while (CUR_TOKEN_IS(LBRACK)) {
        PARSE_TOKEN(LBRACK);
        PARSE(ce, ConstExp);
        PARSE_TOKEN(RBRACK);
    }
    PARSE_TOKEN(ASSIGN);
    PARSE(civ, ConstInitVal);
    return true;
}

bool Parser::parseConstInitVal(ConstInitVal* root) {
    log(root);
    if (CUR_TOKEN_IS(LBRACE)) {
        PARSE_TOKEN(LBRACE);
        if (!CUR_TOKEN_IS(RBRACE)) {
            PARSE(civ, ConstInitVal);
            while (CUR_TOKEN_IS(COMMA)) {
                PARSE_TOKEN(COMMA);
                PARSE(civ2, ConstInitVal);
            }
        }
        PARSE_TOKEN(RBRACE);
    } else {
        PARSE(ce, ConstExp);
    }
    return true;
}

bool Parser::parseVarDecl(VarDecl* root) {
    log(root);
    PARSE(btype, BType);
    PARSE(vdef, VarDef);
    while (CUR_TOKEN_IS(COMMA)) {
        PARSE_TOKEN(COMMA);
        PARSE(vdef2, VarDef);
    }
    PARSE_TOKEN(SEMICN);
    return true;
}

bool Parser::parseVarDef(VarDef* root) {
    log(root);
    PARSE_TOKEN(IDENFR);
    while (CUR_TOKEN_IS(LBRACK)) {
        PARSE_TOKEN(LBRACK);
        PARSE(ce, ConstExp);
        PARSE_TOKEN(RBRACK);
    }
    if (CUR_TOKEN_IS(ASSIGN)) {
        PARSE_TOKEN(ASSIGN);
        PARSE(iv, InitVal);
    }
    return true;
}

bool Parser::parseInitVal(InitVal* root) {
    log(root);
    if (CUR_TOKEN_IS(LBRACE)) {
        PARSE_TOKEN(LBRACE);
        if (!CUR_TOKEN_IS(RBRACE)) {
            PARSE(iv, InitVal);
            while (CUR_TOKEN_IS(COMMA)) {
                PARSE_TOKEN(COMMA);
                PARSE(iv2, InitVal);
            }
        }
        PARSE_TOKEN(RBRACE);
    } else {
        PARSE(exp, Exp);
    }
    return true;
}

bool Parser::parseFuncDef(FuncDef* root) {
    log(root);
    PARSE(ftype, FuncType);
    PARSE_TOKEN(IDENFR);
    PARSE_TOKEN(LPARENT);
    if (!CUR_TOKEN_IS(RPARENT)) {
        PARSE(params, FuncFParams);
    }
    PARSE_TOKEN(RPARENT);
    PARSE(block, Block);
    return true;
}

bool Parser::parseFuncType(FuncType* root) {
    log(root);
    if (CUR_TOKEN_IS(VOIDTK)) { PARSE_TOKEN(VOIDTK); } 
    else if (CUR_TOKEN_IS(INTTK)) { PARSE_TOKEN(INTTK); } 
    else if (CUR_TOKEN_IS(FLOATTK)) { PARSE_TOKEN(FLOATTK); } 
    else { return false; }
    return true;
}

bool Parser::parseFuncFParam(FuncFParam* root) {
    log(root);
    PARSE(btype, BType);
    PARSE_TOKEN(IDENFR);
    if (CUR_TOKEN_IS(LBRACK)) {
        PARSE_TOKEN(LBRACK);
        PARSE_TOKEN(RBRACK);
        while (CUR_TOKEN_IS(LBRACK)) {
            PARSE_TOKEN(LBRACK);
            PARSE(exp, Exp);
            PARSE_TOKEN(RBRACK);
        }
    }
    return true;
}

bool Parser::parseFuncFParams(FuncFParams* root) {
    log(root);
    PARSE(fp, FuncFParam);
    while (CUR_TOKEN_IS(COMMA)) {
        PARSE_TOKEN(COMMA);
        PARSE(fp2, FuncFParam);
    }
    return true;
}

bool Parser::parseBlock(Block* root) {
    log(root);
    PARSE_TOKEN(LBRACE);
    while (!CUR_TOKEN_IS(RBRACE)) {
        PARSE(bi, BlockItem);
    }
    PARSE_TOKEN(RBRACE);
    return true;
}

bool Parser::parseBlockItem(BlockItem* root) {
    log(root);
    if (CUR_TOKEN_IS(CONSTTK) || CUR_TOKEN_IS(INTTK) || CUR_TOKEN_IS(FLOATTK)) {
        PARSE(decl, Decl);
    } else {
        PARSE(stmt, Stmt);
    }
    return true;
}

bool Parser::parseStmt(Stmt* root) {
    log(root);
    if (CUR_TOKEN_IS(LBRACE)) {
        PARSE(block, Block);
    } else if (CUR_TOKEN_IS(IFTK)) {
        PARSE_TOKEN(IFTK);
        PARSE_TOKEN(LPARENT);
        PARSE(cond, Cond);
        PARSE_TOKEN(RPARENT);
        PARSE(stmt, Stmt);
        if (CUR_TOKEN_IS(ELSETK)) {
            PARSE_TOKEN(ELSETK);
            PARSE(stmt2, Stmt);
        }
    } else if (CUR_TOKEN_IS(WHILETK)) {
        PARSE_TOKEN(WHILETK);
        PARSE_TOKEN(LPARENT);
        PARSE(cond, Cond);
        PARSE_TOKEN(RPARENT);
        PARSE(stmt, Stmt);
    } else if (CUR_TOKEN_IS(BREAKTK)) {
        PARSE_TOKEN(BREAKTK);
        PARSE_TOKEN(SEMICN);
    } else if (CUR_TOKEN_IS(CONTINUETK)) {
        PARSE_TOKEN(CONTINUETK);
        PARSE_TOKEN(SEMICN);
    } else if (CUR_TOKEN_IS(RETURNTK)) {
        PARSE_TOKEN(RETURNTK);
        if (!CUR_TOKEN_IS(SEMICN)) {
            PARSE(exp, Exp);
        }
        PARSE_TOKEN(SEMICN);
    } else {
        // 分支回溯预测：区分 LVal '=' Exp ';' 与 [Exp] ';'
        int old_index = index;
        LVal* lval = new LVal(root);
        if (parseLVal(lval) && CUR_TOKEN_IS(ASSIGN)) {
            root->children.push_back(lval);
            PARSE_TOKEN(ASSIGN);
            PARSE(exp, Exp);
            PARSE_TOKEN(SEMICN);
        } else {
            delete lval;
            index = old_index; // 回溯
            if (!CUR_TOKEN_IS(SEMICN)) {
                PARSE(exp, Exp);
            }
            PARSE_TOKEN(SEMICN);
        }
    }
    return true;
}

bool Parser::parseExp(Exp* root) {
    log(root);
    PARSE(addexp, AddExp);
    return true;
}

bool Parser::parseCond(Cond* root) {
    log(root);
    PARSE(lorexp, LOrExp);
    return true;
}

bool Parser::parseLVal(LVal* root) {
    log(root);
    if (!CUR_TOKEN_IS(IDENFR)) return false;
    PARSE_TOKEN(IDENFR);
    while (CUR_TOKEN_IS(LBRACK)) {
        PARSE_TOKEN(LBRACK);
        PARSE(exp, Exp);
        PARSE_TOKEN(RBRACK);
    }
    return true;
}

bool Parser::parseNumber(Number* root) {
    log(root);
    if (CUR_TOKEN_IS(INTLTR)) { PARSE_TOKEN(INTLTR); } 
    else if (CUR_TOKEN_IS(FLOATLTR)) { PARSE_TOKEN(FLOATLTR); } 
    else { return false; }
    return true;
}

bool Parser::parsePrimaryExp(PrimaryExp* root) {
    log(root);
    if (CUR_TOKEN_IS(LPARENT)) {
        PARSE_TOKEN(LPARENT);
        PARSE(exp, Exp);
        PARSE_TOKEN(RPARENT);
    } else if (CUR_TOKEN_IS(INTLTR) || CUR_TOKEN_IS(FLOATLTR)) {
        PARSE(number, Number);
    } else {
        PARSE(lval, LVal);
    }
    return true;
}

bool Parser::parseUnaryExp(UnaryExp* root) {
    log(root);
    if (CUR_TOKEN_IS(PLUS) || CUR_TOKEN_IS(MINU) || CUR_TOKEN_IS(NOT)) {
        PARSE(uop, UnaryOp);
        PARSE(uexp, UnaryExp);
    } else if (CUR_TOKEN_IS(IDENFR) && index + 1 < token_stream.size() && token_stream[index+1].type == TokenType::LPARENT) {
        // 遇到 Ident '(' 必须优先作为函数调用处理
        PARSE_TOKEN(IDENFR);
        PARSE_TOKEN(LPARENT);
        if (!CUR_TOKEN_IS(RPARENT)) {
            PARSE(params, FuncRParams);
        }
        PARSE_TOKEN(RPARENT);
    } else {
        PARSE(pexp, PrimaryExp);
    }
    return true;
}

bool Parser::parseUnaryOp(UnaryOp* root) {
    log(root);
    if (CUR_TOKEN_IS(PLUS)) { PARSE_TOKEN(PLUS); } 
    else if (CUR_TOKEN_IS(MINU)) { PARSE_TOKEN(MINU); } 
    else if (CUR_TOKEN_IS(NOT)) { PARSE_TOKEN(NOT); } 
    else { return false; }
    return true;
}

bool Parser::parseFuncRParams(FuncRParams* root) {
    log(root);
    PARSE(exp, Exp);
    while (CUR_TOKEN_IS(COMMA)) {
        PARSE_TOKEN(COMMA);
        PARSE(exp2, Exp);
    }
    return true;
}

bool Parser::parseMulExp(MulExp* root) {
    log(root);
    PARSE(uexp, UnaryExp);
    while (CUR_TOKEN_IS(MULT) || CUR_TOKEN_IS(DIV) || CUR_TOKEN_IS(MOD)) {
        if (CUR_TOKEN_IS(MULT)) { PARSE_TOKEN(MULT); } 
        else if (CUR_TOKEN_IS(DIV)) { PARSE_TOKEN(DIV); } 
        else if (CUR_TOKEN_IS(MOD)) { PARSE_TOKEN(MOD); }
        PARSE(uexp2, UnaryExp);
    }
    return true;
}

bool Parser::parseAddExp(AddExp* root) {
    log(root);
    PARSE(mexp, MulExp);
    while (CUR_TOKEN_IS(PLUS) || CUR_TOKEN_IS(MINU)) {
        if (CUR_TOKEN_IS(PLUS)) { PARSE_TOKEN(PLUS); } 
        else if (CUR_TOKEN_IS(MINU)) { PARSE_TOKEN(MINU); }
        PARSE(mexp2, MulExp);
    }
    return true;
}

bool Parser::parseRelExp(RelExp* root) {
    log(root);
    PARSE(aexp, AddExp);
    while (CUR_TOKEN_IS(LSS) || CUR_TOKEN_IS(GTR) || CUR_TOKEN_IS(LEQ) || CUR_TOKEN_IS(GEQ)) {
        if (CUR_TOKEN_IS(LSS)) { PARSE_TOKEN(LSS); } 
        else if (CUR_TOKEN_IS(GTR)) { PARSE_TOKEN(GTR); } 
        else if (CUR_TOKEN_IS(LEQ)) { PARSE_TOKEN(LEQ); } 
        else if (CUR_TOKEN_IS(GEQ)) { PARSE_TOKEN(GEQ); }
        PARSE(aexp2, AddExp);
    }
    return true;
}

bool Parser::parseEqExp(EqExp* root) {
    log(root);
    PARSE(rexp, RelExp);
    while (CUR_TOKEN_IS(EQL) || CUR_TOKEN_IS(NEQ)) {
        if (CUR_TOKEN_IS(EQL)) { PARSE_TOKEN(EQL); } 
        else if (CUR_TOKEN_IS(NEQ)) { PARSE_TOKEN(NEQ); }
        PARSE(rexp2, RelExp);
    }
    return true;
}

bool Parser::parseLAndExp(LAndExp* root) {
    log(root);
    PARSE(eexp, EqExp);
    if (CUR_TOKEN_IS(AND)) {
        PARSE_TOKEN(AND);
        PARSE(land, LAndExp);
    }
    return true;
}

bool Parser::parseLOrExp(LOrExp* root) {
    log(root);
    PARSE(land, LAndExp);
    if (CUR_TOKEN_IS(OR)) {
        PARSE_TOKEN(OR);
        PARSE(lor, LOrExp);
    }
    return true;
}

bool Parser::parseConstExp(ConstExp* root) {
    log(root);
    PARSE(addexp, AddExp);
    return true;
}