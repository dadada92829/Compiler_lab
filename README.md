# Compiler_lab

重庆大学编译原理实验项目，包含实验 1 、2 、3

实验 3 测试点 58 / 58

## 1. 下载项目


```bash
git clone https://github.com/dadada92829/Compiler_lab.git
cd Compiler_lab
```

## 2. 启动 Docker 环境

拉取镜像：

```bash
docker pull frankd35/demo:v3
```

从项目根目录启动容器，并挂载到容器内 `/coursegrader`。

```powershell
docker run -it --rm -v "你的路径\Compiler_lab:/coursegrader" frankd35/demo:v3
```


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

先单独测试 `00_main.sy`：

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

最后批量运行实验 3 的 58 个测试点：

```bash
cd /coursegrader
bash test/run_s3.sh
```
