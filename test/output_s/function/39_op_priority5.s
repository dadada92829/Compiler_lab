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
    .globl c
c:
    .word 0
    .align 2
    .globl d
d:
    .word 0
    .align 2
    .globl e
e:
    .word 0
    .text
    .align 1
    .globl main
    .type main, @function
main:
    addi sp, sp, -112
    sw ra, 108(sp)
    sw s0, 104(sp)
    addi s0, sp, 112
.L_main_0:
    call global
.L_main_1:
    li t0, 0
    sw t0, -12(s0)
.L_main_2:
    la t6, a
    lw t0, 0(t6)
    la t6, b
    lw t1, 0(t6)
    mul t2, t0, t1
    sw t2, -16(s0)
.L_main_3:
    lw t0, -16(s0)
    la t6, c
    lw t1, 0(t6)
    div t2, t0, t1
    sw t2, -20(s0)
.L_main_4:
    la t6, e
    lw t0, 0(t6)
    la t6, d
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -24(s0)
.L_main_5:
    lw t0, -20(s0)
    lw t1, -24(s0)
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -28(s0)
.L_main_6:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_main_7:
    li t0, 0
    sw t0, -36(s0)
.L_main_8:
    lw t0, -32(s0)
    bne t0, zero, .L_main_10
.L_main_9:
    j .L_main_17
.L_main_10:
    la t6, a
    lw t0, 0(t6)
    la t6, b
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -40(s0)
.L_main_11:
    la t6, a
    lw t0, 0(t6)
    lw t1, -40(s0)
    mul t2, t0, t1
    sw t2, -44(s0)
.L_main_12:
    lw t0, -44(s0)
    la t6, c
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -48(s0)
.L_main_13:
    la t6, d
    lw t0, 0(t6)
    la t6, e
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -52(s0)
.L_main_14:
    lw t0, -48(s0)
    lw t1, -52(s0)
    slt t2, t1, t0
    xori t2, t2, 1
    sw t2, -56(s0)
.L_main_15:
    lw t0, -56(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -60(s0)
.L_main_16:
    lw t0, -60(s0)
    sw t0, -36(s0)
.L_main_17:
.L_main_18:
    lw t0, -36(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -64(s0)
.L_main_19:
    li t0, 1
    sw t0, -68(s0)
.L_main_20:
    lw t0, -64(s0)
    bne t0, zero, .L_main_29
.L_main_21:
    la t6, b
    lw t0, 0(t6)
    la t6, c
    lw t1, 0(t6)
    mul t2, t0, t1
    sw t2, -72(s0)
.L_main_22:
    la t6, a
    lw t0, 0(t6)
    lw t1, -72(s0)
    sub t2, t0, t1
    sw t2, -76(s0)
.L_main_23:
    la t6, a
    lw t0, 0(t6)
    la t6, c
    lw t1, 0(t6)
    div t2, t0, t1
    sw t2, -80(s0)
.L_main_24:
    la t6, d
    lw t0, 0(t6)
    lw t1, -80(s0)
    sub t2, t0, t1
    sw t2, -84(s0)
.L_main_25:
    lw t0, -76(s0)
    lw t1, -84(s0)
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -88(s0)
.L_main_26:
    lw t0, -88(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -92(s0)
.L_main_27:
    lw t0, -92(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -96(s0)
.L_main_28:
    lw t0, -96(s0)
    sw t0, -68(s0)
.L_main_29:
.L_main_30:
    lw t0, -68(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -100(s0)
.L_main_31:
    lw t0, -100(s0)
    bne t0, zero, .L_main_33
.L_main_32:
    j .L_main_34
.L_main_33:
    li t0, 1
    sw t0, -12(s0)
.L_main_34:
.L_main_35:
    lw a0, -12(s0)
    j .L_main_exit
.L_main_exit:
    lw ra, 108(sp)
    lw s0, 104(sp)
    addi sp, sp, 112
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
    li t0, 1
    la t6, a
    sw t0, 0(t6)
.L_global_1:
    li t0, 0
    la t6, b
    sw t0, 0(t6)
.L_global_2:
    li t0, 1
    la t6, c
    sw t0, 0(t6)
.L_global_3:
    li t0, 2
    la t6, d
    sw t0, 0(t6)
.L_global_4:
    li t0, 4
    la t6, e
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
