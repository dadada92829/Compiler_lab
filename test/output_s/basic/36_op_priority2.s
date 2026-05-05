    .option nopic
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
    li t0, 0
    sw t0, -12(s0)
.L_main_2:
    li t0, 0
    sw t0, -16(s0)
.L_main_3:
    li t0, 0
    sw t0, -20(s0)
.L_main_4:
    li t0, 0
    sw t0, -24(s0)
.L_main_5:
    li t0, 10
    sw t0, -12(s0)
.L_main_6:
    li t0, 4
    sw t0, -16(s0)
.L_main_7:
    li t0, 2
    sw t0, -20(s0)
.L_main_8:
    li t0, 2
    sw t0, -24(s0)
.L_main_9:
    lw t0, -20(s0)
    lw t1, -12(s0)
    add t2, t0, t1
    sw t2, -28(s0)
.L_main_10:
    lw t0, -16(s0)
    lw t1, -24(s0)
    sub t2, t0, t1
    sw t2, -32(s0)
.L_main_11:
    lw t0, -28(s0)
    lw t1, -32(s0)
    mul t2, t0, t1
    sw t2, -36(s0)
.L_main_12:
    lw a0, -36(s0)
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
    j .L_global_exit
.L_global_exit:
    lw ra, 12(sp)
    lw s0, 8(sp)
    addi sp, sp, 16
    jr ra
    .size global, .-global

    .section .note.GNU-stack,"",@progbits
