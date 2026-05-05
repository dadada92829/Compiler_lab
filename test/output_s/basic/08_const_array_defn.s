    .option nopic
    .data
    .align 2
    .globl a
a:
    .zero 20
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
    la t6, a
    addi t6, t6, 16
    lw t0, 0(t6)
    sw t0, -12(s0)
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
    li t2, 0
    la t6, a
    sw t2, 0(t6)
.L_global_1:
    li t2, 1
    la t6, a
    addi t6, t6, 4
    sw t2, 0(t6)
.L_global_2:
    li t2, 2
    la t6, a
    addi t6, t6, 8
    sw t2, 0(t6)
.L_global_3:
    li t2, 3
    la t6, a
    addi t6, t6, 12
    sw t2, 0(t6)
.L_global_4:
    li t2, 4
    la t6, a
    addi t6, t6, 16
    sw t2, 0(t6)
.L_global_5:
    j .L_global_exit
.L_global_exit:
    lw ra, 12(sp)
    lw s0, 8(sp)
    addi sp, sp, 16
    jr ra
    .size global, .-global

    .section .note.GNU-stack,"",@progbits
