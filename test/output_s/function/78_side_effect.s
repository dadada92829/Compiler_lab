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
    .text
    .align 1
    .globl inc_a
    .type inc_a, @function
inc_a:
    addi sp, sp, -16
    sw ra, 12(sp)
    sw s0, 8(sp)
    addi s0, sp, 16
.L_inc_a_0:
    la t6, a
    lw t0, 0(t6)
    sw t0, -12(s0)
.L_inc_a_1:
    lw t0, -12(s0)
    addi t2, t0, 1
    sw t2, -16(s0)
.L_inc_a_2:
    lw t0, -16(s0)
    sw t0, -12(s0)
.L_inc_a_3:
    lw t0, -12(s0)
    la t6, a
    sw t0, 0(t6)
.L_inc_a_4:
    la t6, a
    lw a0, 0(t6)
    j .L_inc_a_exit
.L_inc_a_exit:
    lw ra, 12(sp)
    lw s0, 8(sp)
    addi sp, sp, 16
    jr ra
    .size inc_a, .-inc_a

    .text
    .align 1
    .globl main
    .type main, @function
main:
    addi sp, sp, -144
    sw ra, 140(sp)
    sw s0, 136(sp)
    addi s0, sp, 144
.L_main_0:
    call global
.L_main_1:
    li t0, 5
    sw t0, -12(s0)
.L_main_2:
    lw t0, -12(s0)
    li t1, 0
    slt t2, t0, t1
    xori t2, t2, 1
    sw t2, -16(s0)
.L_main_3:
    lw t0, -16(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
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
    bne t0, zero, .L_main_8
.L_main_7:
    j .L_main_69
.L_main_8:
    call inc_a
    sw a0, -32(s0)
.L_main_9:
    lw t0, -32(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -36(s0)
.L_main_10:
    li t0, 0
    sw t0, -40(s0)
.L_main_11:
    lw t0, -36(s0)
    bne t0, zero, .L_main_13
.L_main_12:
    j .L_main_23
.L_main_13:
    call inc_a
    sw a0, -44(s0)
.L_main_14:
    lw t0, -44(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -48(s0)
.L_main_15:
    li t0, 0
    sw t0, -52(s0)
.L_main_16:
    lw t0, -48(s0)
    bne t0, zero, .L_main_18
.L_main_17:
    j .L_main_21
.L_main_18:
    call inc_a
    sw a0, -56(s0)
.L_main_19:
    lw t0, -56(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -60(s0)
.L_main_20:
    lw t0, -60(s0)
    sw t0, -52(s0)
.L_main_21:
.L_main_22:
    lw t0, -52(s0)
    sw t0, -40(s0)
.L_main_23:
.L_main_24:
    lw t0, -40(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -64(s0)
.L_main_25:
    lw t0, -64(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -68(s0)
.L_main_26:
    lw t0, -68(s0)
    bne t0, zero, .L_main_28
.L_main_27:
    j .L_main_32
.L_main_28:
    la t6, a
    lw a0, 0(t6)
    call putint
.L_main_29:
    li a0, 32
    call putch
.L_main_30:
    la t6, b
    lw a0, 0(t6)
    call putint
.L_main_31:
    li a0, 10
    call putch
.L_main_32:
.L_main_33:
    call inc_a
    sw a0, -72(s0)
.L_main_34:
    lw t0, -72(s0)
    li t1, 14
    slt t2, t0, t1
    sw t2, -76(s0)
.L_main_35:
    lw t0, -76(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -80(s0)
.L_main_36:
    lw t0, -80(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -84(s0)
.L_main_37:
    li t0, 1
    sw t0, -88(s0)
.L_main_38:
    lw t0, -84(s0)
    bne t0, zero, .L_main_53
.L_main_39:
    call inc_a
    sw a0, -92(s0)
.L_main_40:
    lw t0, -92(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -96(s0)
.L_main_41:
    li t0, 0
    sw t0, -100(s0)
.L_main_42:
    lw t0, -96(s0)
    bne t0, zero, .L_main_44
.L_main_43:
    j .L_main_50
.L_main_44:
    call inc_a
    sw a0, -104(s0)
.L_main_45:
    call inc_a
    sw a0, -108(s0)
.L_main_46:
    lw t0, -104(s0)
    lw t1, -108(s0)
    sub t2, t0, t1
    sw t2, -112(s0)
.L_main_47:
    lw t0, -112(s0)
    addi t2, t0, 1
    sw t2, -116(s0)
.L_main_48:
    lw t0, -116(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -120(s0)
.L_main_49:
    lw t0, -120(s0)
    sw t0, -100(s0)
.L_main_50:
.L_main_51:
    lw t0, -100(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -124(s0)
.L_main_52:
    lw t0, -124(s0)
    sw t0, -88(s0)
.L_main_53:
.L_main_54:
    lw t0, -88(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -128(s0)
.L_main_55:
    lw t0, -128(s0)
    bne t0, zero, .L_main_57
.L_main_56:
    j .L_main_63
.L_main_57:
    la t6, a
    lw a0, 0(t6)
    call putint
.L_main_58:
    li a0, 10
    call putch
.L_main_59:
    li t0, 2
    sw t0, -132(s0)
.L_main_60:
    la t6, b
    lw t0, 0(t6)
    lw t1, -132(s0)
    mul t2, t0, t1
    sw t2, -136(s0)
.L_main_61:
    lw t0, -136(s0)
    la t6, b
    sw t0, 0(t6)
.L_main_62:
    j .L_main_65
.L_main_63:
.L_main_64:
    call inc_a
    sw a0, -140(s0)
.L_main_65:
.L_main_66:
    lw t0, -12(s0)
    addi t2, t0, -1
    sw t2, -144(s0)
.L_main_67:
    lw t0, -144(s0)
    sw t0, -12(s0)
.L_main_68:
    j .L_main_2
.L_main_69:
.L_main_70:
    la t6, a
    lw a0, 0(t6)
    call putint
.L_main_71:
    li a0, 32
    call putch
.L_main_72:
    la t6, b
    lw a0, 0(t6)
    call putint
.L_main_73:
    li a0, 10
    call putch
.L_main_74:
    la t6, a
    lw a0, 0(t6)
    j .L_main_exit
.L_main_exit:
    lw ra, 140(sp)
    lw s0, 136(sp)
    addi sp, sp, 144
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
    li t0, -1
    la t6, a
    sw t0, 0(t6)
.L_global_1:
    li t0, 1
    la t6, b
    sw t0, 0(t6)
.L_global_2:
    j .L_global_exit
.L_global_exit:
    lw ra, 12(sp)
    lw s0, 8(sp)
    addi sp, sp, 16
    jr ra
    .size global, .-global

    .section .note.GNU-stack,"",@progbits
