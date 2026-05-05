    .option nopic
    .text
    .align 1
    .globl if_ifElse_
    .type if_ifElse_, @function
if_ifElse_:
    addi sp, sp, -64
    sw ra, 60(sp)
    sw s0, 56(sp)
    addi s0, sp, 64
.L_if_ifElse__0:
    li t0, 0
    sw t0, -12(s0)
.L_if_ifElse__1:
    li t0, 5
    sw t0, -12(s0)
.L_if_ifElse__2:
    li t0, 0
    sw t0, -16(s0)
.L_if_ifElse__3:
    li t0, 10
    sw t0, -16(s0)
.L_if_ifElse__4:
    lw t0, -12(s0)
    li t1, 5
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -20(s0)
.L_if_ifElse__5:
    lw t0, -20(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -24(s0)
.L_if_ifElse__6:
    lw t0, -24(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -28(s0)
.L_if_ifElse__7:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_if_ifElse__8:
    lw t0, -32(s0)
    bne t0, zero, .L_if_ifElse__10
.L_if_ifElse__9:
    j .L_if_ifElse__22
.L_if_ifElse__10:
    lw t0, -16(s0)
    li t1, 10
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -36(s0)
.L_if_ifElse__11:
    lw t0, -36(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -40(s0)
.L_if_ifElse__12:
    lw t0, -40(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -44(s0)
.L_if_ifElse__13:
    lw t0, -44(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -48(s0)
.L_if_ifElse__14:
    lw t0, -48(s0)
    bne t0, zero, .L_if_ifElse__16
.L_if_ifElse__15:
    j .L_if_ifElse__18
.L_if_ifElse__16:
    li t0, 25
    sw t0, -12(s0)
.L_if_ifElse__17:
    j .L_if_ifElse__21
.L_if_ifElse__18:
.L_if_ifElse__19:
    lw t0, -12(s0)
    addi t2, t0, 15
    sw t2, -52(s0)
.L_if_ifElse__20:
    lw t0, -52(s0)
    sw t0, -12(s0)
.L_if_ifElse__21:
.L_if_ifElse__22:
.L_if_ifElse__23:
    lw a0, -12(s0)
    j .L_if_ifElse__exit
.L_if_ifElse__exit:
    lw ra, 60(sp)
    lw s0, 56(sp)
    addi sp, sp, 64
    jr ra
    .size if_ifElse_, .-if_ifElse_

    .text
    .align 1
    .globl main
    .type main, @function
main:
    addi sp, sp, -16
    sw ra, 12(sp)
    sw s0, 8(sp)
    addi s0, sp, 16
.L_main_0:
    call global
.L_main_1:
    call if_ifElse_
    sw a0, -12(s0)
.L_main_2:
    lw a0, -12(s0)
    j .L_main_exit
.L_main_exit:
    lw ra, 12(sp)
    lw s0, 8(sp)
    addi sp, sp, 16
    jr ra
    .size main, .-main

    .text
    .align 1
    .globl global
    .type global, @function
global:
    addi sp, sp, -16
    sw ra, 12(sp)
    sw s0, 8(sp)
    addi s0, sp, 16
.L_global_0:
    j .L_global_exit
.L_global_exit:
    lw ra, 12(sp)
    lw s0, 8(sp)
    addi sp, sp, 16
    jr ra
    .size global, .-global

    .section .note.GNU-stack,"",@progbits
