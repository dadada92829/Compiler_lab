# Compiler_lab

重庆大学编译原理实验项目，包含实验 1、实验 2、实验 3。

实验 3 本地测试结果：58 个测试点全部通过。

## 1. 下载项目

在宿主机上执行，不是在 Docker 容器里执行：

```bash
git clone https://github.com/dadada92829/Compiler_lab.git
cd Compiler_lab
```

## 2. 启动 Docker 环境

拉取实验指导书中的镜像：

```bash
docker pull frankd35/demo:v3
```

从宿主机的项目根目录启动容器，并挂载到容器内 `/coursegrader`。

Windows PowerShell：

```powershell
cd D:\你的路径\Compiler_lab
docker run -it --rm -v "${PWD}:/coursegrader" frankd35/demo:v3
```

如果上面的 `${PWD}` 挂载失败，改用绝对路径：

```powershell
docker run -it --rm -v "D:\你的路径\Compiler_lab:/coursegrader" frankd35/demo:v3
```

macOS / Linux / Git Bash：

```bash
cd /你的路径/Compiler_lab
docker run -it --rm -v "$(pwd):/coursegrader" frankd35/demo:v3
```

进入容器后先检查挂载是否成功：

```bash
ls /coursegrader
```

应该能看到：

```text
CMakeLists.txt  README.md  bin  build  include  lib  main.cpp  src  test
```

如果提示 `/coursegrader` 不存在，说明 Docker 启动时没有挂载项目目录；先 `exit` 退出容器，然后重新执行上面的 `docker run -v ...:/coursegrader ...`。

## 3. 编译 compiler

后续命令都在 Docker 容器内执行：

```bash
cd /coursegrader
rm -rf build bin
mkdir build
cd build
cmake ..
make -j
ls ../bin
```

`ls ../bin` 中应该能看到：

```text
compiler
```

## 4. 测试实验 1 / 实验 2

`s0`、`s1`、`s2` 分别对应词法分析、语法分析、语义分析 / IR 测试。

```bash
cd /coursegrader/test
python test.py s0
python test.py s1
python test.py s2
```

满分时终端会出现：

```text
score: 58 / 58
```

## 5. 测试实验 3

先重新编译一次：

```bash
cd /coursegrader
rm -rf build bin
mkdir build
cd build
cmake ..
make -j
ls ../bin
```

确认 `../bin` 下有 `compiler` 后，先单独测试 `00_main.sy`：

```bash
cd /coursegrader
./bin/compiler test/testcase/basic/00_main.sy -S -o test/output_00.s
head test/output_00.s
```

如果能看到 `.text`、`.globl main`、`main:` 等内容，说明 `-S` 汇编生成接口正常。

再链接并用 qemu 运行：

```bash
riscv32-unknown-linux-gnu-gcc -static test/output_00.s test/sylib-riscv-linux.a -o test/output_00
qemu-riscv32 ./test/output_00
echo $?
```

`00_main.sy` 的返回值应为：

```text
3
```

最后批量运行 58 个实验 3 测试点：

```bash
cd /coursegrader
bash test/run_s3.sh
```

全部通过时最后一行应为：

```text
score: 58 / 58
```

批量测试脚本会生成这些中间产物：

```text
test/output_s
test/output_exe
test/output_run
```
