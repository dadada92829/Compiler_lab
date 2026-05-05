    .option nopic
    .text
    .align 1
    .globl ifElseIf
    .type ifElseIf, @function
ifElseIf:
    addi sp, sp, -112
    sw ra, 108(sp)
    sw s0, 104(sp)
    addi s0, sp, 112
.L_ifElseIf_0:
    li t0, 0
    sw t0, -12(s0)
.L_ifElseIf_1:
    li t0, 5
    sw t0, -12(s0)
.L_ifElseIf_2:
    li t0, 0
    sw t0, -16(s0)
.L_ifElseIf_3:
    li t0, 10
    sw t0, -16(s0)
.L_ifElseIf_4:
    lw t0, -12(s0)
    li t1, 6
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -20(s0)
.L_ifElseIf_5:
    lw t0, -20(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -24(s0)
.L_ifElseIf_6:
    lw t0, -24(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -28(s0)
.L_ifElseIf_7:
    li t0, 1
    sw t0, -32(s0)
.L_ifElseIf_8:
    lw t0, -28(s0)
    bne t0, zero, .L_ifElseIf_13
.L_ifElseIf_9:
    lw t0, -16(s0)
    li t1, 11
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -36(s0)
.L_ifElseIf_10:
    lw t0, -36(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -40(s0)
.L_ifElseIf_11:
    lw t0, -40(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -44(s0)
.L_ifElseIf_12:
    lw t0, -44(s0)
    sw t0, -32(s0)
.L_ifElseIf_13:
.L_ifElseIf_14:
    lw t0, -32(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -48(s0)
.L_ifElseIf_15:
    lw t0, -48(s0)
    bne t0, zero, .L_ifElseIf_17
.L_ifElseIf_16:
    j .L_ifElseIf_19
.L_ifElseIf_17:
    lw a0, -12(s0)
    j .L_ifElseIf_exit
.L_ifElseIf_18:
    j .L_ifElseIf_57
.L_ifElseIf_19:
.L_ifElseIf_20:
    lw t0, -16(s0)
    li t1, 10
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -52(s0)
.L_ifElseIf_21:
    lw t0, -52(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -56(s0)
.L_ifElseIf_22:
    li t0, 0
    sw t0, -60(s0)
.L_ifElseIf_23:
    lw t0, -56(s0)
    bne t0, zero, .L_ifElseIf_25
.L_ifElseIf_24:
    j .L_ifElseIf_28
.L_ifElseIf_25:
    lw t0, -12(s0)
    li t1, 1
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -64(s0)
.L_ifElseIf_26:
    lw t0, -64(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -68(s0)
.L_ifElseIf_27:
    lw t0, -68(s0)
    sw t0, -60(s0)
.L_ifElseIf_28:
.L_ifElseIf_29:
    lw t0, -60(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -72(s0)
.L_ifElseIf_30:
    lw t0, -72(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -76(s0)
.L_ifElseIf_31:
    lw t0, -76(s0)
    bne t0, zero, .L_ifElseIf_33
.L_ifElseIf_32:
    j .L_ifElseIf_35
.L_ifElseIf_33:
    li t0, 25
    sw t0, -12(s0)
.L_ifElseIf_34:
    j .L_ifElseIf_56
.L_ifElseIf_35:
.L_ifElseIf_36:
    lw t0, -16(s0)
    li t1, 10
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -80(s0)
.L_ifElseIf_37:
    lw t0, -80(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -84(s0)
.L_ifElseIf_38:
    li t0, 0
    sw t0, -88(s0)
.L_ifElseIf_39:
    lw t0, -84(s0)
    bne t0, zero, .L_ifElseIf_41
.L_ifElseIf_40:
    j .L_ifElseIf_44
.L_ifElseIf_41:
    lw t0, -12(s0)
    li t1, -5
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -92(s0)
.L_ifElseIf_42:
    lw t0, -92(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -96(s0)
.L_ifElseIf_43:
    lw t0, -96(s0)
    sw t0, -88(s0)
.L_ifElseIf_44:
.L_ifElseIf_45:
    lw t0, -88(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -100(s0)
.L_ifElseIf_46:
    lw t0, -100(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -104(s0)
.L_ifElseIf_47:
    lw t0, -104(s0)
    bne t0, zero, .L_ifElseIf_49
.L_ifElseIf_48:
    j .L_ifElseIf_52
.L_ifElseIf_49:
    lw t0, -12(s0)
    addi t2, t0, 15
    sw t2, -108(s0)
.L_ifElseIf_50:
    lw t0, -108(s0)
    sw t0, -12(s0)
.L_ifElseIf_51:
    j .L_ifElseIf_55
.L_ifElseIf_52:
.L_ifElseIf_53:
    li t0, 0
    lw t1, -12(s0)
    sub t2, t0, t1
    sw t2, -112(s0)
.L_ifElseIf_54:
    lw t0, -112(s0)
    sw t0, -12(s0)
.L_ifElseIf_55:
.L_ifElseIf_56:
.L_ifElseIf_57:
.L_ifElseIf_58:
    lw a0, -12(s0)
    j .L_ifElseIf_exit
.L_ifElseIf_exit:
    lw ra, 108(sp)
    lw s0, 104(sp)
    addi sp, sp, 112
    jr ra
    .size ifElseIf, .-ifElseIf

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
    call ifElseIf
    sw a0, -12(s0)
.L_main_2:
    lw a0, -12(s0)
    call putint
.L_main_3:
    li a0, 0
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
