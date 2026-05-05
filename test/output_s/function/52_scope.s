    .option nopic
    .data
    .align 2
    .globl a
a:
    .word 0
    .text
    .align 1
    .globl func
    .type func, @function
func:
    addi sp, sp, -48
    sw ra, 44(sp)
    sw s0, 40(sp)
    addi s0, sp, 48
.L_func_0:
    la t6, a
    lw t0, 0(t6)
    sw t0, -12(s0)
.L_func_1:
    li t0, 1
    sw t0, -16(s0)
.L_func_2:
    lw t0, -16(s0)
    lw t1, -12(s0)
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -20(s0)
.L_func_3:
    lw t0, -20(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -24(s0)
.L_func_4:
    lw t0, -24(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -28(s0)
.L_func_5:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_func_6:
    lw t0, -32(s0)
    bne t0, zero, .L_func_8
.L_func_7:
    j .L_func_12
.L_func_8:
    lw t0, -16(s0)
    addi t2, t0, 1
    sw t2, -36(s0)
.L_func_9:
    lw t0, -36(s0)
    sw t0, -16(s0)
.L_func_10:
    li a0, 1
    j .L_func_exit
.L_func_11:
    j .L_func_14
.L_func_12:
.L_func_13:
    li a0, 0
    j .L_func_exit
.L_func_14:
.L_func_15:
    li a0, 0
    j .L_func_exit
.L_func_exit:
    lw ra, 44(sp)
    lw s0, 40(sp)
    addi sp, sp, 48
    jr ra
    .size func, .-func

    .text
    .align 1
    .globl main
    .type main, @function
main:
    addi sp, sp, -80
    sw ra, 76(sp)
    sw s0, 72(sp)
    addi s0, sp, 80
.L_main_0:
    call global
.L_main_1:
    li t0, 0
    sw t0, -12(s0)
.L_main_2:
    li t0, 0
    sw t0, -16(s0)
.L_main_3:
    lw t0, -16(s0)
    li t1, 100
    slt t2, t0, t1
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
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_main_7:
    lw t0, -32(s0)
    bne t0, zero, .L_main_9
.L_main_8:
    j .L_main_22
.L_main_9:
    call func
    sw a0, -36(s0)
.L_main_10:
    lw t0, -36(s0)
    li t1, 1
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -40(s0)
.L_main_11:
    lw t0, -40(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -44(s0)
.L_main_12:
    lw t0, -44(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -48(s0)
.L_main_13:
    lw t0, -48(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -52(s0)
.L_main_14:
    lw t0, -52(s0)
    bne t0, zero, .L_main_16
.L_main_15:
    j .L_main_18
.L_main_16:
    lw t0, -12(s0)
    addi t2, t0, 1
    sw t2, -56(s0)
.L_main_17:
    lw t0, -56(s0)
    sw t0, -12(s0)
.L_main_18:
.L_main_19:
    lw t0, -16(s0)
    addi t2, t0, 1
    sw t2, -60(s0)
.L_main_20:
    lw t0, -60(s0)
    sw t0, -16(s0)
.L_main_21:
    j .L_main_3
.L_main_22:
.L_main_23:
    lw t0, -12(s0)
    li t1, 100
    slt t2, t0, t1
    sw t2, -64(s0)
.L_main_24:
    lw t0, -64(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -68(s0)
.L_main_25:
    lw t0, -68(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -72(s0)
.L_main_26:
    lw t0, -72(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -76(s0)
.L_main_27:
    lw t0, -76(s0)
    bne t0, zero, .L_main_29
.L_main_28:
    j .L_main_31
.L_main_29:
    li a0, 1
    call putint
.L_main_30:
    j .L_main_33
.L_main_31:
.L_main_32:
    li a0, 0
    call putint
.L_main_33:
.L_main_34:
    li a0, 0
    j .L_main_exit
.L_main_exit:
    lw ra, 76(sp)
    lw s0, 72(sp)
    addi sp, sp, 80
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
    li t0, 7
    la t6, a
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
