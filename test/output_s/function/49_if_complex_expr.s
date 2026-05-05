    .option nopic
    .text
    .align 1
    .globl main
    .type main, @function
main:
    addi sp, sp, -176
    sw ra, 172(sp)
    sw s0, 168(sp)
    addi s0, sp, 176
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
    li t0, 0
    sw t0, -28(s0)
.L_main_6:
    li t0, 5
    sw t0, -12(s0)
.L_main_7:
    li t0, 5
    sw t0, -16(s0)
.L_main_8:
    li t0, 1
    sw t0, -20(s0)
.L_main_9:
    li t0, -2
    sw t0, -24(s0)
.L_main_10:
    li t0, 2
    sw t0, -28(s0)
.L_main_11:
    li t0, 1
    sw t0, -32(s0)
.L_main_12:
    lw t0, -24(s0)
    lw t1, -32(s0)
    mul t2, t0, t1
    sw t2, -36(s0)
.L_main_13:
    li t0, 2
    sw t0, -40(s0)
.L_main_14:
    lw t0, -36(s0)
    lw t1, -40(s0)
    div t2, t0, t1
    sw t2, -44(s0)
.L_main_15:
    lw t0, -44(s0)
    li t1, 0
    slt t2, t0, t1
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
    li t0, 1
    sw t0, -60(s0)
.L_main_19:
    lw t0, -56(s0)
    bne t0, zero, .L_main_35
.L_main_20:
    lw t0, -12(s0)
    lw t1, -16(s0)
    sub t2, t0, t1
    sw t2, -64(s0)
.L_main_21:
    lw t0, -64(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -68(s0)
.L_main_22:
    lw t0, -68(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -72(s0)
.L_main_23:
    li t0, 0
    sw t0, -76(s0)
.L_main_24:
    lw t0, -72(s0)
    bne t0, zero, .L_main_26
.L_main_25:
    j .L_main_32
.L_main_26:
    lw t0, -20(s0)
    addi t2, t0, 3
    sw t2, -80(s0)
.L_main_27:
    li t0, 2
    sw t0, -84(s0)
.L_main_28:
    lw t0, -80(s0)
    lw t1, -84(s0)
    rem t2, t0, t1
    sw t2, -88(s0)
.L_main_29:
    lw t0, -88(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -92(s0)
.L_main_30:
    lw t0, -92(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -96(s0)
.L_main_31:
    lw t0, -96(s0)
    sw t0, -76(s0)
.L_main_32:
.L_main_33:
    lw t0, -76(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -100(s0)
.L_main_34:
    lw t0, -100(s0)
    sw t0, -60(s0)
.L_main_35:
.L_main_36:
    lw t0, -60(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -104(s0)
.L_main_37:
    lw t0, -104(s0)
    bne t0, zero, .L_main_39
.L_main_38:
    j .L_main_40
.L_main_39:
    lw a0, -28(s0)
    call putint
.L_main_40:
.L_main_41:
    li t0, 2
    sw t0, -108(s0)
.L_main_42:
    lw t0, -24(s0)
    lw t1, -108(s0)
    rem t2, t0, t1
    sw t2, -112(s0)
.L_main_43:
    lw t0, -112(s0)
    addi t2, t0, 67
    sw t2, -116(s0)
.L_main_44:
    lw t0, -116(s0)
    li t1, 0
    slt t2, t0, t1
    sw t2, -120(s0)
.L_main_45:
    lw t0, -120(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -124(s0)
.L_main_46:
    lw t0, -124(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -128(s0)
.L_main_47:
    li t0, 1
    sw t0, -132(s0)
.L_main_48:
    lw t0, -128(s0)
    bne t0, zero, .L_main_64
.L_main_49:
    lw t0, -12(s0)
    lw t1, -16(s0)
    sub t2, t0, t1
    sw t2, -136(s0)
.L_main_50:
    lw t0, -136(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -140(s0)
.L_main_51:
    lw t0, -140(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -144(s0)
.L_main_52:
    li t0, 0
    sw t0, -148(s0)
.L_main_53:
    lw t0, -144(s0)
    bne t0, zero, .L_main_55
.L_main_54:
    j .L_main_61
.L_main_55:
    lw t0, -20(s0)
    addi t2, t0, 2
    sw t2, -152(s0)
.L_main_56:
    li t0, 2
    sw t0, -156(s0)
.L_main_57:
    lw t0, -152(s0)
    lw t1, -156(s0)
    rem t2, t0, t1
    sw t2, -160(s0)
.L_main_58:
    lw t0, -160(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -164(s0)
.L_main_59:
    lw t0, -164(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -168(s0)
.L_main_60:
    lw t0, -168(s0)
    sw t0, -148(s0)
.L_main_61:
.L_main_62:
    lw t0, -148(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -172(s0)
.L_main_63:
    lw t0, -172(s0)
    sw t0, -132(s0)
.L_main_64:
.L_main_65:
    lw t0, -132(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -176(s0)
.L_main_66:
    lw t0, -176(s0)
    bne t0, zero, .L_main_68
.L_main_67:
    j .L_main_70
.L_main_68:
    li t0, 4
    sw t0, -28(s0)
.L_main_69:
    lw a0, -28(s0)
    call putint
.L_main_70:
.L_main_71:
    li a0, 0
    j .L_main_exit
.L_main_exit:
    lw ra, 172(sp)
    lw s0, 168(sp)
    addi sp, sp, 176
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
