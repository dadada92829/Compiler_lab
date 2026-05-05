    .option nopic
    .data
    .align 2
    .globl g
g:
    .word 0
    .align 2
    .globl h
h:
    .word 0
    .align 2
    .globl f
f:
    .word 0
    .align 2
    .globl e
e:
    .word 0
    .text
    .align 1
    .globl EightWhile
    .type EightWhile, @function
EightWhile:
    addi sp, sp, -240
    sw ra, 236(sp)
    sw s0, 232(sp)
    addi s0, sp, 240
.L_EightWhile_0:
    li t0, 0
    sw t0, -12(s0)
.L_EightWhile_1:
    li t0, 5
    sw t0, -12(s0)
.L_EightWhile_2:
    li t0, 0
    sw t0, -16(s0)
.L_EightWhile_3:
    li t0, 0
    sw t0, -20(s0)
.L_EightWhile_4:
    li t0, 6
    sw t0, -16(s0)
.L_EightWhile_5:
    li t0, 7
    sw t0, -20(s0)
.L_EightWhile_6:
    li t0, 0
    sw t0, -24(s0)
.L_EightWhile_7:
    li t0, 10
    sw t0, -24(s0)
.L_EightWhile_8:
    lw t0, -12(s0)
    li t1, 20
    slt t2, t0, t1
    sw t2, -28(s0)
.L_EightWhile_9:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_EightWhile_10:
    lw t0, -32(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -36(s0)
.L_EightWhile_11:
    lw t0, -36(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -40(s0)
.L_EightWhile_12:
    lw t0, -40(s0)
    bne t0, zero, .L_EightWhile_14
.L_EightWhile_13:
    j .L_EightWhile_101
.L_EightWhile_14:
    lw t0, -12(s0)
    addi t2, t0, 3
    sw t2, -44(s0)
.L_EightWhile_15:
    lw t0, -44(s0)
    sw t0, -12(s0)
.L_EightWhile_16:
    lw t0, -16(s0)
    li t1, 10
    slt t2, t0, t1
    sw t2, -48(s0)
.L_EightWhile_17:
    lw t0, -48(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -52(s0)
.L_EightWhile_18:
    lw t0, -52(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -56(s0)
.L_EightWhile_19:
    lw t0, -56(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -60(s0)
.L_EightWhile_20:
    lw t0, -60(s0)
    bne t0, zero, .L_EightWhile_22
.L_EightWhile_21:
    j .L_EightWhile_97
.L_EightWhile_22:
    lw t0, -16(s0)
    addi t2, t0, 1
    sw t2, -64(s0)
.L_EightWhile_23:
    lw t0, -64(s0)
    sw t0, -16(s0)
.L_EightWhile_24:
    lw t0, -20(s0)
    li t1, 7
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -68(s0)
.L_EightWhile_25:
    lw t0, -68(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -72(s0)
.L_EightWhile_26:
    lw t0, -72(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -76(s0)
.L_EightWhile_27:
    lw t0, -76(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -80(s0)
.L_EightWhile_28:
    lw t0, -80(s0)
    bne t0, zero, .L_EightWhile_30
.L_EightWhile_29:
    j .L_EightWhile_93
.L_EightWhile_30:
    lw t0, -20(s0)
    addi t2, t0, -1
    sw t2, -84(s0)
.L_EightWhile_31:
    lw t0, -84(s0)
    sw t0, -20(s0)
.L_EightWhile_32:
    lw t0, -24(s0)
    li t1, 20
    slt t2, t0, t1
    sw t2, -88(s0)
.L_EightWhile_33:
    lw t0, -88(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -92(s0)
.L_EightWhile_34:
    lw t0, -92(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -96(s0)
.L_EightWhile_35:
    lw t0, -96(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -100(s0)
.L_EightWhile_36:
    lw t0, -100(s0)
    bne t0, zero, .L_EightWhile_38
.L_EightWhile_37:
    j .L_EightWhile_89
.L_EightWhile_38:
    lw t0, -24(s0)
    addi t2, t0, 3
    sw t2, -104(s0)
.L_EightWhile_39:
    lw t0, -104(s0)
    sw t0, -24(s0)
.L_EightWhile_40:
    la t6, e
    lw t0, 0(t6)
    li t1, 1
    slt t2, t1, t0
    sw t2, -108(s0)
.L_EightWhile_41:
    lw t0, -108(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -112(s0)
.L_EightWhile_42:
    lw t0, -112(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -116(s0)
.L_EightWhile_43:
    lw t0, -116(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -120(s0)
.L_EightWhile_44:
    lw t0, -120(s0)
    bne t0, zero, .L_EightWhile_46
.L_EightWhile_45:
    j .L_EightWhile_85
.L_EightWhile_46:
    la t6, e
    lw t0, 0(t6)
    addi t2, t0, -1
    sw t2, -124(s0)
.L_EightWhile_47:
    lw t0, -124(s0)
    la t6, e
    sw t0, 0(t6)
.L_EightWhile_48:
    la t6, f
    lw t0, 0(t6)
    li t1, 2
    slt t2, t1, t0
    sw t2, -128(s0)
.L_EightWhile_49:
    lw t0, -128(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -132(s0)
.L_EightWhile_50:
    lw t0, -132(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -136(s0)
.L_EightWhile_51:
    lw t0, -136(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -140(s0)
.L_EightWhile_52:
    lw t0, -140(s0)
    bne t0, zero, .L_EightWhile_54
.L_EightWhile_53:
    j .L_EightWhile_81
.L_EightWhile_54:
    la t6, f
    lw t0, 0(t6)
    addi t2, t0, -2
    sw t2, -144(s0)
.L_EightWhile_55:
    lw t0, -144(s0)
    la t6, f
    sw t0, 0(t6)
.L_EightWhile_56:
    la t6, g
    lw t0, 0(t6)
    li t1, 3
    slt t2, t0, t1
    sw t2, -148(s0)
.L_EightWhile_57:
    lw t0, -148(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -152(s0)
.L_EightWhile_58:
    lw t0, -152(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -156(s0)
.L_EightWhile_59:
    lw t0, -156(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -160(s0)
.L_EightWhile_60:
    lw t0, -160(s0)
    bne t0, zero, .L_EightWhile_62
.L_EightWhile_61:
    j .L_EightWhile_77
.L_EightWhile_62:
    la t6, g
    lw t0, 0(t6)
    addi t2, t0, 10
    sw t2, -164(s0)
.L_EightWhile_63:
    lw t0, -164(s0)
    la t6, g
    sw t0, 0(t6)
.L_EightWhile_64:
    la t6, h
    lw t0, 0(t6)
    li t1, 10
    slt t2, t0, t1
    sw t2, -168(s0)
.L_EightWhile_65:
    lw t0, -168(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -172(s0)
.L_EightWhile_66:
    lw t0, -172(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -176(s0)
.L_EightWhile_67:
    lw t0, -176(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -180(s0)
.L_EightWhile_68:
    lw t0, -180(s0)
    bne t0, zero, .L_EightWhile_70
.L_EightWhile_69:
    j .L_EightWhile_73
.L_EightWhile_70:
    la t6, h
    lw t0, 0(t6)
    addi t2, t0, 8
    sw t2, -184(s0)
.L_EightWhile_71:
    lw t0, -184(s0)
    la t6, h
    sw t0, 0(t6)
.L_EightWhile_72:
    j .L_EightWhile_64
.L_EightWhile_73:
.L_EightWhile_74:
    la t6, h
    lw t0, 0(t6)
    addi t2, t0, -1
    sw t2, -188(s0)
.L_EightWhile_75:
    lw t0, -188(s0)
    la t6, h
    sw t0, 0(t6)
.L_EightWhile_76:
    j .L_EightWhile_56
.L_EightWhile_77:
.L_EightWhile_78:
    la t6, g
    lw t0, 0(t6)
    addi t2, t0, -8
    sw t2, -192(s0)
.L_EightWhile_79:
    lw t0, -192(s0)
    la t6, g
    sw t0, 0(t6)
.L_EightWhile_80:
    j .L_EightWhile_48
.L_EightWhile_81:
.L_EightWhile_82:
    la t6, f
    lw t0, 0(t6)
    addi t2, t0, 1
    sw t2, -196(s0)
.L_EightWhile_83:
    lw t0, -196(s0)
    la t6, f
    sw t0, 0(t6)
.L_EightWhile_84:
    j .L_EightWhile_40
.L_EightWhile_85:
.L_EightWhile_86:
    la t6, e
    lw t0, 0(t6)
    addi t2, t0, 1
    sw t2, -200(s0)
.L_EightWhile_87:
    lw t0, -200(s0)
    la t6, e
    sw t0, 0(t6)
.L_EightWhile_88:
    j .L_EightWhile_32
.L_EightWhile_89:
.L_EightWhile_90:
    lw t0, -24(s0)
    addi t2, t0, -1
    sw t2, -204(s0)
.L_EightWhile_91:
    lw t0, -204(s0)
    sw t0, -24(s0)
.L_EightWhile_92:
    j .L_EightWhile_24
.L_EightWhile_93:
.L_EightWhile_94:
    lw t0, -20(s0)
    addi t2, t0, 1
    sw t2, -208(s0)
.L_EightWhile_95:
    lw t0, -208(s0)
    sw t0, -20(s0)
.L_EightWhile_96:
    j .L_EightWhile_16
.L_EightWhile_97:
.L_EightWhile_98:
    lw t0, -16(s0)
    addi t2, t0, -2
    sw t2, -212(s0)
.L_EightWhile_99:
    lw t0, -212(s0)
    sw t0, -16(s0)
.L_EightWhile_100:
    j .L_EightWhile_8
.L_EightWhile_101:
.L_EightWhile_102:
    lw t0, -16(s0)
    lw t1, -24(s0)
    add t2, t0, t1
    sw t2, -216(s0)
.L_EightWhile_103:
    lw t0, -12(s0)
    lw t1, -216(s0)
    add t2, t0, t1
    sw t2, -220(s0)
.L_EightWhile_104:
    lw t0, -220(s0)
    lw t1, -20(s0)
    add t2, t0, t1
    sw t2, -224(s0)
.L_EightWhile_105:
    la t6, e
    lw t0, 0(t6)
    lw t1, -24(s0)
    add t2, t0, t1
    sw t2, -228(s0)
.L_EightWhile_106:
    lw t0, -228(s0)
    la t6, g
    lw t1, 0(t6)
    sub t2, t0, t1
    sw t2, -232(s0)
.L_EightWhile_107:
    lw t0, -232(s0)
    la t6, h
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -236(s0)
.L_EightWhile_108:
    lw t0, -224(s0)
    lw t1, -236(s0)
    sub t2, t0, t1
    sw t2, -240(s0)
.L_EightWhile_109:
    lw a0, -240(s0)
    j .L_EightWhile_exit
.L_EightWhile_exit:
    lw ra, 236(sp)
    lw s0, 232(sp)
    addi sp, sp, 240
    jr ra
    .size EightWhile, .-EightWhile

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
    li t0, 1
    la t6, g
    sw t0, 0(t6)
.L_main_2:
    li t0, 2
    la t6, h
    sw t0, 0(t6)
.L_main_3:
    li t0, 4
    la t6, e
    sw t0, 0(t6)
.L_main_4:
    li t0, 6
    la t6, f
    sw t0, 0(t6)
.L_main_5:
    call EightWhile
    sw a0, -12(s0)
.L_main_6:
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
    li t0, 0
    la t6, g
    sw t0, 0(t6)
.L_global_1:
    li t0, 0
    la t6, h
    sw t0, 0(t6)
.L_global_2:
    li t0, 0
    la t6, f
    sw t0, 0(t6)
.L_global_3:
    li t0, 0
    la t6, e
    sw t0, 0(t6)
.L_global_4:
    j .L_global_exit
.L_global_exit:
    lw ra, 12(sp)
    lw s0, 8(sp)
    addi sp, sp, 16
    jr ra
    .size global, .-global

    .section .note.GNU-stack,"",@progbits
