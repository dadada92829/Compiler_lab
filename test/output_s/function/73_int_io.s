    .option nopic
    .text
    .align 1
    .globl my_getint
    .type my_getint, @function
my_getint:
    addi sp, sp, -112
    sw ra, 108(sp)
    sw s0, 104(sp)
    addi s0, sp, 112
.L_my_getint_0:
    li t0, 0
    sw t0, -12(s0)
.L_my_getint_1:
    li t0, 0
    sw t0, -16(s0)
.L_my_getint_2:
    li t0, 1
    bne t0, zero, .L_my_getint_4
.L_my_getint_3:
    j .L_my_getint_26
.L_my_getint_4:
    call getch
    sw a0, -20(s0)
.L_my_getint_5:
    lw t0, -20(s0)
    addi t2, t0, -48
    sw t2, -24(s0)
.L_my_getint_6:
    lw t0, -24(s0)
    sw t0, -16(s0)
.L_my_getint_7:
    lw t0, -16(s0)
    li t1, 0
    slt t2, t0, t1
    sw t2, -28(s0)
.L_my_getint_8:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_my_getint_9:
    lw t0, -32(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -36(s0)
.L_my_getint_10:
    li t0, 1
    sw t0, -40(s0)
.L_my_getint_11:
    lw t0, -36(s0)
    bne t0, zero, .L_my_getint_16
.L_my_getint_12:
    lw t0, -16(s0)
    li t1, 9
    slt t2, t1, t0
    sw t2, -44(s0)
.L_my_getint_13:
    lw t0, -44(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -48(s0)
.L_my_getint_14:
    lw t0, -48(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -52(s0)
.L_my_getint_15:
    lw t0, -52(s0)
    sw t0, -40(s0)
.L_my_getint_16:
.L_my_getint_17:
    lw t0, -40(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -56(s0)
.L_my_getint_18:
    lw t0, -56(s0)
    bne t0, zero, .L_my_getint_20
.L_my_getint_19:
    j .L_my_getint_22
.L_my_getint_20:
    j .L_my_getint_2
.L_my_getint_21:
    j .L_my_getint_24
.L_my_getint_22:
.L_my_getint_23:
    j .L_my_getint_26
.L_my_getint_24:
.L_my_getint_25:
    j .L_my_getint_2
.L_my_getint_26:
.L_my_getint_27:
    lw t0, -16(s0)
    sw t0, -12(s0)
.L_my_getint_28:
    li t0, 1
    bne t0, zero, .L_my_getint_30
.L_my_getint_29:
    j .L_my_getint_55
.L_my_getint_30:
    call getch
    sw a0, -60(s0)
.L_my_getint_31:
    lw t0, -60(s0)
    addi t2, t0, -48
    sw t2, -64(s0)
.L_my_getint_32:
    lw t0, -64(s0)
    sw t0, -16(s0)
.L_my_getint_33:
    lw t0, -16(s0)
    li t1, 0
    slt t2, t0, t1
    xori t2, t2, 1
    sw t2, -68(s0)
.L_my_getint_34:
    lw t0, -68(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -72(s0)
.L_my_getint_35:
    li t0, 0
    sw t0, -76(s0)
.L_my_getint_36:
    lw t0, -72(s0)
    bne t0, zero, .L_my_getint_38
.L_my_getint_37:
    j .L_my_getint_41
.L_my_getint_38:
    lw t0, -16(s0)
    li t1, 9
    slt t2, t1, t0
    xori t2, t2, 1
    sw t2, -80(s0)
.L_my_getint_39:
    lw t0, -80(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -84(s0)
.L_my_getint_40:
    lw t0, -84(s0)
    sw t0, -76(s0)
.L_my_getint_41:
.L_my_getint_42:
    lw t0, -76(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -88(s0)
.L_my_getint_43:
    lw t0, -88(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -92(s0)
.L_my_getint_44:
    lw t0, -92(s0)
    bne t0, zero, .L_my_getint_46
.L_my_getint_45:
    j .L_my_getint_51
.L_my_getint_46:
    li t0, 10
    sw t0, -96(s0)
.L_my_getint_47:
    lw t0, -12(s0)
    lw t1, -96(s0)
    mul t2, t0, t1
    sw t2, -100(s0)
.L_my_getint_48:
    lw t0, -100(s0)
    lw t1, -16(s0)
    add t2, t0, t1
    sw t2, -104(s0)
.L_my_getint_49:
    lw t0, -104(s0)
    sw t0, -12(s0)
.L_my_getint_50:
    j .L_my_getint_53
.L_my_getint_51:
.L_my_getint_52:
    j .L_my_getint_55
.L_my_getint_53:
.L_my_getint_54:
    j .L_my_getint_28
.L_my_getint_55:
.L_my_getint_56:
    lw a0, -12(s0)
    j .L_my_getint_exit
.L_my_getint_exit:
    lw ra, 108(sp)
    lw s0, 104(sp)
    addi sp, sp, 112
    jr ra
    .size my_getint, .-my_getint

    .text
    .align 1
    .globl my_putint
    .type my_putint, @function
my_putint:
    addi sp, sp, -176
    sw ra, 172(sp)
    sw s0, 168(sp)
    addi s0, sp, 176
    sw a0, -12(s0)
.L_my_putint_0:
    addi t0, s0, -80
    sw t0, -16(s0)
.L_my_putint_1:
    li t0, 0
    sw t0, -84(s0)
.L_my_putint_2:
    lw t0, -12(s0)
    li t1, 0
    slt t2, t1, t0
    sw t2, -88(s0)
.L_my_putint_3:
    lw t0, -88(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -92(s0)
.L_my_putint_4:
    lw t0, -92(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -96(s0)
.L_my_putint_5:
    lw t0, -96(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -100(s0)
.L_my_putint_6:
    lw t0, -100(s0)
    bne t0, zero, .L_my_putint_8
.L_my_putint_7:
    j .L_my_putint_20
.L_my_putint_8:
    li t0, 10
    sw t0, -104(s0)
.L_my_putint_9:
    lw t0, -12(s0)
    lw t1, -104(s0)
    rem t2, t0, t1
    sw t2, -108(s0)
.L_my_putint_10:
    lw t0, -108(s0)
    addi t2, t0, 48
    sw t2, -112(s0)
.L_my_putint_11:
    li t0, 0
    sw t0, -116(s0)
.L_my_putint_12:
    lw t0, -116(s0)
    lw t1, -84(s0)
    add t2, t0, t1
    sw t2, -120(s0)
.L_my_putint_13:
    lw t2, -112(s0)
    lw t6, -16(s0)
    lw t0, -120(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_my_putint_14:
    li t0, 10
    sw t0, -124(s0)
.L_my_putint_15:
    lw t0, -12(s0)
    lw t1, -124(s0)
    div t2, t0, t1
    sw t2, -128(s0)
.L_my_putint_16:
    lw t0, -128(s0)
    sw t0, -12(s0)
.L_my_putint_17:
    lw t0, -84(s0)
    addi t2, t0, 1
    sw t2, -132(s0)
.L_my_putint_18:
    lw t0, -132(s0)
    sw t0, -84(s0)
.L_my_putint_19:
    j .L_my_putint_2
.L_my_putint_20:
.L_my_putint_21:
    lw t0, -84(s0)
    li t1, 0
    slt t2, t1, t0
    sw t2, -136(s0)
.L_my_putint_22:
    lw t0, -136(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -140(s0)
.L_my_putint_23:
    lw t0, -140(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -144(s0)
.L_my_putint_24:
    lw t0, -144(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -148(s0)
.L_my_putint_25:
    lw t0, -148(s0)
    bne t0, zero, .L_my_putint_27
.L_my_putint_26:
    j .L_my_putint_34
.L_my_putint_27:
    lw t0, -84(s0)
    addi t2, t0, -1
    sw t2, -152(s0)
.L_my_putint_28:
    lw t0, -152(s0)
    sw t0, -84(s0)
.L_my_putint_29:
    li t0, 0
    sw t0, -156(s0)
.L_my_putint_30:
    lw t0, -156(s0)
    lw t1, -84(s0)
    add t2, t0, t1
    sw t2, -160(s0)
.L_my_putint_31:
    lw t6, -16(s0)
    lw t0, -160(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -164(s0)
.L_my_putint_32:
    lw a0, -164(s0)
    call putch
.L_my_putint_33:
    j .L_my_putint_21
.L_my_putint_34:
.L_my_putint_35:
    j .L_my_putint_exit
.L_my_putint_exit:
    lw ra, 172(sp)
    lw s0, 168(sp)
    addi sp, sp, 176
    jr ra
    .size my_putint, .-my_putint

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
    call my_getint
    sw a0, -12(s0)
.L_main_2:
    lw t0, -12(s0)
    sw t0, -16(s0)
.L_main_3:
    lw t0, -16(s0)
    li t1, 0
    slt t2, t1, t0
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
    j .L_main_16
.L_main_9:
    call my_getint
    sw a0, -36(s0)
.L_main_10:
    lw t0, -36(s0)
    sw t0, -40(s0)
.L_main_11:
    lw a0, -40(s0)
    call my_putint
.L_main_12:
    li a0, 10
    call putch
.L_main_13:
    lw t0, -16(s0)
    addi t2, t0, -1
    sw t2, -44(s0)
.L_main_14:
    lw t0, -44(s0)
    sw t0, -16(s0)
.L_main_15:
    j .L_main_3
.L_main_16:
.L_main_17:
    li a0, 0
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
