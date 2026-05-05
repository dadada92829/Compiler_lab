    .option nopic
    .text
    .align 1
    .globl deepWhileBr
    .type deepWhileBr, @function
deepWhileBr:
    addi sp, sp, -112
    sw ra, 108(sp)
    sw s0, 104(sp)
    addi s0, sp, 112
    sw a0, -12(s0)
    sw a1, -16(s0)
.L_deepWhileBr_0:
    li t0, 0
    sw t0, -20(s0)
.L_deepWhileBr_1:
    lw t0, -12(s0)
    lw t1, -16(s0)
    add t2, t0, t1
    sw t2, -24(s0)
.L_deepWhileBr_2:
    lw t0, -24(s0)
    sw t0, -20(s0)
.L_deepWhileBr_3:
    lw t0, -20(s0)
    li t1, 75
    slt t2, t0, t1
    sw t2, -28(s0)
.L_deepWhileBr_4:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_deepWhileBr_5:
    lw t0, -32(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -36(s0)
.L_deepWhileBr_6:
    lw t0, -36(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -40(s0)
.L_deepWhileBr_7:
    lw t0, -40(s0)
    bne t0, zero, .L_deepWhileBr_9
.L_deepWhileBr_8:
    j .L_deepWhileBr_38
.L_deepWhileBr_9:
    li t0, 0
    sw t0, -44(s0)
.L_deepWhileBr_10:
    li t0, 42
    sw t0, -44(s0)
.L_deepWhileBr_11:
    lw t0, -20(s0)
    li t1, 100
    slt t2, t0, t1
    sw t2, -48(s0)
.L_deepWhileBr_12:
    lw t0, -48(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -52(s0)
.L_deepWhileBr_13:
    lw t0, -52(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -56(s0)
.L_deepWhileBr_14:
    lw t0, -56(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -60(s0)
.L_deepWhileBr_15:
    lw t0, -60(s0)
    bne t0, zero, .L_deepWhileBr_17
.L_deepWhileBr_16:
    j .L_deepWhileBr_36
.L_deepWhileBr_17:
    lw t0, -20(s0)
    lw t1, -44(s0)
    add t2, t0, t1
    sw t2, -64(s0)
.L_deepWhileBr_18:
    lw t0, -64(s0)
    sw t0, -20(s0)
.L_deepWhileBr_19:
    lw t0, -20(s0)
    li t1, 99
    slt t2, t1, t0
    sw t2, -68(s0)
.L_deepWhileBr_20:
    lw t0, -68(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -72(s0)
.L_deepWhileBr_21:
    lw t0, -72(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -76(s0)
.L_deepWhileBr_22:
    lw t0, -76(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -80(s0)
.L_deepWhileBr_23:
    lw t0, -80(s0)
    bne t0, zero, .L_deepWhileBr_25
.L_deepWhileBr_24:
    j .L_deepWhileBr_35
.L_deepWhileBr_25:
    li t0, 0
    sw t0, -84(s0)
.L_deepWhileBr_26:
    li t0, 2
    sw t0, -88(s0)
.L_deepWhileBr_27:
    lw t0, -44(s0)
    lw t1, -88(s0)
    mul t2, t0, t1
    sw t2, -92(s0)
.L_deepWhileBr_28:
    lw t0, -92(s0)
    sw t0, -84(s0)
.L_deepWhileBr_29:
    li t0, 1
    bne t0, zero, .L_deepWhileBr_31
.L_deepWhileBr_30:
    j .L_deepWhileBr_34
.L_deepWhileBr_31:
    li t0, 2
    sw t0, -96(s0)
.L_deepWhileBr_32:
    lw t0, -84(s0)
    lw t1, -96(s0)
    mul t2, t0, t1
    sw t2, -100(s0)
.L_deepWhileBr_33:
    lw t0, -100(s0)
    sw t0, -20(s0)
.L_deepWhileBr_34:
.L_deepWhileBr_35:
.L_deepWhileBr_36:
.L_deepWhileBr_37:
    j .L_deepWhileBr_3
.L_deepWhileBr_38:
.L_deepWhileBr_39:
    lw a0, -20(s0)
    j .L_deepWhileBr_exit
.L_deepWhileBr_exit:
    lw ra, 108(sp)
    lw s0, 104(sp)
    addi sp, sp, 112
    jr ra
    .size deepWhileBr, .-deepWhileBr

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
    li t0, 0
    sw t0, -12(s0)
.L_main_2:
    li t0, 2
    sw t0, -12(s0)
.L_main_3:
    lw a0, -12(s0)
    lw a1, -12(s0)
    call deepWhileBr
    sw a0, -16(s0)
.L_main_4:
    lw a0, -16(s0)
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
