    .option nopic
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
    sw t0, -12(s0)
.L_main_3:
    li t0, 0
    sw t0, -16(s0)
.L_main_4:
    li t0, 0
    sw t0, -16(s0)
.L_main_5:
    lw t0, -12(s0)
    li t1, 100
    slt t2, t0, t1
    sw t2, -20(s0)
.L_main_6:
    lw t0, -20(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -24(s0)
.L_main_7:
    lw t0, -24(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -28(s0)
.L_main_8:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_main_9:
    lw t0, -32(s0)
    bne t0, zero, .L_main_11
.L_main_10:
    j .L_main_26
.L_main_11:
    lw t0, -12(s0)
    li t1, 50
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -36(s0)
.L_main_12:
    lw t0, -36(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -40(s0)
.L_main_13:
    lw t0, -40(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -44(s0)
.L_main_14:
    lw t0, -44(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -48(s0)
.L_main_15:
    lw t0, -48(s0)
    bne t0, zero, .L_main_17
.L_main_16:
    j .L_main_20
.L_main_17:
    lw t0, -12(s0)
    addi t2, t0, 1
    sw t2, -52(s0)
.L_main_18:
    lw t0, -52(s0)
    sw t0, -12(s0)
.L_main_19:
    j .L_main_5
.L_main_20:
.L_main_21:
    lw t0, -16(s0)
    lw t1, -12(s0)
    add t2, t0, t1
    sw t2, -56(s0)
.L_main_22:
    lw t0, -56(s0)
    sw t0, -16(s0)
.L_main_23:
    lw t0, -12(s0)
    addi t2, t0, 1
    sw t2, -60(s0)
.L_main_24:
    lw t0, -60(s0)
    sw t0, -12(s0)
.L_main_25:
    j .L_main_5
.L_main_26:
.L_main_27:
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
    j .L_global_exit
.L_global_exit:
    lw ra, 12(sp)
    lw s0, 8(sp)
    addi sp, sp, 16
    jr ra
    .size global, .-global

    .section .note.GNU-stack,"",@progbits
