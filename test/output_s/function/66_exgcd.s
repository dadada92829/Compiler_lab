    .option nopic
    .text
    .align 1
    .globl exgcd
    .type exgcd, @function
exgcd:
    addi sp, sp, -80
    sw ra, 76(sp)
    sw s0, 72(sp)
    addi s0, sp, 80
    sw a0, -12(s0)
    sw a1, -16(s0)
    sw a2, -20(s0)
    sw a3, -24(s0)
.L_exgcd_0:
    lw t0, -16(s0)
    li t1, 0
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -28(s0)
.L_exgcd_1:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_exgcd_2:
    lw t0, -32(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -36(s0)
.L_exgcd_3:
    lw t0, -36(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -40(s0)
.L_exgcd_4:
    lw t0, -40(s0)
    bne t0, zero, .L_exgcd_6
.L_exgcd_5:
    j .L_exgcd_10
.L_exgcd_6:
    li t2, 1
    lw t6, -20(s0)
    sw t2, 0(t6)
.L_exgcd_7:
    li t2, 0
    lw t6, -24(s0)
    sw t2, 0(t6)
.L_exgcd_8:
    lw a0, -12(s0)
    j .L_exgcd_exit
.L_exgcd_9:
    j .L_exgcd_24
.L_exgcd_10:
.L_exgcd_11:
    lw t0, -12(s0)
    lw t1, -16(s0)
    rem t2, t0, t1
    sw t2, -44(s0)
.L_exgcd_12:
    lw a0, -16(s0)
    lw a1, -44(s0)
    lw a2, -20(s0)
    lw a3, -24(s0)
    call exgcd
    sw a0, -48(s0)
.L_exgcd_13:
    lw t0, -48(s0)
    sw t0, -52(s0)
.L_exgcd_14:
    lw t6, -20(s0)
    lw t0, 0(t6)
    sw t0, -56(s0)
.L_exgcd_15:
    lw t0, -56(s0)
    sw t0, -60(s0)
.L_exgcd_16:
    lw t6, -24(s0)
    lw t0, 0(t6)
    sw t0, -64(s0)
.L_exgcd_17:
    lw t2, -64(s0)
    lw t6, -20(s0)
    sw t2, 0(t6)
.L_exgcd_18:
    lw t0, -12(s0)
    lw t1, -16(s0)
    div t2, t0, t1
    sw t2, -68(s0)
.L_exgcd_19:
    lw t6, -24(s0)
    lw t0, 0(t6)
    sw t0, -72(s0)
.L_exgcd_20:
    lw t0, -68(s0)
    lw t1, -72(s0)
    mul t2, t0, t1
    sw t2, -76(s0)
.L_exgcd_21:
    lw t0, -60(s0)
    lw t1, -76(s0)
    sub t2, t0, t1
    sw t2, -80(s0)
.L_exgcd_22:
    lw t2, -80(s0)
    lw t6, -24(s0)
    sw t2, 0(t6)
.L_exgcd_23:
    lw a0, -52(s0)
    j .L_exgcd_exit
.L_exgcd_24:
.L_exgcd_25:
    li a0, 0
    j .L_exgcd_exit
.L_exgcd_exit:
    lw ra, 76(sp)
    lw s0, 72(sp)
    addi sp, sp, 80
    jr ra
    .size exgcd, .-exgcd

    .text
    .align 1
    .globl main
    .type main, @function
main:
    addi sp, sp, -64
    sw ra, 60(sp)
    sw s0, 56(sp)
    addi s0, sp, 64
.L_main_0:
    call global
.L_main_1:
    li t0, 7
    sw t0, -12(s0)
.L_main_2:
    li t0, 15
    sw t0, -16(s0)
.L_main_3:
    addi t0, s0, -24
    sw t0, -20(s0)
.L_main_4:
    li t2, 1
    lw t6, -20(s0)
    sw t2, 0(t6)
.L_main_5:
    addi t0, s0, -32
    sw t0, -28(s0)
.L_main_6:
    li t2, 1
    lw t6, -28(s0)
    sw t2, 0(t6)
.L_main_7:
    lw a0, -12(s0)
    lw a1, -16(s0)
    lw a2, -20(s0)
    lw a3, -28(s0)
    call exgcd
    sw a0, -36(s0)
.L_main_8:
    lw t6, -20(s0)
    lw t0, 0(t6)
    sw t0, -40(s0)
.L_main_9:
    lw t0, -40(s0)
    lw t1, -16(s0)
    rem t2, t0, t1
    sw t2, -44(s0)
.L_main_10:
    lw t0, -44(s0)
    lw t1, -16(s0)
    add t2, t0, t1
    sw t2, -48(s0)
.L_main_11:
    lw t0, -48(s0)
    lw t1, -16(s0)
    rem t2, t0, t1
    sw t2, -52(s0)
.L_main_12:
    lw t2, -52(s0)
    lw t6, -20(s0)
    sw t2, 0(t6)
.L_main_13:
    lw t6, -20(s0)
    lw t0, 0(t6)
    sw t0, -56(s0)
.L_main_14:
    lw a0, -56(s0)
    call putint
.L_main_15:
    li a0, 0
    j .L_main_exit
.L_main_exit:
    lw ra, 60(sp)
    lw s0, 56(sp)
    addi sp, sp, 64
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
