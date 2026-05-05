#include"front/lexical.h"

#include<map>
#include<cassert>
#include<string>
#include<iostream>

// #define DEBUG_DFA
// #define DEBUG_SCANNER

std::string frontend::toString(State s) {
    switch (s) {
    case State::Empty: return "Empty";
    case State::Ident: return "Ident";
    case State::IntLiteral: return "IntLiteral";
    case State::FloatLiteral: return "FloatLiteral";
    case State::op: return "op";
    default:
        assert(0 && "invalid State");
    }
    return "";
}

std::set<std::string> frontend::keywords= {
    "const", "int", "float", "if", "else", "while", "continue", "break", "return", "void"
};

frontend::DFA::DFA(): cur_state(frontend::State::Empty), cur_str() {}

frontend::DFA::~DFA() {}

bool frontend::DFA::next(char input, Token& buf) {
#ifdef DEBUG_DFA
    std::cout << "in state [" << toString(cur_state) << "], input = \'" << input << "\', str = " << cur_str << "\t";
#endif

    bool has_token = false;

    // 辅助判定函数
    auto is_space = [](char c) { return c == ' ' || c == '\t' || c == '\n' || c == '\r'; };
    auto is_alpha = [](char c) { return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || c == '_'; };
    auto is_digit = [](char c) { return c >= '0' && c <= '9'; };
    auto is_op = [](char c) { 
        std::string ops = "+-*/%<>:=;,()[]{}!&|";
        return ops.find(c) != std::string::npos; 
    };

    // 关键词和符号映射
    auto get_keyword_type = [](const std::string& str) {
        if (str == "const") return TokenType::CONSTTK;
        if (str == "int") return TokenType::INTTK;
        if (str == "float") return TokenType::FLOATTK;
        if (str == "if") return TokenType::IFTK;
        if (str == "else") return TokenType::ELSETK;
        if (str == "while") return TokenType::WHILETK;
        if (str == "continue") return TokenType::CONTINUETK;
        if (str == "break") return TokenType::BREAKTK;
        if (str == "return") return TokenType::RETURNTK;
        if (str == "void") return TokenType::VOIDTK;
        return TokenType::IDENFR;
    };

    auto get_op_type = [](const std::string& str) {
        if (str == "+") return TokenType::PLUS;
        if (str == "-") return TokenType::MINU;
        if (str == "*") return TokenType::MULT;
        if (str == "/") return TokenType::DIV;
        if (str == "%") return TokenType::MOD;
        if (str == "<") return TokenType::LSS;
        if (str == ">") return TokenType::GTR;
        if (str == ":") return TokenType::COLON;
        if (str == "=") return TokenType::ASSIGN;
        if (str == ";") return TokenType::SEMICN;
        if (str == ",") return TokenType::COMMA;
        if (str == "(") return TokenType::LPARENT;
        if (str == ")") return TokenType::RPARENT;
        if (str == "[") return TokenType::LBRACK;
        if (str == "]") return TokenType::RBRACK;
        if (str == "{") return TokenType::LBRACE;
        if (str == "}") return TokenType::RBRACE;
        if (str == "!") return TokenType::NOT;
        if (str == "<=") return TokenType::LEQ;
        if (str == ">=") return TokenType::GEQ;
        if (str == "==") return TokenType::EQL;
        if (str == "!=") return TokenType::NEQ;
        if (str == "&&") return TokenType::AND;
        if (str == "||") return TokenType::OR;
        return TokenType::IDENFR;
    };

    // 状态机重置并进入新状态
    auto start_new_state = [&]() {
        if (is_space(input)) {
            cur_state = State::Empty;
            cur_str = "";
        } else if (is_alpha(input)) {
            cur_state = State::Ident;
            cur_str = input;
        } else if (is_digit(input)) {
            cur_state = State::IntLiteral;
            cur_str = input;
        } else if (input == '.') {
            cur_state = State::FloatLiteral;
            cur_str = input;
        } else if (is_op(input)) {
            cur_state = State::op;
            cur_str = input;
        } else {
            cur_state = State::Empty;
            cur_str = "";
        }
    };

    // 核心状态转移逻辑
    switch(cur_state) {
        case State::Empty:
            start_new_state();
            break;
            
        case State::Ident:
            if (is_alpha(input) || is_digit(input)) {
                cur_str += input;
            } else {
                buf.value = cur_str;
                buf.type = get_keyword_type(cur_str);
                has_token = true;
                start_new_state();
            }
            break;
            
        case State::IntLiteral:
            if (is_digit(input) || is_alpha(input)) { // 包含16进制字母或科学计数法e
                cur_str += input;
                if (input == 'e' || input == 'E' || input == 'p' || input == 'P') {
                    cur_state = State::FloatLiteral;
                }
            } else if (input == '.') {
                cur_str += input;
                cur_state = State::FloatLiteral;
            } else {
                buf.value = cur_str;
                buf.type = TokenType::INTLTR;
                has_token = true;
                start_new_state();
            }
            break;
            
        case State::FloatLiteral:
            if (is_digit(input) || is_alpha(input) || input == '.') {
                cur_str += input;
            } else if ((input == '+' || input == '-') && 
                       !cur_str.empty() && 
                       (cur_str.back() == 'e' || cur_str.back() == 'E' || cur_str.back() == 'p' || cur_str.back() == 'P')) {
                cur_str += input; // 处理类似 1e-5 或 1e+5 的科学计数法符号
            } else {
                buf.value = cur_str;
                buf.type = TokenType::FLOATLTR;
                has_token = true;
                start_new_state();
            }
            break;
            
        case State::op:
            // 处理长度为2的操作符，例如 ==, <=, >=, !=, &&, ||
            if ((cur_str == "=" && input == '=') ||
                (cur_str == "<" && input == '=') ||
                (cur_str == ">" && input == '=') ||
                (cur_str == "!" && input == '=') ||
                (cur_str == "&" && input == '&') ||
                (cur_str == "|" && input == '|')) {
                cur_str += input;
            } else {
                buf.value = cur_str;
                buf.type = get_op_type(cur_str);
                has_token = true;
                start_new_state();
            }
            break;
    }

#ifdef DEBUG_DFA
    std::cout << "next state is [" << toString(cur_state) << "], next str = " << cur_str << "\t, ret = " << has_token << std::endl;
#endif
    return has_token;
}

void frontend::DFA::reset() {
    cur_state = State::Empty;
    cur_str = "";
}

frontend::Scanner::Scanner(std::string filename): fin(filename) {
    if(!fin.is_open()) {
        assert(0 && "in Scanner constructor, input file cannot open");
    }
}

frontend::Scanner::~Scanner() {
    fin.close();
}

std::vector<frontend::Token> frontend::Scanner::run() {
    std::vector<frontend::Token> tokens;
    std::string content;
    char ch;
    
    // 1. 读取整个文件
    while (fin.get(ch)) {
        content += ch;
    }

    // 2. 预处理：删除单行注释和多行注释
    std::string processed;
    for (size_t i = 0; i < content.length(); ) {
        if (i + 1 < content.length() && content[i] == '/' && content[i+1] == '/') {
            // 跳过单行注释
            i += 2;
            while (i < content.length() && content[i] != '\n') i++;
        } else if (i + 1 < content.length() && content[i] == '/' && content[i+1] == '*') {
            // 跳过多行注释
            i += 2;
            while (i + 1 < content.length() && !(content[i] == '*' && content[i+1] == '/')) i++;
            if (i + 1 < content.length()) i += 2; // 跳过 '*/'
            else i = content.length();
        } else {
            processed += content[i];
            i++;
        }
    }
    
    // 在最后强行加一个空格，确保最后一个Token能被DFA吐出来
    processed += ' ';

    // 3. 将处理后的字符串送入DFA生成Token流
    DFA dfa;
    Token tk;
    for (char c : processed) {
        if (dfa.next(c, tk)) {
            tokens.push_back(tk);
#ifdef DEBUG_SCANNER
            std::cout << "token: " << toString(tk.type) << "\t" << tk.value << std::endl;
#endif
        }
    }
    
    return tokens;
}