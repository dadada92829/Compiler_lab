    .option nopic
    .text
    .align 1
    .globl main
    .type main, @function
main:
    addi sp, sp, -128
    sw ra, 124(sp)
    sw s0, 120(sp)
    addi s0, sp, 128
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
    li t0, 1
    sw t0, -32(s0)
.L_main_11:
    lw t0, -24(s0)
    lw t1, -32(s0)
    mul t2, t0, t1
    sw t2, -36(s0)
.L_main_12:
    li t0, 2
    sw t0, -40(s0)
.L_main_13:
    lw t0, -36(s0)
    lw t1, -40(s0)
    div t2, t0, t1
    sw t2, -44(s0)
.L_main_14:
    lw t0, -12(s0)
    lw t1, -16(s0)
    sub t2, t0, t1
    sw t2, -48(s0)
.L_main_15:
    lw t0, -44(s0)
    lw t1, -48(s0)
    add t2, t0, t1
    sw t2, -52(s0)
.L_main_16:
    lw t0, -20(s0)
    addi t2, t0, 3
    sw t2, -56(s0)
.L_main_17:
    li t0, 0
    lw t1, -56(s0)
    sub t2, t0, t1
    sw t2, -60(s0)
.L_main_18:
    li t0, 2
    sw t0, -64(s0)
.L_main_19:
    lw t0, -60(s0)
    lw t1, -64(s0)
    rem t2, t0, t1
    sw t2, -68(s0)
.L_main_20:
    lw t0, -52(s0)
    lw t1, -68(s0)
    sub t2, t0, t1
    sw t2, -72(s0)
.L_main_21:
    lw t0, -72(s0)
    sw t0, -28(s0)
.L_main_22:
    lw a0, -28(s0)
    call putint
.L_main_23:
    li t0, 2
    sw t0, -76(s0)
.L_main_24:
    lw t0, -24(s0)
    lw t1, -76(s0)
    rem t2, t0, t1
    sw t2, -80(s0)
.L_main_25:
    lw t0, -80(s0)
    addi t2, t0, 67
    sw t2, -84(s0)
.L_main_26:
    lw t0, -12(s0)
    lw t1, -16(s0)
    sub t2, t0, t1
    sw t2, -88(s0)
.L_main_27:
    li t0, 0
    lw t1, -88(s0)
    sub t2, t0, t1
    sw t2, -92(s0)
.L_main_28:
    lw t0, -84(s0)
    lw t1, -92(s0)
    add t2, t0, t1
    sw t2, -96(s0)
.L_main_29:
    lw t0, -20(s0)
    addi t2, t0, 2
    sw t2, -100(s0)
.L_main_30:
    li t0, 2
    sw t0, -104(s0)
.L_main_31:
    lw t0, -100(s0)
    lw t1, -104(s0)
    rem t2, t0, t1
    sw t2, -108(s0)
.L_main_32:
    li t0, 0
    lw t1, -108(s0)
    sub t2, t0, t1
    sw t2, -112(s0)
.L_main_33:
    lw t0, -96(s0)
    lw t1, -112(s0)
    sub t2, t0, t1
    sw t2, -116(s0)
.L_main_34:
    lw t0, -116(s0)
    sw t0, -28(s0)
.L_main_35:
    lw t0, -28(s0)
    addi t2, t0, 3
    sw t2, -120(s0)
.L_main_36:
    lw t0, -120(s0)
    sw t0, -28(s0)
.L_main_37:
    lw a0, -28(s0)
    call putint
.L_main_38:
    li a0, 0
    j .L_main_exit
.L_main_exit:
    lw ra, 124(sp)
    lw s0, 120(sp)
    addi sp, sp, 128
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
