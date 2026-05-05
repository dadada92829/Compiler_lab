    .option nopic
    .text
    .align 1
    .globl main
    .type main, @function
main:
    addi sp, sp, -32
    sw ra, 28(sp)
    sw s0, 24(sp)
    addi s0, sp, 32
.L_main_0:
    call global
.L_main_1:
    li t0, 10
    sw t0, -12(s0)
.L_main_2:
    li t0, 2
    sw t0, -16(s0)
.L_main_3:
    lw t0, -12(s0)
    lw t1, -16(s0)
    mul t2, t0, t1
    sw t2, -20(s0)
.L_main_4:
    lw t0, -20(s0)
    addi t2, t0, 1
    sw t2, -24(s0)
.L_main_5:
    lw a0, -24(s0)
    j .L_main_exit
.L_main_exit:
    lw ra, 28(sp)
    lw s0, 24(sp)
    addi sp, sp, 32
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
