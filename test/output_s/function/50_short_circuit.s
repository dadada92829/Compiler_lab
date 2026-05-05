    .option nopic
    .data
    .align 2
    .globl g
g:
    .word 0
    .text
    .align 1
    .globl func
    .type func, @function
func:
    addi sp, sp, -16
    sw ra, 12(sp)
    sw s0, 8(sp)
    addi s0, sp, 16
    sw a0, -12(s0)
.L_func_0:
    la t6, g
    lw t0, 0(t6)
    lw t1, -12(s0)
    add t2, t0, t1
    sw t2, -16(s0)
.L_func_1:
    lw t0, -16(s0)
    la t6, g
    sw t0, 0(t6)
.L_func_2:
    la t6, g
    lw a0, 0(t6)
    call putint
.L_func_3:
    la t6, g
    lw a0, 0(t6)
    j .L_func_exit
.L_func_exit:
    lw ra, 12(sp)
    lw s0, 8(sp)
    addi sp, sp, 16
    jr ra
    .size func, .-func

    .text
    .align 1
    .globl main
    .type main, @function
main:
    addi sp, sp, -192
    sw ra, 188(sp)
    sw s0, 184(sp)
    addi s0, sp, 192
.L_main_0:
    call global
.L_main_1:
    li t0, 0
    sw t0, -12(s0)
.L_main_2:
    call getint
    sw a0, -16(s0)
.L_main_3:
    lw t0, -16(s0)
    sw t0, -12(s0)
.L_main_4:
    lw t0, -12(s0)
    li t1, 10
    slt t2, t1, t0
    sw t2, -20(s0)
.L_main_5:
    lw t0, -20(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -24(s0)
.L_main_6:
    li t0, 0
    sw t0, -28(s0)
.L_main_7:
    lw t0, -24(s0)
    bne t0, zero, .L_main_9
.L_main_8:
    j .L_main_12
.L_main_9:
    lw a0, -12(s0)
    call func
    sw a0, -32(s0)
.L_main_10:
    lw t0, -32(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -36(s0)
.L_main_11:
    lw t0, -36(s0)
    sw t0, -28(s0)
.L_main_12:
.L_main_13:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -40(s0)
.L_main_14:
    lw t0, -40(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -44(s0)
.L_main_15:
    lw t0, -44(s0)
    bne t0, zero, .L_main_17
.L_main_16:
    j .L_main_19
.L_main_17:
    li t0, 1
    sw t0, -12(s0)
.L_main_18:
    j .L_main_21
.L_main_19:
.L_main_20:
    li t0, 0
    sw t0, -12(s0)
.L_main_21:
.L_main_22:
    call getint
    sw a0, -48(s0)
.L_main_23:
    lw t0, -48(s0)
    sw t0, -12(s0)
.L_main_24:
    lw t0, -12(s0)
    li t1, 11
    slt t2, t1, t0
    sw t2, -52(s0)
.L_main_25:
    lw t0, -52(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -56(s0)
.L_main_26:
    li t0, 0
    sw t0, -60(s0)
.L_main_27:
    lw t0, -56(s0)
    bne t0, zero, .L_main_29
.L_main_28:
    j .L_main_32
.L_main_29:
    lw a0, -12(s0)
    call func
    sw a0, -64(s0)
.L_main_30:
    lw t0, -64(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -68(s0)
.L_main_31:
    lw t0, -68(s0)
    sw t0, -60(s0)
.L_main_32:
.L_main_33:
    lw t0, -60(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -72(s0)
.L_main_34:
    lw t0, -72(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -76(s0)
.L_main_35:
    lw t0, -76(s0)
    bne t0, zero, .L_main_37
.L_main_36:
    j .L_main_39
.L_main_37:
    li t0, 1
    sw t0, -12(s0)
.L_main_38:
    j .L_main_41
.L_main_39:
.L_main_40:
    li t0, 0
    sw t0, -12(s0)
.L_main_41:
.L_main_42:
    call getint
    sw a0, -80(s0)
.L_main_43:
    lw t0, -80(s0)
    sw t0, -12(s0)
.L_main_44:
    lw t0, -12(s0)
    li t1, 99
    slt t2, t1, t0
    xori t2, t2, 1
    sw t2, -84(s0)
.L_main_45:
    lw t0, -84(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -88(s0)
.L_main_46:
    lw t0, -88(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -92(s0)
.L_main_47:
    li t0, 1
    sw t0, -96(s0)
.L_main_48:
    lw t0, -92(s0)
    bne t0, zero, .L_main_53
.L_main_49:
    lw a0, -12(s0)
    call func
    sw a0, -100(s0)
.L_main_50:
    lw t0, -100(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -104(s0)
.L_main_51:
    lw t0, -104(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -108(s0)
.L_main_52:
    lw t0, -108(s0)
    sw t0, -96(s0)
.L_main_53:
.L_main_54:
    lw t0, -96(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -112(s0)
.L_main_55:
    lw t0, -112(s0)
    bne t0, zero, .L_main_57
.L_main_56:
    j .L_main_59
.L_main_57:
    li t0, 1
    sw t0, -12(s0)
.L_main_58:
    j .L_main_61
.L_main_59:
.L_main_60:
    li t0, 0
    sw t0, -12(s0)
.L_main_61:
.L_main_62:
    call getint
    sw a0, -116(s0)
.L_main_63:
    lw t0, -116(s0)
    sw t0, -12(s0)
.L_main_64:
    lw t0, -12(s0)
    li t1, 100
    slt t2, t1, t0
    xori t2, t2, 1
    sw t2, -120(s0)
.L_main_65:
    lw t0, -120(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -124(s0)
.L_main_66:
    lw t0, -124(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -128(s0)
.L_main_67:
    li t0, 1
    sw t0, -132(s0)
.L_main_68:
    lw t0, -128(s0)
    bne t0, zero, .L_main_73
.L_main_69:
    lw a0, -12(s0)
    call func
    sw a0, -136(s0)
.L_main_70:
    lw t0, -136(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -140(s0)
.L_main_71:
    lw t0, -140(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -144(s0)
.L_main_72:
    lw t0, -144(s0)
    sw t0, -132(s0)
.L_main_73:
.L_main_74:
    lw t0, -132(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -148(s0)
.L_main_75:
    lw t0, -148(s0)
    bne t0, zero, .L_main_77
.L_main_76:
    j .L_main_79
.L_main_77:
    li t0, 1
    sw t0, -12(s0)
.L_main_78:
    j .L_main_81
.L_main_79:
.L_main_80:
    li t0, 0
    sw t0, -12(s0)
.L_main_81:
.L_main_82:
    li a0, 99
    call func
    sw a0, -152(s0)
.L_main_83:
    lw t0, -152(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -156(s0)
.L_main_84:
    lw t0, -156(s0)
    li t1, 0
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -160(s0)
.L_main_85:
    lw t0, -160(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -164(s0)
.L_main_86:
    li t0, 0
    sw t0, -168(s0)
.L_main_87:
    lw t0, -164(s0)
    bne t0, zero, .L_main_89
.L_main_88:
    j .L_main_92
.L_main_89:
    li a0, 100
    call func
    sw a0, -172(s0)
.L_main_90:
    lw t0, -172(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -176(s0)
.L_main_91:
    lw t0, -176(s0)
    sw t0, -168(s0)
.L_main_92:
.L_main_93:
    lw t0, -168(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -180(s0)
.L_main_94:
    lw t0, -180(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -184(s0)
.L_main_95:
    lw t0, -184(s0)
    bne t0, zero, .L_main_97
.L_main_96:
    j .L_main_99
.L_main_97:
    li t0, 1
    sw t0, -12(s0)
.L_main_98:
    j .L_main_101
.L_main_99:
.L_main_100:
    li t0, 0
    sw t0, -12(s0)
.L_main_101:
.L_main_102:
    li a0, 0
    j .L_main_exit
.L_main_exit:
    lw ra, 188(sp)
    lw s0, 184(sp)
    addi sp, sp, 192
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
    j .L_global_exit
.L_global_exit:
    lw ra, 12(sp)
    lw s0, 8(sp)
    addi sp, sp, 16
    jr ra
    .size global, .-global

    .section .note.GNU-stack,"",@progbits
