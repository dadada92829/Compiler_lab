    .option nopic
    .text
    .align 1
    .globl main
    .type main, @function
main:
    addi sp, sp, -112
    sw ra, 108(sp)
    sw s0, 104(sp)
    addi s0, sp, 112
.L_main_0:
    call global
.L_main_1:
    addi t0, s0, -44
    sw t0, -12(s0)
.L_main_2:
    li t2, 0
    lw t6, -12(s0)
    sw t2, 0(t6)
.L_main_3:
    li t2, 0
    lw t6, -12(s0)
    addi t6, t6, 4
    sw t2, 0(t6)
.L_main_4:
    li t2, 0
    lw t6, -12(s0)
    addi t6, t6, 8
    sw t2, 0(t6)
.L_main_5:
    li t2, 0
    lw t6, -12(s0)
    addi t6, t6, 12
    sw t2, 0(t6)
.L_main_6:
    li t2, 0
    lw t6, -12(s0)
    addi t6, t6, 16
    sw t2, 0(t6)
.L_main_7:
    li t2, 0
    lw t6, -12(s0)
    addi t6, t6, 20
    sw t2, 0(t6)
.L_main_8:
    li t2, 0
    lw t6, -12(s0)
    addi t6, t6, 24
    sw t2, 0(t6)
.L_main_9:
    li t2, 0
    lw t6, -12(s0)
    addi t6, t6, 28
    sw t2, 0(t6)
.L_main_10:
    addi t0, s0, -80
    sw t0, -48(s0)
.L_main_11:
    li t2, 1
    lw t6, -48(s0)
    sw t2, 0(t6)
.L_main_12:
    li t2, 2
    lw t6, -48(s0)
    addi t6, t6, 4
    sw t2, 0(t6)
.L_main_13:
    li t2, 3
    lw t6, -48(s0)
    addi t6, t6, 8
    sw t2, 0(t6)
.L_main_14:
    li t2, 4
    lw t6, -48(s0)
    addi t6, t6, 12
    sw t2, 0(t6)
.L_main_15:
    li t2, 5
    lw t6, -48(s0)
    addi t6, t6, 16
    sw t2, 0(t6)
.L_main_16:
    li t2, 6
    lw t6, -48(s0)
    addi t6, t6, 20
    sw t2, 0(t6)
.L_main_17:
    li t2, 7
    lw t6, -48(s0)
    addi t6, t6, 24
    sw t2, 0(t6)
.L_main_18:
    li t2, 8
    lw t6, -48(s0)
    addi t6, t6, 28
    sw t2, 0(t6)
.L_main_19:
    lw t6, -48(s0)
    addi t6, t6, 28
    lw t0, 0(t6)
    sw t0, -84(s0)
.L_main_20:
    lw t6, -48(s0)
    lw t0, 0(t6)
    sw t0, -88(s0)
.L_main_21:
    lw t0, -84(s0)
    lw t1, -88(s0)
    add t2, t0, t1
    sw t2, -92(s0)
.L_main_22:
    lw t6, -48(s0)
    addi t6, t6, 4
    lw t0, 0(t6)
    sw t0, -96(s0)
.L_main_23:
    lw t0, -92(s0)
    lw t1, -96(s0)
    add t2, t0, t1
    sw t2, -100(s0)
.L_main_24:
    lw t6, -48(s0)
    addi t6, t6, 16
    lw t0, 0(t6)
    sw t0, -104(s0)
.L_main_25:
    lw t0, -100(s0)
    lw t1, -104(s0)
    add t2, t0, t1
    sw t2, -108(s0)
.L_main_26:
    lw a0, -108(s0)
    j .L_main_exit
.L_main_exit:
    lw ra, 108(sp)
    lw s0, 104(sp)
    addi sp, sp, 112
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
