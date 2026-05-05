    .option nopic
    .data
    .align 2
    .globl arr
arr:
    .zero 24
    .text
    .align 1
    .globl main
    .type main, @function
main:
    addi sp, sp, -64
    sw ra, 60(sp)
    sw s0, 56(sp)
    addi s0, sp, 64
.L_main_0:
    call global
.L_main_1:
    li t0, 0
    sw t0, -12(s0)
.L_main_2:
    li t0, 0
    sw t0, -16(s0)
.L_main_3:
    lw t0, -12(s0)
    li t1, 6
    slt t2, t0, t1
    sw t2, -20(s0)
.L_main_4:
    lw t0, -20(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -24(s0)
.L_main_5:
    lw t0, -24(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -28(s0)
.L_main_6:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_main_7:
    lw t0, -32(s0)
    bne t0, zero, .L_main_9
.L_main_8:
    j .L_main_17
.L_main_9:
    li t0, 0
    sw t0, -36(s0)
.L_main_10:
    lw t0, -36(s0)
    lw t1, -12(s0)
    add t2, t0, t1
    sw t2, -40(s0)
.L_main_11:
    la t6, arr
    lw t0, -40(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -44(s0)
.L_main_12:
    lw t0, -16(s0)
    lw t1, -44(s0)
    add t2, t0, t1
    sw t2, -48(s0)
.L_main_13:
    lw t0, -48(s0)
    sw t0, -16(s0)
.L_main_14:
    lw t0, -12(s0)
    addi t2, t0, 1
    sw t2, -52(s0)
.L_main_15:
    lw t0, -52(s0)
    sw t0, -12(s0)
.L_main_16:
    j .L_main_3
.L_main_17:
.L_main_18:
    lw a0, -16(s0)
    j .L_main_exit
.L_main_exit:
    lw ra, 60(sp)
    lw s0, 56(sp)
    addi sp, sp, 64
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
    li t2, 1
    la t6, arr
    sw t2, 0(t6)
.L_global_1:
    li t2, 2
    la t6, arr
    addi t6, t6, 4
    sw t2, 0(t6)
.L_global_2:
    li t2, 33
    la t6, arr
    addi t6, t6, 8
    sw t2, 0(t6)
.L_global_3:
    li t2, 4
    la t6, arr
    addi t6, t6, 12
    sw t2, 0(t6)
.L_global_4:
    li t2, 5
    la t6, arr
    addi t6, t6, 16
    sw t2, 0(t6)
.L_global_5:
    li t2, 6
    la t6, arr
    addi t6, t6, 20
    sw t2, 0(t6)
.L_global_6:
    j .L_global_exit
.L_global_exit:
    lw ra, 12(sp)
    lw s0, 8(sp)
    addi sp, sp, 16
    jr ra
    .size global, .-global

    .section .note.GNU-stack,"",@progbits
