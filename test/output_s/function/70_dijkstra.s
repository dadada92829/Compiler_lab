    .option nopic
    .data
    .align 2
    .globl e
e:
    .zero 1024
    .align 2
    .globl book
book:
    .zero 64
    .align 2
    .globl dis
dis:
    .zero 64
    .align 2
    .globl n
n:
    .word 0
    .align 2
    .globl m
m:
    .word 0
    .align 2
    .globl v1
v1:
    .word 0
    .align 2
    .globl v2
v2:
    .word 0
    .align 2
    .globl w
w:
    .word 0
    .text
    .align 1
    .globl Dijkstra
    .type Dijkstra, @function
Dijkstra:
    addi sp, sp, -384
    sw ra, 380(sp)
    sw s0, 376(sp)
    addi s0, sp, 384
.L_Dijkstra_0:
    li t0, 0
    sw t0, -12(s0)
.L_Dijkstra_1:
    li t0, 0
    sw t0, -16(s0)
.L_Dijkstra_2:
    li t0, 1
    sw t0, -12(s0)
.L_Dijkstra_3:
    lw t0, -12(s0)
    la t6, n
    lw t1, 0(t6)
    slt t2, t1, t0
    xori t2, t2, 1
    sw t2, -20(s0)
.L_Dijkstra_4:
    lw t0, -20(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -24(s0)
.L_Dijkstra_5:
    lw t0, -24(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -28(s0)
.L_Dijkstra_6:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_Dijkstra_7:
    lw t0, -32(s0)
    bne t0, zero, .L_Dijkstra_9
.L_Dijkstra_8:
    j .L_Dijkstra_21
.L_Dijkstra_9:
    li t0, 16
    sw t0, -36(s0)
.L_Dijkstra_10:
    lw t0, -36(s0)
    lw t1, -12(s0)
    add t2, t0, t1
    sw t2, -40(s0)
.L_Dijkstra_11:
    la t6, e
    lw t0, -40(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -44(s0)
.L_Dijkstra_12:
    li t0, 0
    sw t0, -48(s0)
.L_Dijkstra_13:
    lw t0, -48(s0)
    lw t1, -12(s0)
    add t2, t0, t1
    sw t2, -52(s0)
.L_Dijkstra_14:
    lw t2, -44(s0)
    la t6, dis
    lw t0, -52(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_Dijkstra_15:
    li t0, 0
    sw t0, -56(s0)
.L_Dijkstra_16:
    lw t0, -56(s0)
    lw t1, -12(s0)
    add t2, t0, t1
    sw t2, -60(s0)
.L_Dijkstra_17:
    li t2, 0
    la t6, book
    lw t0, -60(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_Dijkstra_18:
    lw t0, -12(s0)
    addi t2, t0, 1
    sw t2, -64(s0)
.L_Dijkstra_19:
    lw t0, -64(s0)
    sw t0, -12(s0)
.L_Dijkstra_20:
    j .L_Dijkstra_3
.L_Dijkstra_21:
.L_Dijkstra_22:
    li t2, 1
    la t6, book
    addi t6, t6, 4
    sw t2, 0(t6)
.L_Dijkstra_23:
    li t0, 1
    sw t0, -12(s0)
.L_Dijkstra_24:
    la t6, n
    lw t0, 0(t6)
    addi t2, t0, -1
    sw t2, -68(s0)
.L_Dijkstra_25:
    lw t0, -12(s0)
    lw t1, -68(s0)
    slt t2, t1, t0
    xori t2, t2, 1
    sw t2, -72(s0)
.L_Dijkstra_26:
    lw t0, -72(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -76(s0)
.L_Dijkstra_27:
    lw t0, -76(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -80(s0)
.L_Dijkstra_28:
    lw t0, -80(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -84(s0)
.L_Dijkstra_29:
    lw t0, -84(s0)
    bne t0, zero, .L_Dijkstra_31
.L_Dijkstra_30:
    j .L_Dijkstra_132
.L_Dijkstra_31:
    li t0, 65535
    sw t0, -88(s0)
.L_Dijkstra_32:
    li t0, 0
    sw t0, -92(s0)
.L_Dijkstra_33:
    li t0, 1
    sw t0, -96(s0)
.L_Dijkstra_34:
    lw t0, -96(s0)
    la t6, n
    lw t1, 0(t6)
    slt t2, t1, t0
    xori t2, t2, 1
    sw t2, -100(s0)
.L_Dijkstra_35:
    lw t0, -100(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -104(s0)
.L_Dijkstra_36:
    lw t0, -104(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -108(s0)
.L_Dijkstra_37:
    lw t0, -108(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -112(s0)
.L_Dijkstra_38:
    lw t0, -112(s0)
    bne t0, zero, .L_Dijkstra_40
.L_Dijkstra_39:
    j .L_Dijkstra_68
.L_Dijkstra_40:
    li t0, 0
    sw t0, -116(s0)
.L_Dijkstra_41:
    lw t0, -116(s0)
    lw t1, -96(s0)
    add t2, t0, t1
    sw t2, -120(s0)
.L_Dijkstra_42:
    la t6, dis
    lw t0, -120(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -124(s0)
.L_Dijkstra_43:
    lw t0, -88(s0)
    lw t1, -124(s0)
    slt t2, t1, t0
    sw t2, -128(s0)
.L_Dijkstra_44:
    lw t0, -128(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -132(s0)
.L_Dijkstra_45:
    li t0, 0
    sw t0, -136(s0)
.L_Dijkstra_46:
    lw t0, -132(s0)
    bne t0, zero, .L_Dijkstra_48
.L_Dijkstra_47:
    j .L_Dijkstra_54
.L_Dijkstra_48:
    li t0, 0
    sw t0, -140(s0)
.L_Dijkstra_49:
    lw t0, -140(s0)
    lw t1, -96(s0)
    add t2, t0, t1
    sw t2, -144(s0)
.L_Dijkstra_50:
    la t6, book
    lw t0, -144(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -148(s0)
.L_Dijkstra_51:
    lw t0, -148(s0)
    li t1, 0
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -152(s0)
.L_Dijkstra_52:
    lw t0, -152(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -156(s0)
.L_Dijkstra_53:
    lw t0, -156(s0)
    sw t0, -136(s0)
.L_Dijkstra_54:
.L_Dijkstra_55:
    lw t0, -136(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -160(s0)
.L_Dijkstra_56:
    lw t0, -160(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -164(s0)
.L_Dijkstra_57:
    lw t0, -164(s0)
    bne t0, zero, .L_Dijkstra_59
.L_Dijkstra_58:
    j .L_Dijkstra_64
.L_Dijkstra_59:
    li t0, 0
    sw t0, -168(s0)
.L_Dijkstra_60:
    lw t0, -168(s0)
    lw t1, -96(s0)
    add t2, t0, t1
    sw t2, -172(s0)
.L_Dijkstra_61:
    la t6, dis
    lw t0, -172(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -176(s0)
.L_Dijkstra_62:
    lw t0, -176(s0)
    sw t0, -88(s0)
.L_Dijkstra_63:
    lw t0, -96(s0)
    sw t0, -92(s0)
.L_Dijkstra_64:
.L_Dijkstra_65:
    lw t0, -96(s0)
    addi t2, t0, 1
    sw t2, -180(s0)
.L_Dijkstra_66:
    lw t0, -180(s0)
    sw t0, -96(s0)
.L_Dijkstra_67:
    j .L_Dijkstra_34
.L_Dijkstra_68:
.L_Dijkstra_69:
    li t0, 0
    sw t0, -184(s0)
.L_Dijkstra_70:
    lw t0, -184(s0)
    lw t1, -92(s0)
    add t2, t0, t1
    sw t2, -188(s0)
.L_Dijkstra_71:
    li t2, 1
    la t6, book
    lw t0, -188(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_Dijkstra_72:
    li t0, 1
    sw t0, -192(s0)
.L_Dijkstra_73:
    lw t0, -192(s0)
    la t6, n
    lw t1, 0(t6)
    slt t2, t1, t0
    xori t2, t2, 1
    sw t2, -196(s0)
.L_Dijkstra_74:
    lw t0, -196(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -200(s0)
.L_Dijkstra_75:
    lw t0, -200(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -204(s0)
.L_Dijkstra_76:
    lw t0, -204(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -208(s0)
.L_Dijkstra_77:
    lw t0, -208(s0)
    bne t0, zero, .L_Dijkstra_79
.L_Dijkstra_78:
    j .L_Dijkstra_128
.L_Dijkstra_79:
    li t0, 16
    sw t0, -212(s0)
.L_Dijkstra_80:
    lw t0, -92(s0)
    lw t1, -212(s0)
    mul t2, t0, t1
    sw t2, -216(s0)
.L_Dijkstra_81:
    li t0, 0
    sw t0, -220(s0)
.L_Dijkstra_82:
    lw t0, -220(s0)
    lw t1, -216(s0)
    add t2, t0, t1
    sw t2, -224(s0)
.L_Dijkstra_83:
    lw t0, -224(s0)
    lw t1, -192(s0)
    add t2, t0, t1
    sw t2, -228(s0)
.L_Dijkstra_84:
    la t6, e
    lw t0, -228(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -232(s0)
.L_Dijkstra_85:
    lw t0, -232(s0)
    li t1, 65535
    slt t2, t0, t1
    sw t2, -236(s0)
.L_Dijkstra_86:
    lw t0, -236(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -240(s0)
.L_Dijkstra_87:
    lw t0, -240(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -244(s0)
.L_Dijkstra_88:
    lw t0, -244(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -248(s0)
.L_Dijkstra_89:
    lw t0, -248(s0)
    bne t0, zero, .L_Dijkstra_91
.L_Dijkstra_90:
    j .L_Dijkstra_124
.L_Dijkstra_91:
    li t0, 0
    sw t0, -252(s0)
.L_Dijkstra_92:
    lw t0, -252(s0)
    lw t1, -192(s0)
    add t2, t0, t1
    sw t2, -256(s0)
.L_Dijkstra_93:
    la t6, dis
    lw t0, -256(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -260(s0)
.L_Dijkstra_94:
    li t0, 0
    sw t0, -264(s0)
.L_Dijkstra_95:
    lw t0, -264(s0)
    lw t1, -92(s0)
    add t2, t0, t1
    sw t2, -268(s0)
.L_Dijkstra_96:
    la t6, dis
    lw t0, -268(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -272(s0)
.L_Dijkstra_97:
    li t0, 16
    sw t0, -276(s0)
.L_Dijkstra_98:
    lw t0, -92(s0)
    lw t1, -276(s0)
    mul t2, t0, t1
    sw t2, -280(s0)
.L_Dijkstra_99:
    li t0, 0
    sw t0, -284(s0)
.L_Dijkstra_100:
    lw t0, -284(s0)
    lw t1, -280(s0)
    add t2, t0, t1
    sw t2, -288(s0)
.L_Dijkstra_101:
    lw t0, -288(s0)
    lw t1, -192(s0)
    add t2, t0, t1
    sw t2, -292(s0)
.L_Dijkstra_102:
    la t6, e
    lw t0, -292(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -296(s0)
.L_Dijkstra_103:
    lw t0, -272(s0)
    lw t1, -296(s0)
    add t2, t0, t1
    sw t2, -300(s0)
.L_Dijkstra_104:
    lw t0, -260(s0)
    lw t1, -300(s0)
    slt t2, t1, t0
    sw t2, -304(s0)
.L_Dijkstra_105:
    lw t0, -304(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -308(s0)
.L_Dijkstra_106:
    lw t0, -308(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -312(s0)
.L_Dijkstra_107:
    lw t0, -312(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -316(s0)
.L_Dijkstra_108:
    lw t0, -316(s0)
    bne t0, zero, .L_Dijkstra_110
.L_Dijkstra_109:
    j .L_Dijkstra_123
.L_Dijkstra_110:
    li t0, 0
    sw t0, -320(s0)
.L_Dijkstra_111:
    lw t0, -320(s0)
    lw t1, -92(s0)
    add t2, t0, t1
    sw t2, -324(s0)
.L_Dijkstra_112:
    la t6, dis
    lw t0, -324(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -328(s0)
.L_Dijkstra_113:
    li t0, 16
    sw t0, -332(s0)
.L_Dijkstra_114:
    lw t0, -92(s0)
    lw t1, -332(s0)
    mul t2, t0, t1
    sw t2, -336(s0)
.L_Dijkstra_115:
    li t0, 0
    sw t0, -340(s0)
.L_Dijkstra_116:
    lw t0, -340(s0)
    lw t1, -336(s0)
    add t2, t0, t1
    sw t2, -344(s0)
.L_Dijkstra_117:
    lw t0, -344(s0)
    lw t1, -192(s0)
    add t2, t0, t1
    sw t2, -348(s0)
.L_Dijkstra_118:
    la t6, e
    lw t0, -348(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -352(s0)
.L_Dijkstra_119:
    lw t0, -328(s0)
    lw t1, -352(s0)
    add t2, t0, t1
    sw t2, -356(s0)
.L_Dijkstra_120:
    li t0, 0
    sw t0, -360(s0)
.L_Dijkstra_121:
    lw t0, -360(s0)
    lw t1, -192(s0)
    add t2, t0, t1
    sw t2, -364(s0)
.L_Dijkstra_122:
    lw t2, -356(s0)
    la t6, dis
    lw t0, -364(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_Dijkstra_123:
.L_Dijkstra_124:
.L_Dijkstra_125:
    lw t0, -192(s0)
    addi t2, t0, 1
    sw t2, -368(s0)
.L_Dijkstra_126:
    lw t0, -368(s0)
    sw t0, -192(s0)
.L_Dijkstra_127:
    j .L_Dijkstra_73
.L_Dijkstra_128:
.L_Dijkstra_129:
    lw t0, -12(s0)
    addi t2, t0, 1
    sw t2, -372(s0)
.L_Dijkstra_130:
    lw t0, -372(s0)
    sw t0, -12(s0)
.L_Dijkstra_131:
    j .L_Dijkstra_24
.L_Dijkstra_132:
.L_Dijkstra_133:
    j .L_Dijkstra_exit
.L_Dijkstra_exit:
    lw ra, 380(sp)
    lw s0, 376(sp)
    addi sp, sp, 384
    jr ra
    .size Dijkstra, .-Dijkstra

    .text
    .align 1
    .globl main
    .type main, @function
main:
    addi sp, sp, -224
    sw ra, 220(sp)
    sw s0, 216(sp)
    addi s0, sp, 224
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
    la t6, n
    sw t0, 0(t6)
.L_main_4:
    call getint
    sw a0, -20(s0)
.L_main_5:
    lw t0, -20(s0)
    la t6, m
    sw t0, 0(t6)
.L_main_6:
    li t0, 1
    sw t0, -12(s0)
.L_main_7:
    lw t0, -12(s0)
    la t6, n
    lw t1, 0(t6)
    slt t2, t1, t0
    xori t2, t2, 1
    sw t2, -24(s0)
.L_main_8:
    lw t0, -24(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -28(s0)
.L_main_9:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_main_10:
    lw t0, -32(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -36(s0)
.L_main_11:
    lw t0, -36(s0)
    bne t0, zero, .L_main_13
.L_main_12:
    j .L_main_48
.L_main_13:
    li t0, 1
    sw t0, -40(s0)
.L_main_14:
    lw t0, -40(s0)
    la t6, n
    lw t1, 0(t6)
    slt t2, t1, t0
    xori t2, t2, 1
    sw t2, -44(s0)
.L_main_15:
    lw t0, -44(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -48(s0)
.L_main_16:
    lw t0, -48(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -52(s0)
.L_main_17:
    lw t0, -52(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -56(s0)
.L_main_18:
    lw t0, -56(s0)
    bne t0, zero, .L_main_20
.L_main_19:
    j .L_main_44
.L_main_20:
    lw t0, -12(s0)
    lw t1, -40(s0)
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -60(s0)
.L_main_21:
    lw t0, -60(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
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
    bne t0, zero, .L_main_26
.L_main_25:
    j .L_main_33
.L_main_26:
    li t0, 16
    sw t0, -76(s0)
.L_main_27:
    lw t0, -12(s0)
    lw t1, -76(s0)
    mul t2, t0, t1
    sw t2, -80(s0)
.L_main_28:
    li t0, 0
    sw t0, -84(s0)
.L_main_29:
    lw t0, -84(s0)
    lw t1, -80(s0)
    add t2, t0, t1
    sw t2, -88(s0)
.L_main_30:
    lw t0, -88(s0)
    lw t1, -40(s0)
    add t2, t0, t1
    sw t2, -92(s0)
.L_main_31:
    li t2, 0
    la t6, e
    lw t0, -92(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_main_32:
    j .L_main_40
.L_main_33:
.L_main_34:
    li t0, 16
    sw t0, -96(s0)
.L_main_35:
    lw t0, -12(s0)
    lw t1, -96(s0)
    mul t2, t0, t1
    sw t2, -100(s0)
.L_main_36:
    li t0, 0
    sw t0, -104(s0)
.L_main_37:
    lw t0, -104(s0)
    lw t1, -100(s0)
    add t2, t0, t1
    sw t2, -108(s0)
.L_main_38:
    lw t0, -108(s0)
    lw t1, -40(s0)
    add t2, t0, t1
    sw t2, -112(s0)
.L_main_39:
    li t2, 65535
    la t6, e
    lw t0, -112(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_main_40:
.L_main_41:
    lw t0, -40(s0)
    addi t2, t0, 1
    sw t2, -116(s0)
.L_main_42:
    lw t0, -116(s0)
    sw t0, -40(s0)
.L_main_43:
    j .L_main_14
.L_main_44:
.L_main_45:
    lw t0, -12(s0)
    addi t2, t0, 1
    sw t2, -120(s0)
.L_main_46:
    lw t0, -120(s0)
    sw t0, -12(s0)
.L_main_47:
    j .L_main_7
.L_main_48:
.L_main_49:
    li t0, 1
    sw t0, -12(s0)
.L_main_50:
    lw t0, -12(s0)
    la t6, m
    lw t1, 0(t6)
    slt t2, t1, t0
    xori t2, t2, 1
    sw t2, -124(s0)
.L_main_51:
    lw t0, -124(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -128(s0)
.L_main_52:
    lw t0, -128(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -132(s0)
.L_main_53:
    lw t0, -132(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -136(s0)
.L_main_54:
    lw t0, -136(s0)
    bne t0, zero, .L_main_56
.L_main_55:
    j .L_main_70
.L_main_56:
    call getint
    sw a0, -140(s0)
.L_main_57:
    lw t0, -140(s0)
    sw t0, -144(s0)
.L_main_58:
    call getint
    sw a0, -148(s0)
.L_main_59:
    lw t0, -148(s0)
    sw t0, -152(s0)
.L_main_60:
    call getint
    sw a0, -156(s0)
.L_main_61:
    li t0, 16
    sw t0, -160(s0)
.L_main_62:
    lw t0, -144(s0)
    lw t1, -160(s0)
    mul t2, t0, t1
    sw t2, -164(s0)
.L_main_63:
    li t0, 0
    sw t0, -168(s0)
.L_main_64:
    lw t0, -168(s0)
    lw t1, -164(s0)
    add t2, t0, t1
    sw t2, -172(s0)
.L_main_65:
    lw t0, -172(s0)
    lw t1, -152(s0)
    add t2, t0, t1
    sw t2, -176(s0)
.L_main_66:
    lw t2, -156(s0)
    la t6, e
    lw t0, -176(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_main_67:
    lw t0, -12(s0)
    addi t2, t0, 1
    sw t2, -180(s0)
.L_main_68:
    lw t0, -180(s0)
    sw t0, -12(s0)
.L_main_69:
    j .L_main_50
.L_main_70:
.L_main_71:
    call Dijkstra
.L_main_72:
    li t0, 1
    sw t0, -12(s0)
.L_main_73:
    lw t0, -12(s0)
    la t6, n
    lw t1, 0(t6)
    slt t2, t1, t0
    xori t2, t2, 1
    sw t2, -184(s0)
.L_main_74:
    lw t0, -184(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -188(s0)
.L_main_75:
    lw t0, -188(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -192(s0)
.L_main_76:
    lw t0, -192(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -196(s0)
.L_main_77:
    lw t0, -196(s0)
    bne t0, zero, .L_main_79
.L_main_78:
    j .L_main_87
.L_main_79:
    li t0, 0
    sw t0, -200(s0)
.L_main_80:
    lw t0, -200(s0)
    lw t1, -12(s0)
    add t2, t0, t1
    sw t2, -204(s0)
.L_main_81:
    la t6, dis
    lw t0, -204(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -208(s0)
.L_main_82:
    lw a0, -208(s0)
    call putint
.L_main_83:
    li a0, 32
    call putch
.L_main_84:
    lw t0, -12(s0)
    addi t2, t0, 1
    sw t2, -212(s0)
.L_main_85:
    lw t0, -212(s0)
    sw t0, -12(s0)
.L_main_86:
    j .L_main_73
.L_main_87:
.L_main_88:
    li a0, 10
    call putch
.L_main_89:
    li a0, 0
    j .L_main_exit
.L_main_exit:
    lw ra, 220(sp)
    lw s0, 216(sp)
    addi sp, sp, 224
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
    li t0, 0
    la t6, m
    sw t0, 0(t6)
.L_global_2:
    li t0, 0
    la t6, v1
    sw t0, 0(t6)
.L_global_3:
    li t0, 0
    la t6, v2
    sw t0, 0(t6)
.L_global_4:
    li t0, 0
    la t6, w
    sw t0, 0(t6)
.L_global_5:
    j .L_global_exit
.L_global_exit:
    lw ra, 12(sp)
    lw s0, 8(sp)
    addi sp, sp, 16
    jr ra
    .size global, .-global

    .section .note.GNU-stack,"",@progbits
