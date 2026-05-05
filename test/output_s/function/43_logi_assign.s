    .option nopic
    .data
    .align 2
    .globl a
a:
    .word 0
    .align 2
    .globl b
b:
    .word 0
    .text
    .align 1
    .globl main
    .type main, @function
main:
    addi sp, sp, -48
    sw ra, 44(sp)
    sw s0, 40(sp)
    addi s0, sp, 48
.L_main_0:
    call global
.L_main_1:
    li t0, 4
    la t6, a
    sw t0, 0(t6)
.L_main_2:
    li t0, 4
    la t6, b
    sw t0, 0(t6)
.L_main_3:
    li t0, 0
    sw t0, -12(s0)
.L_main_4:
    la t6, a
    lw t0, 0(t6)
    la t6, b
    lw t1, 0(t6)
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -16(s0)
.L_main_5:
    lw t0, -16(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -20(s0)
.L_main_6:
    li t0, 0
    sw t0, -24(s0)
.L_main_7:
    lw t0, -20(s0)
    bne t0, zero, .L_main_9
.L_main_8:
    j .L_main_12
.L_main_9:
    la t6, a
    lw t0, 0(t6)
    li t1, 3
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -28(s0)
.L_main_10:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_main_11:
    lw t0, -32(s0)
    sw t0, -24(s0)
.L_main_12:
.L_main_13:
    lw t0, -24(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -36(s0)
.L_main_14:
    lw t0, -36(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -40(s0)
.L_main_15:
    lw t0, -40(s0)
    bne t0, zero, .L_main_17
.L_main_16:
    j .L_main_19
.L_main_17:
    li t0, 1
    sw t0, -12(s0)
.L_main_18:
    j .L_main_21
.L_main_19:
.L_main_20:
    li t0, 0
    sw t0, -12(s0)
.L_main_21:
.L_main_22:
    lw a0, -12(s0)
    j .L_main_exit
.L_main_exit:
    lw ra, 44(sp)
    lw s0, 40(sp)
    addi sp, sp, 48
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
    li t0, 0
    la t6, a
    sw t0, 0(t6)
.L_global_1:
    li t0, 0
    la t6, b
    sw t0, 0(t6)
.L_global_2:
    j .L_global_exit
.L_global_exit:
    lw ra, 12(sp)
    lw s0, 8(sp)
    addi sp, sp, 16
    jr ra
    .size global, .-global

    .section .note.GNU-stack,"",@progbits
