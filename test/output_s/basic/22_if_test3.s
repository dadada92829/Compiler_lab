    .option nopic
    .text
    .align 1
    .globl ififElse
    .type ififElse, @function
ififElse:
    addi sp, sp, -64
    sw ra, 60(sp)
    sw s0, 56(sp)
    addi s0, sp, 64
.L_ififElse_0:
    li t0, 0
    sw t0, -12(s0)
.L_ififElse_1:
    li t0, 5
    sw t0, -12(s0)
.L_ififElse_2:
    li t0, 0
    sw t0, -16(s0)
.L_ififElse_3:
    li t0, 10
    sw t0, -16(s0)
.L_ififElse_4:
    lw t0, -12(s0)
    li t1, 5
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -20(s0)
.L_ififElse_5:
    lw t0, -20(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -24(s0)
.L_ififElse_6:
    lw t0, -24(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -28(s0)
.L_ififElse_7:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_ififElse_8:
    lw t0, -32(s0)
    bne t0, zero, .L_ififElse_10
.L_ififElse_9:
    j .L_ififElse_22
.L_ififElse_10:
    lw t0, -16(s0)
    li t1, 10
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -36(s0)
.L_ififElse_11:
    lw t0, -36(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -40(s0)
.L_ififElse_12:
    lw t0, -40(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -44(s0)
.L_ififElse_13:
    lw t0, -44(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -48(s0)
.L_ififElse_14:
    lw t0, -48(s0)
    bne t0, zero, .L_ififElse_16
.L_ififElse_15:
    j .L_ififElse_18
.L_ififElse_16:
    li t0, 25
    sw t0, -12(s0)
.L_ififElse_17:
    j .L_ififElse_21
.L_ififElse_18:
.L_ififElse_19:
    lw t0, -12(s0)
    addi t2, t0, 15
    sw t2, -52(s0)
.L_ififElse_20:
    lw t0, -52(s0)
    sw t0, -12(s0)
.L_ififElse_21:
.L_ififElse_22:
.L_ififElse_23:
    lw a0, -12(s0)
    j .L_ififElse_exit
.L_ififElse_exit:
    lw ra, 60(sp)
    lw s0, 56(sp)
    addi sp, sp, 64
    jr ra
    .size ififElse, .-ififElse

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
    call ififElse
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
