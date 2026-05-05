    .option nopic
    .text
    .align 1
    .globl doubleWhile
    .type doubleWhile, @function
doubleWhile:
    addi sp, sp, -64
    sw ra, 60(sp)
    sw s0, 56(sp)
    addi s0, sp, 64
.L_doubleWhile_0:
    li t0, 0
    sw t0, -12(s0)
.L_doubleWhile_1:
    li t0, 5
    sw t0, -12(s0)
.L_doubleWhile_2:
    li t0, 0
    sw t0, -16(s0)
.L_doubleWhile_3:
    li t0, 7
    sw t0, -16(s0)
.L_doubleWhile_4:
    lw t0, -12(s0)
    li t1, 100
    slt t2, t0, t1
    sw t2, -20(s0)
.L_doubleWhile_5:
    lw t0, -20(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -24(s0)
.L_doubleWhile_6:
    lw t0, -24(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -28(s0)
.L_doubleWhile_7:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_doubleWhile_8:
    lw t0, -32(s0)
    bne t0, zero, .L_doubleWhile_10
.L_doubleWhile_9:
    j .L_doubleWhile_25
.L_doubleWhile_10:
    lw t0, -12(s0)
    addi t2, t0, 30
    sw t2, -36(s0)
.L_doubleWhile_11:
    lw t0, -36(s0)
    sw t0, -12(s0)
.L_doubleWhile_12:
    lw t0, -16(s0)
    li t1, 100
    slt t2, t0, t1
    sw t2, -40(s0)
.L_doubleWhile_13:
    lw t0, -40(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -44(s0)
.L_doubleWhile_14:
    lw t0, -44(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -48(s0)
.L_doubleWhile_15:
    lw t0, -48(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -52(s0)
.L_doubleWhile_16:
    lw t0, -52(s0)
    bne t0, zero, .L_doubleWhile_18
.L_doubleWhile_17:
    j .L_doubleWhile_21
.L_doubleWhile_18:
    lw t0, -16(s0)
    addi t2, t0, 6
    sw t2, -56(s0)
.L_doubleWhile_19:
    lw t0, -56(s0)
    sw t0, -16(s0)
.L_doubleWhile_20:
    j .L_doubleWhile_12
.L_doubleWhile_21:
.L_doubleWhile_22:
    lw t0, -16(s0)
    addi t2, t0, -100
    sw t2, -60(s0)
.L_doubleWhile_23:
    lw t0, -60(s0)
    sw t0, -16(s0)
.L_doubleWhile_24:
    j .L_doubleWhile_4
.L_doubleWhile_25:
.L_doubleWhile_26:
    lw a0, -16(s0)
    j .L_doubleWhile_exit
.L_doubleWhile_exit:
    lw ra, 60(sp)
    lw s0, 56(sp)
    addi sp, sp, 64
    jr ra
    .size doubleWhile, .-doubleWhile

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
    call doubleWhile
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
