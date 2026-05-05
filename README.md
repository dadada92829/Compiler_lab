# Compiler_lab

重庆大学编译原理实验项目。当前仓库包含实验 1、实验 2、实验 3 的代码与测试框架。

实验 3 本地测试结果：58 个测试点全部通过。

## 使用 Docker 测试

先把仓库下载到本地：

```bash
git clone https://github.com/dadada92829/Compiler_lab.git
cd Compiler_lab
```

拉取实验指导书指定的 Docker 镜像：

```bash
docker pull frankd35/demo:v3
```

启动容器并把当前项目挂载到 `/coursegrader`。

Windows PowerShell：

```powershell
docker run -it --rm -v "${PWD}:/coursegrader" frankd35/demo:v3
```

macOS / Linux：

```bash
docker run -it --rm -v "$(pwd):/coursegrader" frankd35/demo:v3
```

进入容器后，后续命令都在容器里执行。

## 测试实验 1 / 实验 2

`s0`、`s1`、`s2` 分别对应词法分析、语法分析、语义分析 / IR 测试。`test.py` 会自动重新 CMake 构建项目、运行测试并评分。

```bash
cd /coursegrader/test

python test.py s0
python test.py s1
python test.py s2
```

评分结果会输出在终端末尾，也会写入 `test/log.txt`。满分时结果为 `score: 58 / 58`。

## 测试实验 3

实验 3 测试 RISC-V 汇编生成。脚本会遍历 `test/testcase/basic` 和 `test/testcase/function` 下的 58 个 `.sy` 测试点，生成汇编、链接、用 `qemu-riscv32` 运行，再与标准输出比较。

```bash
cd /coursegrader
bash test/run_s3.sh
```

全部通过时最后一行应为：

```text
score: 58 / 58
```

测试中间产物会生成在：

```text
test/output
test/output_s
test/output_exe
test/output_run
```
