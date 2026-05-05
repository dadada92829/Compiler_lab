    .option nopic
    .data
    .align 2
    .globl array
array:
    .zero 440
    .align 2
    .globl n
n:
    .word 0
    .text
    .align 1
    .globl init
    .type init, @function
init:
    addi sp, sp, -64
    sw ra, 60(sp)
    sw s0, 56(sp)
    addi s0, sp, 64
    sw a0, -12(s0)
.L_init_0:
    li t0, 1
    sw t0, -16(s0)
.L_init_1:
    lw t0, -12(s0)
    lw t1, -12(s0)
    mul t2, t0, t1
    sw t2, -20(s0)
.L_init_2:
    lw t0, -20(s0)
    addi t2, t0, 1
    sw t2, -24(s0)
.L_init_3:
    lw t0, -16(s0)
    lw t1, -24(s0)
    slt t2, t1, t0
    xori t2, t2, 1
    sw t2, -28(s0)
.L_init_4:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_init_5:
    lw t0, -32(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -36(s0)
.L_init_6:
    lw t0, -36(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -40(s0)
.L_init_7:
    lw t0, -40(s0)
    bne t0, zero, .L_init_9
.L_init_8:
    j .L_init_15
.L_init_9:
    li t0, 0
    sw t0, -44(s0)
.L_init_10:
    lw t0, -44(s0)
    lw t1, -16(s0)
    add t2, t0, t1
    sw t2, -48(s0)
.L_init_11:
    li t2, -1
    la t6, array
    lw t0, -48(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_init_12:
    lw t0, -16(s0)
    addi t2, t0, 1
    sw t2, -52(s0)
.L_init_13:
    lw t0, -52(s0)
    sw t0, -16(s0)
.L_init_14:
    j .L_init_1
.L_init_15:
.L_init_16:
    j .L_init_exit
.L_init_exit:
    lw ra, 60(sp)
    lw s0, 56(sp)
    addi sp, sp, 64
    jr ra
    .size init, .-init

    .text
    .align 1
    .globl findfa
    .type findfa, @function
findfa:
    addi sp, sp, -80
    sw ra, 76(sp)
    sw s0, 72(sp)
    addi s0, sp, 80
    sw a0, -12(s0)
.L_findfa_0:
    li t0, 0
    sw t0, -16(s0)
.L_findfa_1:
    lw t0, -16(s0)
    lw t1, -12(s0)
    add t2, t0, t1
    sw t2, -20(s0)
.L_findfa_2:
    la t6, array
    lw t0, -20(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -24(s0)
.L_findfa_3:
    lw t0, -24(s0)
    lw t1, -12(s0)
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -28(s0)
.L_findfa_4:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_findfa_5:
    lw t0, -32(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -36(s0)
.L_findfa_6:
    lw t0, -36(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -40(s0)
.L_findfa_7:
    lw t0, -40(s0)
    bne t0, zero, .L_findfa_9
.L_findfa_8:
    j .L_findfa_11
.L_findfa_9:
    lw a0, -12(s0)
    j .L_findfa_exit
.L_findfa_10:
    j .L_findfa_23
.L_findfa_11:
.L_findfa_12:
    li t0, 0
    sw t0, -44(s0)
.L_findfa_13:
    lw t0, -44(s0)
    lw t1, -12(s0)
    add t2, t0, t1
    sw t2, -48(s0)
.L_findfa_14:
    la t6, array
    lw t0, -48(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -52(s0)
.L_findfa_15:
    lw a0, -52(s0)
    call findfa
    sw a0, -56(s0)
.L_findfa_16:
    li t0, 0
    sw t0, -60(s0)
.L_findfa_17:
    lw t0, -60(s0)
    lw t1, -12(s0)
    add t2, t0, t1
    sw t2, -64(s0)
.L_findfa_18:
    lw t2, -56(s0)
    la t6, array
    lw t0, -64(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_findfa_19:
    li t0, 0
    sw t0, -68(s0)
.L_findfa_20:
    lw t0, -68(s0)
    lw t1, -12(s0)
    add t2, t0, t1
    sw t2, -72(s0)
.L_findfa_21:
    la t6, array
    lw t0, -72(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -76(s0)
.L_findfa_22:
    lw a0, -76(s0)
    j .L_findfa_exit
.L_findfa_23:
.L_findfa_24:
    li a0, 0
    j .L_findfa_exit
.L_findfa_exit:
    lw ra, 76(sp)
    lw s0, 72(sp)
    addi sp, sp, 80
    jr ra
    .size findfa, .-findfa

    .text
    .align 1
    .globl mmerge
    .type mmerge, @function
mmerge:
    addi sp, sp, -64
    sw ra, 60(sp)
    sw s0, 56(sp)
    addi s0, sp, 64
    sw a0, -12(s0)
    sw a1, -16(s0)
.L_mmerge_0:
    lw a0, -12(s0)
    call findfa
    sw a0, -20(s0)
.L_mmerge_1:
    lw t0, -20(s0)
    sw t0, -24(s0)
.L_mmerge_2:
    lw a0, -16(s0)
    call findfa
    sw a0, -28(s0)
.L_mmerge_3:
    lw t0, -28(s0)
    sw t0, -32(s0)
.L_mmerge_4:
    lw t0, -24(s0)
    lw t1, -32(s0)
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -36(s0)
.L_mmerge_5:
    lw t0, -36(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -40(s0)
.L_mmerge_6:
    lw t0, -40(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -44(s0)
.L_mmerge_7:
    lw t0, -44(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -48(s0)
.L_mmerge_8:
    lw t0, -48(s0)
    bne t0, zero, .L_mmerge_10
.L_mmerge_9:
    j .L_mmerge_13
.L_mmerge_10:
    li t0, 0
    sw t0, -52(s0)
.L_mmerge_11:
    lw t0, -52(s0)
    lw t1, -24(s0)
    add t2, t0, t1
    sw t2, -56(s0)
.L_mmerge_12:
    lw t2, -32(s0)
    la t6, array
    lw t0, -56(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_mmerge_13:
.L_mmerge_14:
    j .L_mmerge_exit
.L_mmerge_exit:
    lw ra, 60(sp)
    lw s0, 56(sp)
    addi sp, sp, 64
    jr ra
    .size mmerge, .-mmerge

    .text
    .align 1
    .globl main
    .type main, @function
main:
    addi sp, sp, -464
    sw ra, 460(sp)
    sw s0, 456(sp)
    addi s0, sp, 464
.L_main_0:
    call global
.L_main_1:
    li t0, 0
    sw t0, -12(s0)
.L_main_2:
    li t0, 0
    sw t0, -16(s0)
.L_main_3:
    li t0, 0
    sw t0, -20(s0)
.L_main_4:
    li t0, 0
    sw t0, -24(s0)
.L_main_5:
    li t0, 1
    sw t0, -12(s0)
.L_main_6:
    lw t0, -12(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -28(s0)
.L_main_7:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_main_8:
    lw t0, -32(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -36(s0)
.L_main_9:
    lw t0, -36(s0)
    bne t0, zero, .L_main_11
.L_main_10:
    j .L_main_193
.L_main_11:
    lw t0, -12(s0)
    addi t2, t0, -1
    sw t2, -40(s0)
.L_main_12:
    lw t0, -40(s0)
    sw t0, -12(s0)
.L_main_13:
    li t0, 4
    la t6, n
    sw t0, 0(t6)
.L_main_14:
    li t0, 10
    sw t0, -16(s0)
.L_main_15:
    li t0, 0
    sw t0, -44(s0)
.L_main_16:
    li t0, 0
    sw t0, -48(s0)
.L_main_17:
    la t6, n
    lw a0, 0(t6)
    call init
.L_main_18:
    la t6, n
    lw t0, 0(t6)
    la t6, n
    lw t1, 0(t6)
    mul t2, t0, t1
    sw t2, -52(s0)
.L_main_19:
    lw t0, -52(s0)
    addi t2, t0, 1
    sw t2, -56(s0)
.L_main_20:
    lw t0, -56(s0)
    sw t0, -60(s0)
.L_main_21:
    lw t0, -44(s0)
    lw t1, -16(s0)
    slt t2, t0, t1
    sw t2, -64(s0)
.L_main_22:
    lw t0, -64(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -68(s0)
.L_main_23:
    lw t0, -68(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -72(s0)
.L_main_24:
    lw t0, -72(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -76(s0)
.L_main_25:
    lw t0, -76(s0)
    bne t0, zero, .L_main_27
.L_main_26:
    j .L_main_181
.L_main_27:
    call getint
    sw a0, -80(s0)
.L_main_28:
    lw t0, -80(s0)
    sw t0, -20(s0)
.L_main_29:
    call getint
    sw a0, -84(s0)
.L_main_30:
    lw t0, -84(s0)
    sw t0, -24(s0)
.L_main_31:
    lw t0, -48(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -88(s0)
.L_main_32:
    lw t0, -88(s0)
    li t1, 0
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -92(s0)
.L_main_33:
    lw t0, -92(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -96(s0)
.L_main_34:
    lw t0, -96(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -100(s0)
.L_main_35:
    lw t0, -100(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -104(s0)
.L_main_36:
    lw t0, -104(s0)
    bne t0, zero, .L_main_38
.L_main_37:
    j .L_main_177
.L_main_38:
    lw t0, -20(s0)
    addi t2, t0, -1
    sw t2, -108(s0)
.L_main_39:
    la t6, n
    lw t0, 0(t6)
    lw t1, -108(s0)
    mul t2, t0, t1
    sw t2, -112(s0)
.L_main_40:
    lw t0, -112(s0)
    lw t1, -24(s0)
    add t2, t0, t1
    sw t2, -116(s0)
.L_main_41:
    lw t0, -116(s0)
    sw t0, -120(s0)
.L_main_42:
    li t0, 0
    sw t0, -124(s0)
.L_main_43:
    lw t0, -124(s0)
    lw t1, -120(s0)
    add t2, t0, t1
    sw t2, -128(s0)
.L_main_44:
    lw t2, -120(s0)
    la t6, array
    lw t0, -128(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_main_45:
    lw t0, -20(s0)
    li t1, 1
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -132(s0)
.L_main_46:
    lw t0, -132(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -136(s0)
.L_main_47:
    lw t0, -136(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -140(s0)
.L_main_48:
    lw t0, -140(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -144(s0)
.L_main_49:
    lw t0, -144(s0)
    bne t0, zero, .L_main_51
.L_main_50:
    j .L_main_53
.L_main_51:
    li t2, 0
    la t6, array
    sw t2, 0(t6)
.L_main_52:
    lw a0, -120(s0)
    li a1, 0
    call mmerge
.L_main_53:
.L_main_54:
    lw t0, -20(s0)
    la t6, n
    lw t1, 0(t6)
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -148(s0)
.L_main_55:
    lw t0, -148(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -152(s0)
.L_main_56:
    lw t0, -152(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -156(s0)
.L_main_57:
    lw t0, -156(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -160(s0)
.L_main_58:
    lw t0, -160(s0)
    bne t0, zero, .L_main_60
.L_main_59:
    j .L_main_64
.L_main_60:
    li t0, 0
    sw t0, -164(s0)
.L_main_61:
    lw t0, -164(s0)
    lw t1, -60(s0)
    add t2, t0, t1
    sw t2, -168(s0)
.L_main_62:
    lw t2, -60(s0)
    la t6, array
    lw t0, -168(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_main_63:
    lw a0, -120(s0)
    lw a1, -60(s0)
    call mmerge
.L_main_64:
.L_main_65:
    lw t0, -24(s0)
    la t6, n
    lw t1, 0(t6)
    slt t2, t0, t1
    sw t2, -172(s0)
.L_main_66:
    lw t0, -172(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -176(s0)
.L_main_67:
    li t0, 0
    sw t0, -180(s0)
.L_main_68:
    lw t0, -176(s0)
    bne t0, zero, .L_main_70
.L_main_69:
    j .L_main_77
.L_main_70:
    lw t0, -120(s0)
    addi t2, t0, 1
    sw t2, -184(s0)
.L_main_71:
    li t0, 0
    sw t0, -188(s0)
.L_main_72:
    lw t0, -188(s0)
    lw t1, -184(s0)
    add t2, t0, t1
    sw t2, -192(s0)
.L_main_73:
    la t6, array
    lw t0, -192(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -196(s0)
.L_main_74:
    lw t0, -196(s0)
    li t1, -1
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -200(s0)
.L_main_75:
    lw t0, -200(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -204(s0)
.L_main_76:
    lw t0, -204(s0)
    sw t0, -180(s0)
.L_main_77:
.L_main_78:
    lw t0, -180(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -208(s0)
.L_main_79:
    lw t0, -208(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -212(s0)
.L_main_80:
    lw t0, -212(s0)
    bne t0, zero, .L_main_82
.L_main_81:
    j .L_main_84
.L_main_82:
    lw t0, -120(s0)
    addi t2, t0, 1
    sw t2, -216(s0)
.L_main_83:
    lw a0, -120(s0)
    lw a1, -216(s0)
    call mmerge
.L_main_84:
.L_main_85:
    lw t0, -24(s0)
    li t1, 1
    slt t2, t1, t0
    sw t2, -220(s0)
.L_main_86:
    lw t0, -220(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -224(s0)
.L_main_87:
    li t0, 0
    sw t0, -228(s0)
.L_main_88:
    lw t0, -224(s0)
    bne t0, zero, .L_main_90
.L_main_89:
    j .L_main_97
.L_main_90:
    lw t0, -120(s0)
    addi t2, t0, -1
    sw t2, -232(s0)
.L_main_91:
    li t0, 0
    sw t0, -236(s0)
.L_main_92:
    lw t0, -236(s0)
    lw t1, -232(s0)
    add t2, t0, t1
    sw t2, -240(s0)
.L_main_93:
    la t6, array
    lw t0, -240(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -244(s0)
.L_main_94:
    lw t0, -244(s0)
    li t1, -1
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -248(s0)
.L_main_95:
    lw t0, -248(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -252(s0)
.L_main_96:
    lw t0, -252(s0)
    sw t0, -228(s0)
.L_main_97:
.L_main_98:
    lw t0, -228(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -256(s0)
.L_main_99:
    lw t0, -256(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -260(s0)
.L_main_100:
    lw t0, -260(s0)
    bne t0, zero, .L_main_102
.L_main_101:
    j .L_main_104
.L_main_102:
    lw t0, -120(s0)
    addi t2, t0, -1
    sw t2, -264(s0)
.L_main_103:
    lw a0, -120(s0)
    lw a1, -264(s0)
    call mmerge
.L_main_104:
.L_main_105:
    lw t0, -20(s0)
    la t6, n
    lw t1, 0(t6)
    slt t2, t0, t1
    sw t2, -268(s0)
.L_main_106:
    lw t0, -268(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -272(s0)
.L_main_107:
    li t0, 0
    sw t0, -276(s0)
.L_main_108:
    lw t0, -272(s0)
    bne t0, zero, .L_main_110
.L_main_109:
    j .L_main_117
.L_main_110:
    lw t0, -120(s0)
    la t6, n
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -280(s0)
.L_main_111:
    li t0, 0
    sw t0, -284(s0)
.L_main_112:
    lw t0, -284(s0)
    lw t1, -280(s0)
    add t2, t0, t1
    sw t2, -288(s0)
.L_main_113:
    la t6, array
    lw t0, -288(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -292(s0)
.L_main_114:
    lw t0, -292(s0)
    li t1, -1
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -296(s0)
.L_main_115:
    lw t0, -296(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -300(s0)
.L_main_116:
    lw t0, -300(s0)
    sw t0, -276(s0)
.L_main_117:
.L_main_118:
    lw t0, -276(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -304(s0)
.L_main_119:
    lw t0, -304(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -308(s0)
.L_main_120:
    lw t0, -308(s0)
    bne t0, zero, .L_main_122
.L_main_121:
    j .L_main_124
.L_main_122:
    lw t0, -120(s0)
    la t6, n
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -312(s0)
.L_main_123:
    lw a0, -120(s0)
    lw a1, -312(s0)
    call mmerge
.L_main_124:
.L_main_125:
    lw t0, -20(s0)
    li t1, 1
    slt t2, t1, t0
    sw t2, -316(s0)
.L_main_126:
    lw t0, -316(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -320(s0)
.L_main_127:
    li t0, 0
    sw t0, -324(s0)
.L_main_128:
    lw t0, -320(s0)
    bne t0, zero, .L_main_130
.L_main_129:
    j .L_main_137
.L_main_130:
    lw t0, -120(s0)
    la t6, n
    lw t1, 0(t6)
    sub t2, t0, t1
    sw t2, -328(s0)
.L_main_131:
    li t0, 0
    sw t0, -332(s0)
.L_main_132:
    lw t0, -332(s0)
    lw t1, -328(s0)
    add t2, t0, t1
    sw t2, -336(s0)
.L_main_133:
    la t6, array
    lw t0, -336(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -340(s0)
.L_main_134:
    lw t0, -340(s0)
    li t1, -1
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -344(s0)
.L_main_135:
    lw t0, -344(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -348(s0)
.L_main_136:
    lw t0, -348(s0)
    sw t0, -324(s0)
.L_main_137:
.L_main_138:
    lw t0, -324(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -352(s0)
.L_main_139:
    lw t0, -352(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -356(s0)
.L_main_140:
    lw t0, -356(s0)
    bne t0, zero, .L_main_142
.L_main_141:
    j .L_main_144
.L_main_142:
    lw t0, -120(s0)
    la t6, n
    lw t1, 0(t6)
    sub t2, t0, t1
    sw t2, -360(s0)
.L_main_143:
    lw a0, -120(s0)
    lw a1, -360(s0)
    call mmerge
.L_main_144:
.L_main_145:
    la t6, array
    lw t0, 0(t6)
    sw t0, -364(s0)
.L_main_146:
    lw t0, -364(s0)
    li t1, -1
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -368(s0)
.L_main_147:
    lw t0, -368(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -372(s0)
.L_main_148:
    li t0, 0
    sw t0, -376(s0)
.L_main_149:
    lw t0, -372(s0)
    bne t0, zero, .L_main_151
.L_main_150:
    j .L_main_166
.L_main_151:
    li t0, 0
    sw t0, -380(s0)
.L_main_152:
    lw t0, -380(s0)
    lw t1, -60(s0)
    add t2, t0, t1
    sw t2, -384(s0)
.L_main_153:
    la t6, array
    lw t0, -384(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -388(s0)
.L_main_154:
    lw t0, -388(s0)
    li t1, -1
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -392(s0)
.L_main_155:
    lw t0, -392(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -396(s0)
.L_main_156:
    li t0, 0
    sw t0, -400(s0)
.L_main_157:
    lw t0, -396(s0)
    bne t0, zero, .L_main_159
.L_main_158:
    j .L_main_164
.L_main_159:
    li a0, 0
    call findfa
    sw a0, -404(s0)
.L_main_160:
    lw a0, -60(s0)
    call findfa
    sw a0, -408(s0)
.L_main_161:
    lw t0, -404(s0)
    lw t1, -408(s0)
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -412(s0)
.L_main_162:
    lw t0, -412(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -416(s0)
.L_main_163:
    lw t0, -416(s0)
    sw t0, -400(s0)
.L_main_164:
.L_main_165:
    lw t0, -400(s0)
    sw t0, -376(s0)
.L_main_166:
.L_main_167:
    lw t0, -376(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -420(s0)
.L_main_168:
    lw t0, -420(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -424(s0)
.L_main_169:
    lw t0, -424(s0)
    bne t0, zero, .L_main_171
.L_main_170:
    j .L_main_176
.L_main_171:
    li t0, 1
    sw t0, -48(s0)
.L_main_172:
    lw t0, -44(s0)
    addi t2, t0, 1
    sw t2, -428(s0)
.L_main_173:
    lw t0, -428(s0)
    sw t0, -432(s0)
.L_main_174:
    lw a0, -432(s0)
    call putint
.L_main_175:
    li a0, 10
    call putch
.L_main_176:
.L_main_177:
.L_main_178:
    lw t0, -44(s0)
    addi t2, t0, 1
    sw t2, -436(s0)
.L_main_179:
    lw t0, -436(s0)
    sw t0, -44(s0)
.L_main_180:
    j .L_main_21
.L_main_181:
.L_main_182:
    lw t0, -48(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -440(s0)
.L_main_183:
    lw t0, -440(s0)
    li t1, 0
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -444(s0)
.L_main_184:
    lw t0, -444(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -448(s0)
.L_main_185:
    lw t0, -448(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -452(s0)
.L_main_186:
    lw t0, -452(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -456(s0)
.L_main_187:
    lw t0, -456(s0)
    bne t0, zero, .L_main_189
.L_main_188:
    j .L_main_191
.L_main_189:
    li a0, -1
    call putint
.L_main_190:
    li a0, 10
    call putch
.L_main_191:
.L_main_192:
    j .L_main_6
.L_main_193:
.L_main_194:
    li a0, 0
    j .L_main_exit
.L_main_exit:
    lw ra, 460(sp)
    lw s0, 456(sp)
    addi sp, sp, 464
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
    la t6, n
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
