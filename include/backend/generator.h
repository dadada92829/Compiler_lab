#ifndef BACKEND_GENERATOR_H
#define BACKEND_GENERATOR_H

#include "ir/ir.h"

#include <fstream>

namespace backend {

struct Generator {
    const ir::Program& program;
    std::ofstream& fout;

    Generator(const ir::Program& program, std::ofstream& fout);

    void gen();
};

} // namespace backend

#endif
