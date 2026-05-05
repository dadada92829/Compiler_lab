    .option nopic
    .text
    .align 1
    .globl whileIf
    .type whileIf, @function
whileIf:
    addi sp, sp, -80
    sw ra, 76(sp)
    sw s0, 72(sp)
    addi s0, sp, 80
.L_whileIf_0:
    li t0, 0
    sw t0, -12(s0)
.L_whileIf_1:
    li t0, 0
    sw t0, -12(s0)
.L_whileIf_2:
    li t0, 0
    sw t0, -16(s0)
.L_whileIf_3:
    li t0, 0
    sw t0, -16(s0)
.L_whileIf_4:
    lw t0, -12(s0)
    li t1, 100
    slt t2, t0, t1
    sw t2, -20(s0)
.L_whileIf_5:
    lw t0, -20(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -24(s0)
.L_whileIf_6:
    lw t0, -24(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -28(s0)
.L_whileIf_7:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_whileIf_8:
    lw t0, -32(s0)
    bne t0, zero, .L_whileIf_10
.L_whileIf_9:
    j .L_whileIf_36
.L_whileIf_10:
    lw t0, -12(s0)
    li t1, 5
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -36(s0)
.L_whileIf_11:
    lw t0, -36(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -40(s0)
.L_whileIf_12:
    lw t0, -40(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -44(s0)
.L_whileIf_13:
    lw t0, -44(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -48(s0)
.L_whileIf_14:
    lw t0, -48(s0)
    bne t0, zero, .L_whileIf_16
.L_whileIf_15:
    j .L_whileIf_18
.L_whileIf_16:
    li t0, 25
    sw t0, -16(s0)
.L_whileIf_17:
    j .L_whileIf_32
.L_whileIf_18:
.L_whileIf_19:
    lw t0, -12(s0)
    li t1, 10
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -52(s0)
.L_whileIf_20:
    lw t0, -52(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -56(s0)
.L_whileIf_21:
    lw t0, -56(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -60(s0)
.L_whileIf_22:
    lw t0, -60(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -64(s0)
.L_whileIf_23:
    lw t0, -64(s0)
    bne t0, zero, .L_whileIf_25
.L_whileIf_24:
    j .L_whileIf_27
.L_whileIf_25:
    li t0, 42
    sw t0, -16(s0)
.L_whileIf_26:
    j .L_whileIf_31
.L_whileIf_27:
.L_whileIf_28:
    li t0, 2
    sw t0, -68(s0)
.L_whileIf_29:
    lw t0, -12(s0)
    lw t1, -68(s0)
    mul t2, t0, t1
    sw t2, -72(s0)
.L_whileIf_30:
    lw t0, -72(s0)
    sw t0, -16(s0)
.L_whileIf_31:
.L_whileIf_32:
.L_whileIf_33:
    lw t0, -12(s0)
    addi t2, t0, 1
    sw t2, -76(s0)
.L_whileIf_34:
    lw t0, -76(s0)
    sw t0, -12(s0)
.L_whileIf_35:
    j .L_whileIf_4
.L_whileIf_36:
.L_whileIf_37:
    lw a0, -16(s0)
    j .L_whileIf_exit
.L_whileIf_exit:
    lw ra, 76(sp)
    lw s0, 72(sp)
    addi sp, sp, 80
    jr ra
    .size whileIf, .-whileIf

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
    call whileIf
    sw a0, -12(s0)
.L_main_2:
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
    j .L_global_exit
.L_global_exit:
    lw ra, 12(sp)
    lw s0, 8(sp)
    addi sp, sp, 16
    jr ra
    .size global, .-global

    .section .note.GNU-stack,"",@progbits
