    .option nopic
    .text
    .align 1
    .globl main
    .type main, @function
main:
    addi sp, sp, -208
    sw ra, 204(sp)
    sw s0, 200(sp)
    addi s0, sp, 208
.L_main_0:
    call global
.L_main_1:
    li t0, 2
    sw t0, -12(s0)
.L_main_2:
    addi t0, s0, -96
    sw t0, -16(s0)
.L_main_3:
    li t2, 1
    lw t6, -16(s0)
    sw t2, 0(t6)
.L_main_4:
    li t2, 2
    lw t6, -16(s0)
    addi t6, t6, 4
    sw t2, 0(t6)
.L_main_5:
    li t2, 0
    lw t6, -16(s0)
    addi t6, t6, 8
    sw t2, 0(t6)
.L_main_6:
    li t2, 0
    lw t6, -16(s0)
    addi t6, t6, 12
    sw t2, 0(t6)
.L_main_7:
    li t2, 0
    lw t6, -16(s0)
    addi t6, t6, 16
    sw t2, 0(t6)
.L_main_8:
    li t2, 0
    lw t6, -16(s0)
    addi t6, t6, 20
    sw t2, 0(t6)
.L_main_9:
    li t2, 0
    lw t6, -16(s0)
    addi t6, t6, 24
    sw t2, 0(t6)
.L_main_10:
    li t2, 0
    lw t6, -16(s0)
    addi t6, t6, 28
    sw t2, 0(t6)
.L_main_11:
    li t2, 0
    lw t6, -16(s0)
    addi t6, t6, 32
    sw t2, 0(t6)
.L_main_12:
    li t2, 0
    lw t6, -16(s0)
    addi t6, t6, 36
    sw t2, 0(t6)
.L_main_13:
    li t2, 0
    lw t6, -16(s0)
    addi t6, t6, 40
    sw t2, 0(t6)
.L_main_14:
    li t2, 0
    lw t6, -16(s0)
    addi t6, t6, 44
    sw t2, 0(t6)
.L_main_15:
    li t2, 0
    lw t6, -16(s0)
    addi t6, t6, 48
    sw t2, 0(t6)
.L_main_16:
    li t2, 0
    lw t6, -16(s0)
    addi t6, t6, 52
    sw t2, 0(t6)
.L_main_17:
    li t2, 0
    lw t6, -16(s0)
    addi t6, t6, 56
    sw t2, 0(t6)
.L_main_18:
    li t2, 0
    lw t6, -16(s0)
    addi t6, t6, 60
    sw t2, 0(t6)
.L_main_19:
    li t2, 0
    lw t6, -16(s0)
    addi t6, t6, 64
    sw t2, 0(t6)
.L_main_20:
    li t2, 0
    lw t6, -16(s0)
    addi t6, t6, 68
    sw t2, 0(t6)
.L_main_21:
    li t2, 0
    lw t6, -16(s0)
    addi t6, t6, 72
    sw t2, 0(t6)
.L_main_22:
    li t2, 0
    lw t6, -16(s0)
    addi t6, t6, 76
    sw t2, 0(t6)
.L_main_23:
    li t0, 0
    sw t0, -100(s0)
.L_main_24:
    lw t0, -12(s0)
    li t1, 20
    slt t2, t0, t1
    sw t2, -104(s0)
.L_main_25:
    lw t0, -104(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -108(s0)
.L_main_26:
    lw t0, -108(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -112(s0)
.L_main_27:
    lw t0, -112(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -116(s0)
.L_main_28:
    lw t0, -116(s0)
    bne t0, zero, .L_main_30
.L_main_29:
    j .L_main_59
.L_main_30:
    li t0, 0
    sw t0, -120(s0)
.L_main_31:
    lw t0, -120(s0)
    lw t1, -12(s0)
    add t2, t0, t1
    sw t2, -124(s0)
.L_main_32:
    lw t6, -16(s0)
    lw t0, -124(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -128(s0)
.L_main_33:
    lw t0, -12(s0)
    addi t2, t0, -1
    sw t2, -132(s0)
.L_main_34:
    li t0, 0
    sw t0, -136(s0)
.L_main_35:
    lw t0, -136(s0)
    lw t1, -132(s0)
    add t2, t0, t1
    sw t2, -140(s0)
.L_main_36:
    lw t6, -16(s0)
    lw t0, -140(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -144(s0)
.L_main_37:
    lw t0, -128(s0)
    lw t1, -144(s0)
    add t2, t0, t1
    sw t2, -148(s0)
.L_main_38:
    lw t0, -12(s0)
    addi t2, t0, -2
    sw t2, -152(s0)
.L_main_39:
    li t0, 0
    sw t0, -156(s0)
.L_main_40:
    lw t0, -156(s0)
    lw t1, -152(s0)
    add t2, t0, t1
    sw t2, -160(s0)
.L_main_41:
    lw t6, -16(s0)
    lw t0, -160(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -164(s0)
.L_main_42:
    lw t0, -148(s0)
    lw t1, -164(s0)
    add t2, t0, t1
    sw t2, -168(s0)
.L_main_43:
    li t0, 0
    sw t0, -172(s0)
.L_main_44:
    lw t0, -172(s0)
    lw t1, -12(s0)
    add t2, t0, t1
    sw t2, -176(s0)
.L_main_45:
    lw t2, -168(s0)
    lw t6, -16(s0)
    lw t0, -176(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_main_46:
    li t0, 0
    sw t0, -180(s0)
.L_main_47:
    lw t0, -180(s0)
    lw t1, -12(s0)
    add t2, t0, t1
    sw t2, -184(s0)
.L_main_48:
    lw t6, -16(s0)
    lw t0, -184(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -188(s0)
.L_main_49:
    lw t0, -100(s0)
    lw t1, -188(s0)
    add t2, t0, t1
    sw t2, -192(s0)
.L_main_50:
    lw t0, -192(s0)
    sw t0, -100(s0)
.L_main_51:
    li t0, 0
    sw t0, -196(s0)
.L_main_52:
    lw t0, -196(s0)
    lw t1, -12(s0)
    add t2, t0, t1
    sw t2, -200(s0)
.L_main_53:
    lw t6, -16(s0)
    lw t0, -200(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -204(s0)
.L_main_54:
    lw a0, -204(s0)
    call putint
.L_main_55:
    li a0, 10
    call putch
.L_main_56:
    lw t0, -12(s0)
    addi t2, t0, 1
    sw t2, -208(s0)
.L_main_57:
    lw t0, -208(s0)
    sw t0, -12(s0)
.L_main_58:
    j .L_main_24
.L_main_59:
.L_main_60:
    lw a0, -100(s0)
    j .L_main_exit
.L_main_exit:
    lw ra, 204(sp)
    lw s0, 200(sp)
    addi sp, sp, 208
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
