    .option nopic
    .data
    .align 2
    .globl n
n:
    .word 0
    .text
    .align 1
    .globl bubblesort
    .type bubblesort, @function
bubblesort:
    addi sp, sp, -176
    sw ra, 172(sp)
    sw s0, 168(sp)
    addi s0, sp, 176
    sw a0, -12(s0)
.L_bubblesort_0:
    li t0, 0
    sw t0, -16(s0)
.L_bubblesort_1:
    li t0, 0
    sw t0, -20(s0)
.L_bubblesort_2:
    li t0, 0
    sw t0, -16(s0)
.L_bubblesort_3:
    la t6, n
    lw t0, 0(t6)
    addi t2, t0, -1
    sw t2, -24(s0)
.L_bubblesort_4:
    lw t0, -16(s0)
    lw t1, -24(s0)
    slt t2, t0, t1
    sw t2, -28(s0)
.L_bubblesort_5:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_bubblesort_6:
    lw t0, -32(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -36(s0)
.L_bubblesort_7:
    lw t0, -36(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -40(s0)
.L_bubblesort_8:
    lw t0, -40(s0)
    bne t0, zero, .L_bubblesort_10
.L_bubblesort_9:
    j .L_bubblesort_56
.L_bubblesort_10:
    li t0, 0
    sw t0, -20(s0)
.L_bubblesort_11:
    la t6, n
    lw t0, 0(t6)
    lw t1, -16(s0)
    sub t2, t0, t1
    sw t2, -44(s0)
.L_bubblesort_12:
    lw t0, -44(s0)
    addi t2, t0, -1
    sw t2, -48(s0)
.L_bubblesort_13:
    lw t0, -20(s0)
    lw t1, -48(s0)
    slt t2, t0, t1
    sw t2, -52(s0)
.L_bubblesort_14:
    lw t0, -52(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -56(s0)
.L_bubblesort_15:
    lw t0, -56(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -60(s0)
.L_bubblesort_16:
    lw t0, -60(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -64(s0)
.L_bubblesort_17:
    lw t0, -64(s0)
    bne t0, zero, .L_bubblesort_19
.L_bubblesort_18:
    j .L_bubblesort_52
.L_bubblesort_19:
    li t0, 0
    sw t0, -68(s0)
.L_bubblesort_20:
    lw t0, -68(s0)
    lw t1, -20(s0)
    add t2, t0, t1
    sw t2, -72(s0)
.L_bubblesort_21:
    lw t6, -12(s0)
    lw t0, -72(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -76(s0)
.L_bubblesort_22:
    lw t0, -20(s0)
    addi t2, t0, 1
    sw t2, -80(s0)
.L_bubblesort_23:
    li t0, 0
    sw t0, -84(s0)
.L_bubblesort_24:
    lw t0, -84(s0)
    lw t1, -80(s0)
    add t2, t0, t1
    sw t2, -88(s0)
.L_bubblesort_25:
    lw t6, -12(s0)
    lw t0, -88(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -92(s0)
.L_bubblesort_26:
    lw t0, -76(s0)
    lw t1, -92(s0)
    slt t2, t1, t0
    sw t2, -96(s0)
.L_bubblesort_27:
    lw t0, -96(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -100(s0)
.L_bubblesort_28:
    lw t0, -100(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -104(s0)
.L_bubblesort_29:
    lw t0, -104(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -108(s0)
.L_bubblesort_30:
    lw t0, -108(s0)
    bne t0, zero, .L_bubblesort_32
.L_bubblesort_31:
    j .L_bubblesort_48
.L_bubblesort_32:
    li t0, 0
    sw t0, -112(s0)
.L_bubblesort_33:
    lw t0, -20(s0)
    addi t2, t0, 1
    sw t2, -116(s0)
.L_bubblesort_34:
    li t0, 0
    sw t0, -120(s0)
.L_bubblesort_35:
    lw t0, -120(s0)
    lw t1, -116(s0)
    add t2, t0, t1
    sw t2, -124(s0)
.L_bubblesort_36:
    lw t6, -12(s0)
    lw t0, -124(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -128(s0)
.L_bubblesort_37:
    lw t0, -128(s0)
    sw t0, -112(s0)
.L_bubblesort_38:
    li t0, 0
    sw t0, -132(s0)
.L_bubblesort_39:
    lw t0, -132(s0)
    lw t1, -20(s0)
    add t2, t0, t1
    sw t2, -136(s0)
.L_bubblesort_40:
    lw t6, -12(s0)
    lw t0, -136(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -140(s0)
.L_bubblesort_41:
    lw t0, -20(s0)
    addi t2, t0, 1
    sw t2, -144(s0)
.L_bubblesort_42:
    li t0, 0
    sw t0, -148(s0)
.L_bubblesort_43:
    lw t0, -148(s0)
    lw t1, -144(s0)
    add t2, t0, t1
    sw t2, -152(s0)
.L_bubblesort_44:
    lw t2, -140(s0)
    lw t6, -12(s0)
    lw t0, -152(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_bubblesort_45:
    li t0, 0
    sw t0, -156(s0)
.L_bubblesort_46:
    lw t0, -156(s0)
    lw t1, -20(s0)
    add t2, t0, t1
    sw t2, -160(s0)
.L_bubblesort_47:
    lw t2, -112(s0)
    lw t6, -12(s0)
    lw t0, -160(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_bubblesort_48:
.L_bubblesort_49:
    lw t0, -20(s0)
    addi t2, t0, 1
    sw t2, -164(s0)
.L_bubblesort_50:
    lw t0, -164(s0)
    sw t0, -20(s0)
.L_bubblesort_51:
    j .L_bubblesort_11
.L_bubblesort_52:
.L_bubblesort_53:
    lw t0, -16(s0)
    addi t2, t0, 1
    sw t2, -168(s0)
.L_bubblesort_54:
    lw t0, -168(s0)
    sw t0, -16(s0)
.L_bubblesort_55:
    j .L_bubblesort_3
.L_bubblesort_56:
.L_bubblesort_57:
    li a0, 0
    j .L_bubblesort_exit
.L_bubblesort_exit:
    lw ra, 172(sp)
    lw s0, 168(sp)
    addi sp, sp, 176
    jr ra
    .size bubblesort, .-bubblesort

    .text
    .align 1
    .globl main
    .type main, @function
main:
    addi sp, sp, -96
    sw ra, 92(sp)
    sw s0, 88(sp)
    addi s0, sp, 96
.L_main_0:
    call global
.L_main_1:
    li t0, 10
    la t6, n
    sw t0, 0(t6)
.L_main_2:
    addi t0, s0, -52
    sw t0, -12(s0)
.L_main_3:
    li t2, 4
    lw t6, -12(s0)
    sw t2, 0(t6)
.L_main_4:
    li t2, 3
    lw t6, -12(s0)
    addi t6, t6, 4
    sw t2, 0(t6)
.L_main_5:
    li t2, 9
    lw t6, -12(s0)
    addi t6, t6, 8
    sw t2, 0(t6)
.L_main_6:
    li t2, 2
    lw t6, -12(s0)
    addi t6, t6, 12
    sw t2, 0(t6)
.L_main_7:
    li t2, 0
    lw t6, -12(s0)
    addi t6, t6, 16
    sw t2, 0(t6)
.L_main_8:
    li t2, 1
    lw t6, -12(s0)
    addi t6, t6, 20
    sw t2, 0(t6)
.L_main_9:
    li t2, 6
    lw t6, -12(s0)
    addi t6, t6, 24
    sw t2, 0(t6)
.L_main_10:
    li t2, 5
    lw t6, -12(s0)
    addi t6, t6, 28
    sw t2, 0(t6)
.L_main_11:
    li t2, 7
    lw t6, -12(s0)
    addi t6, t6, 32
    sw t2, 0(t6)
.L_main_12:
    li t2, 8
    lw t6, -12(s0)
    addi t6, t6, 36
    sw t2, 0(t6)
.L_main_13:
    li t0, 0
    sw t0, -56(s0)
.L_main_14:
    lw a0, -12(s0)
    call bubblesort
    sw a0, -60(s0)
.L_main_15:
    lw t0, -60(s0)
    sw t0, -56(s0)
.L_main_16:
    lw t0, -56(s0)
    la t6, n
    lw t1, 0(t6)
    slt t2, t0, t1
    sw t2, -64(s0)
.L_main_17:
    lw t0, -64(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -68(s0)
.L_main_18:
    lw t0, -68(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -72(s0)
.L_main_19:
    lw t0, -72(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -76(s0)
.L_main_20:
    lw t0, -76(s0)
    bne t0, zero, .L_main_22
.L_main_21:
    j .L_main_33
.L_main_22:
    li t0, 0
    sw t0, -80(s0)
.L_main_23:
    li t0, 0
    sw t0, -84(s0)
.L_main_24:
    lw t0, -84(s0)
    lw t1, -56(s0)
    add t2, t0, t1
    sw t2, -88(s0)
.L_main_25:
    lw t6, -12(s0)
    lw t0, -88(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -92(s0)
.L_main_26:
    lw t0, -92(s0)
    sw t0, -80(s0)
.L_main_27:
    lw a0, -80(s0)
    call putint
.L_main_28:
    li t0, 10
    sw t0, -80(s0)
.L_main_29:
    lw a0, -80(s0)
    call putch
.L_main_30:
    lw t0, -56(s0)
    addi t2, t0, 1
    sw t2, -96(s0)
.L_main_31:
    lw t0, -96(s0)
    sw t0, -56(s0)
.L_main_32:
    j .L_main_16
.L_main_33:
.L_main_34:
    li a0, 0
    j .L_main_exit
.L_main_exit:
    lw ra, 92(sp)
    lw s0, 88(sp)
    addi sp, sp, 96
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
    j .L_global_exit
.L_global_exit:
    lw ra, 12(sp)
    lw s0, 8(sp)
    addi sp, sp, 16
    jr ra
    .size global, .-global

    .section .note.GNU-stack,"",@progbits
