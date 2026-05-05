    .option nopic
    .text
    .align 1
    .globl ifWhile
    .type ifWhile, @function
ifWhile:
    addi sp, sp, -96
    sw ra, 92(sp)
    sw s0, 88(sp)
    addi s0, sp, 96
.L_ifWhile_0:
    li t0, 0
    sw t0, -12(s0)
.L_ifWhile_1:
    li t0, 0
    sw t0, -12(s0)
.L_ifWhile_2:
    li t0, 0
    sw t0, -16(s0)
.L_ifWhile_3:
    li t0, 3
    sw t0, -16(s0)
.L_ifWhile_4:
    lw t0, -12(s0)
    li t1, 5
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -20(s0)
.L_ifWhile_5:
    lw t0, -20(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -24(s0)
.L_ifWhile_6:
    lw t0, -24(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -28(s0)
.L_ifWhile_7:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_ifWhile_8:
    lw t0, -32(s0)
    bne t0, zero, .L_ifWhile_10
.L_ifWhile_9:
    j .L_ifWhile_23
.L_ifWhile_10:
    lw t0, -16(s0)
    li t1, 2
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -36(s0)
.L_ifWhile_11:
    lw t0, -36(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -40(s0)
.L_ifWhile_12:
    lw t0, -40(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -44(s0)
.L_ifWhile_13:
    lw t0, -44(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -48(s0)
.L_ifWhile_14:
    lw t0, -48(s0)
    bne t0, zero, .L_ifWhile_16
.L_ifWhile_15:
    j .L_ifWhile_19
.L_ifWhile_16:
    lw t0, -16(s0)
    addi t2, t0, 2
    sw t2, -52(s0)
.L_ifWhile_17:
    lw t0, -52(s0)
    sw t0, -16(s0)
.L_ifWhile_18:
    j .L_ifWhile_10
.L_ifWhile_19:
.L_ifWhile_20:
    lw t0, -16(s0)
    addi t2, t0, 25
    sw t2, -56(s0)
.L_ifWhile_21:
    lw t0, -56(s0)
    sw t0, -16(s0)
.L_ifWhile_22:
    j .L_ifWhile_37
.L_ifWhile_23:
.L_ifWhile_24:
    lw t0, -12(s0)
    li t1, 5
    slt t2, t0, t1
    sw t2, -60(s0)
.L_ifWhile_25:
    lw t0, -60(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -64(s0)
.L_ifWhile_26:
    lw t0, -64(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -68(s0)
.L_ifWhile_27:
    lw t0, -68(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -72(s0)
.L_ifWhile_28:
    lw t0, -72(s0)
    bne t0, zero, .L_ifWhile_30
.L_ifWhile_29:
    j .L_ifWhile_36
.L_ifWhile_30:
    li t0, 2
    sw t0, -76(s0)
.L_ifWhile_31:
    lw t0, -16(s0)
    lw t1, -76(s0)
    mul t2, t0, t1
    sw t2, -80(s0)
.L_ifWhile_32:
    lw t0, -80(s0)
    sw t0, -16(s0)
.L_ifWhile_33:
    lw t0, -12(s0)
    addi t2, t0, 1
    sw t2, -84(s0)
.L_ifWhile_34:
    lw t0, -84(s0)
    sw t0, -12(s0)
.L_ifWhile_35:
    j .L_ifWhile_24
.L_ifWhile_36:
.L_ifWhile_37:
.L_ifWhile_38:
    lw a0, -16(s0)
    j .L_ifWhile_exit
.L_ifWhile_exit:
    lw ra, 92(sp)
    lw s0, 88(sp)
    addi sp, sp, 96
    jr ra
    .size ifWhile, .-ifWhile

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
    call ifWhile
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
