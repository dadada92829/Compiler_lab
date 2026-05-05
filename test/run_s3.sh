#!/bin/bash
set -u

cd /coursegrader || exit 1

mkdir -p test/output_s
mkdir -p test/output_exe
mkdir -p test/output_run

total=0
pass=0

for dir in basic function; do
  mkdir -p test/output_s/$dir test/output_exe/$dir test/output_run/$dir

  for src in test/testcase/$dir/*.sy; do
    name=$(basename "$src" .sy)
    asm="test/output_s/$dir/$name.s"
    exe="test/output_exe/$dir/$name"
    got="test/output_run/$dir/$name.out"
    ref="test/testcase/$dir/$name.out"
    input="test/testcase/$dir/$name.in"

    total=$((total + 1))

    ./bin/compiler "$src" -S -o "$asm"
    if [ $? -ne 0 ]; then
      echo "[COMPILE FAIL] $dir/$name"
      continue
    fi

    riscv32-unknown-linux-gnu-gcc -static "$asm" test/sylib-riscv-linux.a -o "$exe"
    if [ $? -ne 0 ]; then
      echo "[LINK FAIL] $dir/$name"
      continue
    fi

    if [ -f "$input" ]; then
      qemu-riscv32 "$exe" < "$input" > "$got"
    else
      qemu-riscv32 "$exe" > "$got"
    fi
    ret=$?

    printf "\n%s\n" "$ret" >> "$got"

    if diff -wB "$ref" "$got" >/dev/null; then
      echo "[PASS] $dir/$name"
      pass=$((pass + 1))
    else
      echo "[FAIL] $dir/$name"
      echo "  expected: $ref"
      echo "  got:      $got"
    fi
  done
done

echo "score: $pass / $total"
