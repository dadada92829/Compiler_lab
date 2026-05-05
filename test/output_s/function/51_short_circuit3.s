    .option nopic
    .data
    .align 2
    .globl a
a:
    .word 0
    .align 2
    .globl b
b:
    .word 0
    .align 2
    .globl d
d:
    .word 0
    .text
    .align 1
    .globl set_a
    .type set_a, @function
set_a:
    addi sp, sp, -16
    sw ra, 12(sp)
    sw s0, 8(sp)
    addi s0, sp, 16
    sw a0, -12(s0)
.L_set_a_0:
    lw t0, -12(s0)
    la t6, a
    sw t0, 0(t6)
.L_set_a_1:
    la t6, a
    lw a0, 0(t6)
    j .L_set_a_exit
.L_set_a_exit:
    lw ra, 12(sp)
    lw s0, 8(sp)
    addi sp, sp, 16
    jr ra
    .size set_a, .-set_a

    .text
    .align 1
    .globl set_b
    .type set_b, @function
set_b:
    addi sp, sp, -16
    sw ra, 12(sp)
    sw s0, 8(sp)
    addi s0, sp, 16
    sw a0, -12(s0)
.L_set_b_0:
    lw t0, -12(s0)
    la t6, b
    sw t0, 0(t6)
.L_set_b_1:
    la t6, b
    lw a0, 0(t6)
    j .L_set_b_exit
.L_set_b_exit:
    lw ra, 12(sp)
    lw s0, 8(sp)
    addi sp, sp, 16
    jr ra
    .size set_b, .-set_b

    .text
    .align 1
    .globl set_d
    .type set_d, @function
set_d:
    addi sp, sp, -16
    sw ra, 12(sp)
    sw s0, 8(sp)
    addi s0, sp, 16
    sw a0, -12(s0)
.L_set_d_0:
    lw t0, -12(s0)
    la t6, d
    sw t0, 0(t6)
.L_set_d_1:
    la t6, d
    lw a0, 0(t6)
    j .L_set_d_exit
.L_set_d_exit:
    lw ra, 12(sp)
    lw s0, 8(sp)
    addi sp, sp, 16
    jr ra
    .size set_d, .-set_d

    .text
    .align 1
    .globl main
    .type main, @function
main:
    addi sp, sp, -336
    sw ra, 332(sp)
    sw s0, 328(sp)
    addi s0, sp, 336
.L_main_0:
    call global
.L_main_1:
    li t0, 2
    la t6, a
    sw t0, 0(t6)
.L_main_2:
    li t0, 3
    la t6, b
    sw t0, 0(t6)
.L_main_3:
    li a0, 0
    call set_a
    sw a0, -12(s0)
.L_main_4:
    lw t0, -12(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -16(s0)
.L_main_5:
    li t0, 0
    sw t0, -20(s0)
.L_main_6:
    lw t0, -16(s0)
    bne t0, zero, .L_main_8
.L_main_7:
    j .L_main_11
.L_main_8:
    li a0, 1
    call set_b
    sw a0, -24(s0)
.L_main_9:
    lw t0, -24(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -28(s0)
.L_main_10:
    lw t0, -28(s0)
    sw t0, -20(s0)
.L_main_11:
.L_main_12:
    lw t0, -20(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_main_13:
    lw t0, -32(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -36(s0)
.L_main_14:
    lw t0, -36(s0)
    bne t0, zero, .L_main_16
.L_main_15:
    j .L_main_16
.L_main_16:
.L_main_17:
    la t6, a
    lw a0, 0(t6)
    call putint
.L_main_18:
    li a0, 32
    call putch
.L_main_19:
    la t6, b
    lw a0, 0(t6)
    call putint
.L_main_20:
    li a0, 32
    call putch
.L_main_21:
    li t0, 2
    la t6, a
    sw t0, 0(t6)
.L_main_22:
    li t0, 3
    la t6, b
    sw t0, 0(t6)
.L_main_23:
    li a0, 0
    call set_a
    sw a0, -40(s0)
.L_main_24:
    lw t0, -40(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -44(s0)
.L_main_25:
    li t0, 0
    sw t0, -48(s0)
.L_main_26:
    lw t0, -44(s0)
    bne t0, zero, .L_main_28
.L_main_27:
    j .L_main_31
.L_main_28:
    li a0, 1
    call set_b
    sw a0, -52(s0)
.L_main_29:
    lw t0, -52(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -56(s0)
.L_main_30:
    lw t0, -56(s0)
    sw t0, -48(s0)
.L_main_31:
.L_main_32:
    lw t0, -48(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -60(s0)
.L_main_33:
    lw t0, -60(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -64(s0)
.L_main_34:
    lw t0, -64(s0)
    bne t0, zero, .L_main_36
.L_main_35:
    j .L_main_36
.L_main_36:
.L_main_37:
    la t6, a
    lw a0, 0(t6)
    call putint
.L_main_38:
    li a0, 32
    call putch
.L_main_39:
    la t6, b
    lw a0, 0(t6)
    call putint
.L_main_40:
    li a0, 10
    call putch
.L_main_41:
    li t0, 2
    la t6, d
    sw t0, 0(t6)
.L_main_42:
    li t0, 0
    sw t0, -68(s0)
.L_main_43:
    li t0, 1
    bne t0, zero, .L_main_45
.L_main_44:
    j .L_main_48
.L_main_45:
    li a0, 3
    call set_d
    sw a0, -72(s0)
.L_main_46:
    lw t0, -72(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -76(s0)
.L_main_47:
    lw t0, -76(s0)
    sw t0, -68(s0)
.L_main_48:
.L_main_49:
    lw t0, -68(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -80(s0)
.L_main_50:
    lw t0, -80(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -84(s0)
.L_main_51:
    lw t0, -84(s0)
    bne t0, zero, .L_main_53
.L_main_52:
    j .L_main_53
.L_main_53:
.L_main_54:
    la t6, d
    lw a0, 0(t6)
    call putint
.L_main_55:
    li a0, 32
    call putch
.L_main_56:
    li t0, 1
    sw t0, -88(s0)
.L_main_57:
    li t0, 1
    bne t0, zero, .L_main_62
.L_main_58:
    li a0, 4
    call set_d
    sw a0, -92(s0)
.L_main_59:
    lw t0, -92(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -96(s0)
.L_main_60:
    lw t0, -96(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -100(s0)
.L_main_61:
    lw t0, -100(s0)
    sw t0, -88(s0)
.L_main_62:
.L_main_63:
    lw t0, -88(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -104(s0)
.L_main_64:
    lw t0, -104(s0)
    bne t0, zero, .L_main_66
.L_main_65:
    j .L_main_66
.L_main_66:
.L_main_67:
    la t6, d
    lw a0, 0(t6)
    call putint
.L_main_68:
    li a0, 10
    call putch
.L_main_69:
    li t0, 1
    bne t0, zero, .L_main_71
.L_main_70:
    j .L_main_72
.L_main_71:
    li a0, 65
    call putch
.L_main_72:
.L_main_73:
    li t0, 0
    bne t0, zero, .L_main_75
.L_main_74:
    j .L_main_76
.L_main_75:
    li a0, 66
    call putch
.L_main_76:
.L_main_77:
    li t0, 0
    bne t0, zero, .L_main_79
.L_main_78:
    j .L_main_80
.L_main_79:
    li a0, 67
    call putch
.L_main_80:
.L_main_81:
    li t0, 1
    bne t0, zero, .L_main_83
.L_main_82:
    j .L_main_84
.L_main_83:
    li a0, 68
    call putch
.L_main_84:
.L_main_85:
    li t0, 0
    bne t0, zero, .L_main_87
.L_main_86:
    j .L_main_88
.L_main_87:
    li a0, 69
    call putch
.L_main_88:
.L_main_89:
    li t0, 1
    bne t0, zero, .L_main_91
.L_main_90:
    j .L_main_92
.L_main_91:
    li a0, 70
    call putch
.L_main_92:
.L_main_93:
    li a0, 10
    call putch
.L_main_94:
    li t0, 0
    sw t0, -108(s0)
.L_main_95:
    li t0, 1
    sw t0, -112(s0)
.L_main_96:
    li t0, 2
    sw t0, -116(s0)
.L_main_97:
    li t0, 3
    sw t0, -120(s0)
.L_main_98:
    li t0, 4
    sw t0, -124(s0)
.L_main_99:
    lw t0, -108(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -128(s0)
.L_main_100:
    li t0, 0
    sw t0, -132(s0)
.L_main_101:
    lw t0, -128(s0)
    bne t0, zero, .L_main_103
.L_main_102:
    j .L_main_105
.L_main_103:
    lw t0, -112(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -136(s0)
.L_main_104:
    lw t0, -136(s0)
    sw t0, -132(s0)
.L_main_105:
.L_main_106:
    lw t0, -132(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -140(s0)
.L_main_107:
    lw t0, -140(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -144(s0)
.L_main_108:
    lw t0, -144(s0)
    bne t0, zero, .L_main_110
.L_main_109:
    j .L_main_112
.L_main_110:
    li a0, 32
    call putch
.L_main_111:
    j .L_main_99
.L_main_112:
.L_main_113:
    lw t0, -108(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -148(s0)
.L_main_114:
    lw t0, -148(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -152(s0)
.L_main_115:
    li t0, 1
    sw t0, -156(s0)
.L_main_116:
    lw t0, -152(s0)
    bne t0, zero, .L_main_120
.L_main_117:
    lw t0, -112(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -160(s0)
.L_main_118:
    lw t0, -160(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -164(s0)
.L_main_119:
    lw t0, -164(s0)
    sw t0, -156(s0)
.L_main_120:
.L_main_121:
    lw t0, -156(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -168(s0)
.L_main_122:
    lw t0, -168(s0)
    bne t0, zero, .L_main_124
.L_main_123:
    j .L_main_125
.L_main_124:
    li a0, 67
    call putch
.L_main_125:
.L_main_126:
    lw t0, -108(s0)
    lw t1, -112(s0)
    slt t2, t0, t1
    xori t2, t2, 1
    sw t2, -172(s0)
.L_main_127:
    lw t0, -172(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -176(s0)
.L_main_128:
    lw t0, -176(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -180(s0)
.L_main_129:
    li t0, 1
    sw t0, -184(s0)
.L_main_130:
    lw t0, -180(s0)
    bne t0, zero, .L_main_135
.L_main_131:
    lw t0, -112(s0)
    lw t1, -108(s0)
    slt t2, t1, t0
    xori t2, t2, 1
    sw t2, -188(s0)
.L_main_132:
    lw t0, -188(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -192(s0)
.L_main_133:
    lw t0, -192(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -196(s0)
.L_main_134:
    lw t0, -196(s0)
    sw t0, -184(s0)
.L_main_135:
.L_main_136:
    lw t0, -184(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -200(s0)
.L_main_137:
    lw t0, -200(s0)
    bne t0, zero, .L_main_139
.L_main_138:
    j .L_main_140
.L_main_139:
    li a0, 72
    call putch
.L_main_140:
.L_main_141:
    lw t0, -116(s0)
    lw t1, -112(s0)
    slt t2, t0, t1
    xori t2, t2, 1
    sw t2, -204(s0)
.L_main_142:
    lw t0, -204(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -208(s0)
.L_main_143:
    li t0, 0
    sw t0, -212(s0)
.L_main_144:
    lw t0, -208(s0)
    bne t0, zero, .L_main_146
.L_main_145:
    j .L_main_149
.L_main_146:
    lw t0, -124(s0)
    lw t1, -120(s0)
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -216(s0)
.L_main_147:
    lw t0, -216(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -220(s0)
.L_main_148:
    lw t0, -220(s0)
    sw t0, -212(s0)
.L_main_149:
.L_main_150:
    lw t0, -212(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -224(s0)
.L_main_151:
    lw t0, -224(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -228(s0)
.L_main_152:
    lw t0, -228(s0)
    bne t0, zero, .L_main_154
.L_main_153:
    j .L_main_155
.L_main_154:
    li a0, 73
    call putch
.L_main_155:
.L_main_156:
    lw t0, -112(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -232(s0)
.L_main_157:
    lw t0, -232(s0)
    li t1, 0
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -236(s0)
.L_main_158:
    lw t0, -108(s0)
    lw t1, -236(s0)
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -240(s0)
.L_main_159:
    lw t0, -240(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -244(s0)
.L_main_160:
    li t0, 0
    sw t0, -248(s0)
.L_main_161:
    lw t0, -244(s0)
    bne t0, zero, .L_main_163
.L_main_162:
    j .L_main_166
.L_main_163:
    lw t0, -120(s0)
    lw t1, -120(s0)
    slt t2, t0, t1
    sw t2, -252(s0)
.L_main_164:
    lw t0, -252(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -256(s0)
.L_main_165:
    lw t0, -256(s0)
    sw t0, -248(s0)
.L_main_166:
.L_main_167:
    lw t0, -248(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -260(s0)
.L_main_168:
    li t0, 1
    sw t0, -264(s0)
.L_main_169:
    lw t0, -260(s0)
    bne t0, zero, .L_main_174
.L_main_170:
    lw t0, -124(s0)
    lw t1, -124(s0)
    slt t2, t0, t1
    xori t2, t2, 1
    sw t2, -268(s0)
.L_main_171:
    lw t0, -268(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -272(s0)
.L_main_172:
    lw t0, -272(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -276(s0)
.L_main_173:
    lw t0, -276(s0)
    sw t0, -264(s0)
.L_main_174:
.L_main_175:
    lw t0, -264(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -280(s0)
.L_main_176:
    lw t0, -280(s0)
    bne t0, zero, .L_main_178
.L_main_177:
    j .L_main_179
.L_main_178:
    li a0, 74
    call putch
.L_main_179:
.L_main_180:
    lw t0, -112(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -284(s0)
.L_main_181:
    lw t0, -284(s0)
    li t1, 0
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -288(s0)
.L_main_182:
    lw t0, -108(s0)
    lw t1, -288(s0)
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -292(s0)
.L_main_183:
    lw t0, -292(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -296(s0)
.L_main_184:
    lw t0, -296(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -300(s0)
.L_main_185:
    li t0, 1
    sw t0, -304(s0)
.L_main_186:
    lw t0, -300(s0)
    bne t0, zero, .L_main_198
.L_main_187:
    lw t0, -120(s0)
    lw t1, -120(s0)
    slt t2, t0, t1
    sw t2, -308(s0)
.L_main_188:
    lw t0, -308(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -312(s0)
.L_main_189:
    li t0, 0
    sw t0, -316(s0)
.L_main_190:
    lw t0, -312(s0)
    bne t0, zero, .L_main_192
.L_main_191:
    j .L_main_195
.L_main_192:
    lw t0, -124(s0)
    lw t1, -124(s0)
    slt t2, t0, t1
    xori t2, t2, 1
    sw t2, -320(s0)
.L_main_193:
    lw t0, -320(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -324(s0)
.L_main_194:
    lw t0, -324(s0)
    sw t0, -316(s0)
.L_main_195:
.L_main_196:
    lw t0, -316(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -328(s0)
.L_main_197:
    lw t0, -328(s0)
    sw t0, -304(s0)
.L_main_198:
.L_main_199:
    lw t0, -304(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -332(s0)
.L_main_200:
    lw t0, -332(s0)
    bne t0, zero, .L_main_202
.L_main_201:
    j .L_main_203
.L_main_202:
    li a0, 75
    call putch
.L_main_203:
.L_main_204:
    li a0, 10
    call putch
.L_main_205:
    li a0, 0
    j .L_main_exit
.L_main_exit:
    lw ra, 332(sp)
    lw s0, 328(sp)
    addi sp, sp, 336
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
    la t6, a
    sw t0, 0(t6)
.L_global_1:
    li t0, 0
    la t6, b
    sw t0, 0(t6)
.L_global_2:
    li t0, 0
    la t6, d
    sw t0, 0(t6)
.L_global_3:
    j .L_global_exit
.L_global_exit:
    lw ra, 12(sp)
    lw s0, 8(sp)
    addi sp, sp, 16
    jr ra
    .size global, .-global

    .section .note.GNU-stack,"",@progbits
