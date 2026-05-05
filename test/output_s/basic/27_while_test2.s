    .option nopic
    .text
    .align 1
    .globl FourWhile
    .type FourWhile, @function
FourWhile:
    addi sp, sp, -128
    sw ra, 124(sp)
    sw s0, 120(sp)
    addi s0, sp, 128
.L_FourWhile_0:
    li t0, 0
    sw t0, -12(s0)
.L_FourWhile_1:
    li t0, 5
    sw t0, -12(s0)
.L_FourWhile_2:
    li t0, 0
    sw t0, -16(s0)
.L_FourWhile_3:
    li t0, 0
    sw t0, -20(s0)
.L_FourWhile_4:
    li t0, 6
    sw t0, -16(s0)
.L_FourWhile_5:
    li t0, 7
    sw t0, -20(s0)
.L_FourWhile_6:
    li t0, 0
    sw t0, -24(s0)
.L_FourWhile_7:
    li t0, 10
    sw t0, -24(s0)
.L_FourWhile_8:
    lw t0, -12(s0)
    li t1, 20
    slt t2, t0, t1
    sw t2, -28(s0)
.L_FourWhile_9:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_FourWhile_10:
    lw t0, -32(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -36(s0)
.L_FourWhile_11:
    lw t0, -36(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -40(s0)
.L_FourWhile_12:
    lw t0, -40(s0)
    bne t0, zero, .L_FourWhile_14
.L_FourWhile_13:
    j .L_FourWhile_53
.L_FourWhile_14:
    lw t0, -12(s0)
    addi t2, t0, 3
    sw t2, -44(s0)
.L_FourWhile_15:
    lw t0, -44(s0)
    sw t0, -12(s0)
.L_FourWhile_16:
    lw t0, -16(s0)
    li t1, 10
    slt t2, t0, t1
    sw t2, -48(s0)
.L_FourWhile_17:
    lw t0, -48(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -52(s0)
.L_FourWhile_18:
    lw t0, -52(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -56(s0)
.L_FourWhile_19:
    lw t0, -56(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -60(s0)
.L_FourWhile_20:
    lw t0, -60(s0)
    bne t0, zero, .L_FourWhile_22
.L_FourWhile_21:
    j .L_FourWhile_49
.L_FourWhile_22:
    lw t0, -16(s0)
    addi t2, t0, 1
    sw t2, -64(s0)
.L_FourWhile_23:
    lw t0, -64(s0)
    sw t0, -16(s0)
.L_FourWhile_24:
    lw t0, -20(s0)
    li t1, 7
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -68(s0)
.L_FourWhile_25:
    lw t0, -68(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -72(s0)
.L_FourWhile_26:
    lw t0, -72(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -76(s0)
.L_FourWhile_27:
    lw t0, -76(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -80(s0)
.L_FourWhile_28:
    lw t0, -80(s0)
    bne t0, zero, .L_FourWhile_30
.L_FourWhile_29:
    j .L_FourWhile_45
.L_FourWhile_30:
    lw t0, -20(s0)
    addi t2, t0, -1
    sw t2, -84(s0)
.L_FourWhile_31:
    lw t0, -84(s0)
    sw t0, -20(s0)
.L_FourWhile_32:
    lw t0, -24(s0)
    li t1, 20
    slt t2, t0, t1
    sw t2, -88(s0)
.L_FourWhile_33:
    lw t0, -88(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -92(s0)
.L_FourWhile_34:
    lw t0, -92(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -96(s0)
.L_FourWhile_35:
    lw t0, -96(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -100(s0)
.L_FourWhile_36:
    lw t0, -100(s0)
    bne t0, zero, .L_FourWhile_38
.L_FourWhile_37:
    j .L_FourWhile_41
.L_FourWhile_38:
    lw t0, -24(s0)
    addi t2, t0, 3
    sw t2, -104(s0)
.L_FourWhile_39:
    lw t0, -104(s0)
    sw t0, -24(s0)
.L_FourWhile_40:
    j .L_FourWhile_32
.L_FourWhile_41:
.L_FourWhile_42:
    lw t0, -24(s0)
    addi t2, t0, -1
    sw t2, -108(s0)
.L_FourWhile_43:
    lw t0, -108(s0)
    sw t0, -24(s0)
.L_FourWhile_44:
    j .L_FourWhile_24
.L_FourWhile_45:
.L_FourWhile_46:
    lw t0, -20(s0)
    addi t2, t0, 1
    sw t2, -112(s0)
.L_FourWhile_47:
    lw t0, -112(s0)
    sw t0, -20(s0)
.L_FourWhile_48:
    j .L_FourWhile_16
.L_FourWhile_49:
.L_FourWhile_50:
    lw t0, -16(s0)
    addi t2, t0, -2
    sw t2, -116(s0)
.L_FourWhile_51:
    lw t0, -116(s0)
    sw t0, -16(s0)
.L_FourWhile_52:
    j .L_FourWhile_8
.L_FourWhile_53:
.L_FourWhile_54:
    lw t0, -16(s0)
    lw t1, -24(s0)
    add t2, t0, t1
    sw t2, -120(s0)
.L_FourWhile_55:
    lw t0, -12(s0)
    lw t1, -120(s0)
    add t2, t0, t1
    sw t2, -124(s0)
.L_FourWhile_56:
    lw t0, -124(s0)
    lw t1, -20(s0)
    add t2, t0, t1
    sw t2, -128(s0)
.L_FourWhile_57:
    lw a0, -128(s0)
    j .L_FourWhile_exit
.L_FourWhile_exit:
    lw ra, 124(sp)
    lw s0, 120(sp)
    addi sp, sp, 128
    jr ra
    .size FourWhile, .-FourWhile

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
    call FourWhile
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
