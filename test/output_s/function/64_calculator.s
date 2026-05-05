    .option nopic
    .data
    .align 2
    .globl ints
ints:
    .zero 40000
    .align 2
    .globl intt
intt:
    .word 0
    .align 2
    .globl chas
chas:
    .zero 40000
    .align 2
    .globl chat
chat:
    .word 0
    .align 2
    .globl i
i:
    .word 0
    .align 2
    .globl ii
ii:
    .word 0
    .align 2
    .globl c
c:
    .word 0
    .align 2
    .globl get
get:
    .zero 40000
    .align 2
    .globl get2
get2:
    .zero 40000
    .text
    .align 1
    .globl isdigit
    .type isdigit, @function
isdigit:
    addi sp, sp, -48
    sw ra, 44(sp)
    sw s0, 40(sp)
    addi s0, sp, 48
    sw a0, -12(s0)
.L_isdigit_0:
    lw t0, -12(s0)
    li t1, 48
    slt t2, t0, t1
    xori t2, t2, 1
    sw t2, -16(s0)
.L_isdigit_1:
    lw t0, -16(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -20(s0)
.L_isdigit_2:
    li t0, 0
    sw t0, -24(s0)
.L_isdigit_3:
    lw t0, -20(s0)
    bne t0, zero, .L_isdigit_5
.L_isdigit_4:
    j .L_isdigit_8
.L_isdigit_5:
    lw t0, -12(s0)
    li t1, 57
    slt t2, t1, t0
    xori t2, t2, 1
    sw t2, -28(s0)
.L_isdigit_6:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_isdigit_7:
    lw t0, -32(s0)
    sw t0, -24(s0)
.L_isdigit_8:
.L_isdigit_9:
    lw t0, -24(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -36(s0)
.L_isdigit_10:
    lw t0, -36(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -40(s0)
.L_isdigit_11:
    lw t0, -40(s0)
    bne t0, zero, .L_isdigit_13
.L_isdigit_12:
    j .L_isdigit_14
.L_isdigit_13:
    li a0, 1
    j .L_isdigit_exit
.L_isdigit_14:
.L_isdigit_15:
    li a0, 0
    j .L_isdigit_exit
.L_isdigit_exit:
    lw ra, 44(sp)
    lw s0, 40(sp)
    addi sp, sp, 48
    jr ra
    .size isdigit, .-isdigit

    .text
    .align 1
    .globl power
    .type power, @function
power:
    addi sp, sp, -48
    sw ra, 44(sp)
    sw s0, 40(sp)
    addi s0, sp, 48
    sw a0, -12(s0)
    sw a1, -16(s0)
.L_power_0:
    li t0, 1
    sw t0, -20(s0)
.L_power_1:
    lw t0, -16(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -24(s0)
.L_power_2:
    lw t0, -24(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -28(s0)
.L_power_3:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_power_4:
    lw t0, -32(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -36(s0)
.L_power_5:
    lw t0, -36(s0)
    bne t0, zero, .L_power_7
.L_power_6:
    j .L_power_12
.L_power_7:
    lw t0, -20(s0)
    lw t1, -12(s0)
    mul t2, t0, t1
    sw t2, -40(s0)
.L_power_8:
    lw t0, -40(s0)
    sw t0, -20(s0)
.L_power_9:
    lw t0, -16(s0)
    addi t2, t0, -1
    sw t2, -44(s0)
.L_power_10:
    lw t0, -44(s0)
    sw t0, -16(s0)
.L_power_11:
    j .L_power_1
.L_power_12:
.L_power_13:
    lw a0, -20(s0)
    j .L_power_exit
.L_power_exit:
    lw ra, 44(sp)
    lw s0, 40(sp)
    addi sp, sp, 48
    jr ra
    .size power, .-power

    .text
    .align 1
    .globl getstr
    .type getstr, @function
getstr:
    addi sp, sp, -80
    sw ra, 76(sp)
    sw s0, 72(sp)
    addi s0, sp, 80
    sw a0, -12(s0)
.L_getstr_0:
    call getch
    sw a0, -16(s0)
.L_getstr_1:
    lw t0, -16(s0)
    sw t0, -20(s0)
.L_getstr_2:
    li t0, 0
    sw t0, -24(s0)
.L_getstr_3:
    lw t0, -20(s0)
    li t1, 13
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -28(s0)
.L_getstr_4:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_getstr_5:
    li t0, 0
    sw t0, -36(s0)
.L_getstr_6:
    lw t0, -32(s0)
    bne t0, zero, .L_getstr_8
.L_getstr_7:
    j .L_getstr_11
.L_getstr_8:
    lw t0, -20(s0)
    li t1, 10
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -40(s0)
.L_getstr_9:
    lw t0, -40(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -44(s0)
.L_getstr_10:
    lw t0, -44(s0)
    sw t0, -36(s0)
.L_getstr_11:
.L_getstr_12:
    lw t0, -36(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -48(s0)
.L_getstr_13:
    lw t0, -48(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -52(s0)
.L_getstr_14:
    lw t0, -52(s0)
    bne t0, zero, .L_getstr_16
.L_getstr_15:
    j .L_getstr_24
.L_getstr_16:
    li t0, 0
    sw t0, -56(s0)
.L_getstr_17:
    lw t0, -56(s0)
    lw t1, -24(s0)
    add t2, t0, t1
    sw t2, -60(s0)
.L_getstr_18:
    lw t2, -20(s0)
    lw t6, -12(s0)
    lw t0, -60(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_getstr_19:
    lw t0, -24(s0)
    addi t2, t0, 1
    sw t2, -64(s0)
.L_getstr_20:
    lw t0, -64(s0)
    sw t0, -24(s0)
.L_getstr_21:
    call getch
    sw a0, -68(s0)
.L_getstr_22:
    lw t0, -68(s0)
    sw t0, -20(s0)
.L_getstr_23:
    j .L_getstr_3
.L_getstr_24:
.L_getstr_25:
    lw a0, -24(s0)
    j .L_getstr_exit
.L_getstr_exit:
    lw ra, 76(sp)
    lw s0, 72(sp)
    addi sp, sp, 80
    jr ra
    .size getstr, .-getstr

    .text
    .align 1
    .globl intpush
    .type intpush, @function
intpush:
    addi sp, sp, -32
    sw ra, 28(sp)
    sw s0, 24(sp)
    addi s0, sp, 32
    sw a0, -12(s0)
.L_intpush_0:
    la t6, intt
    lw t0, 0(t6)
    addi t2, t0, 1
    sw t2, -16(s0)
.L_intpush_1:
    lw t0, -16(s0)
    la t6, intt
    sw t0, 0(t6)
.L_intpush_2:
    li t0, 0
    sw t0, -20(s0)
.L_intpush_3:
    lw t0, -20(s0)
    la t6, intt
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -24(s0)
.L_intpush_4:
    lw t2, -12(s0)
    la t6, ints
    lw t0, -24(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_intpush_5:
    j .L_intpush_exit
.L_intpush_exit:
    lw ra, 28(sp)
    lw s0, 24(sp)
    addi sp, sp, 32
    jr ra
    .size intpush, .-intpush

    .text
    .align 1
    .globl chapush
    .type chapush, @function
chapush:
    addi sp, sp, -32
    sw ra, 28(sp)
    sw s0, 24(sp)
    addi s0, sp, 32
    sw a0, -12(s0)
.L_chapush_0:
    la t6, chat
    lw t0, 0(t6)
    addi t2, t0, 1
    sw t2, -16(s0)
.L_chapush_1:
    lw t0, -16(s0)
    la t6, chat
    sw t0, 0(t6)
.L_chapush_2:
    li t0, 0
    sw t0, -20(s0)
.L_chapush_3:
    lw t0, -20(s0)
    la t6, chat
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -24(s0)
.L_chapush_4:
    lw t2, -12(s0)
    la t6, chas
    lw t0, -24(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_chapush_5:
    j .L_chapush_exit
.L_chapush_exit:
    lw ra, 28(sp)
    lw s0, 24(sp)
    addi sp, sp, 32
    jr ra
    .size chapush, .-chapush

    .text
    .align 1
    .globl intpop
    .type intpop, @function
intpop:
    addi sp, sp, -32
    sw ra, 28(sp)
    sw s0, 24(sp)
    addi s0, sp, 32
.L_intpop_0:
    la t6, intt
    lw t0, 0(t6)
    addi t2, t0, -1
    sw t2, -12(s0)
.L_intpop_1:
    lw t0, -12(s0)
    la t6, intt
    sw t0, 0(t6)
.L_intpop_2:
    la t6, intt
    lw t0, 0(t6)
    addi t2, t0, 1
    sw t2, -16(s0)
.L_intpop_3:
    li t0, 0
    sw t0, -20(s0)
.L_intpop_4:
    lw t0, -20(s0)
    lw t1, -16(s0)
    add t2, t0, t1
    sw t2, -24(s0)
.L_intpop_5:
    la t6, ints
    lw t0, -24(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -28(s0)
.L_intpop_6:
    lw a0, -28(s0)
    j .L_intpop_exit
.L_intpop_exit:
    lw ra, 28(sp)
    lw s0, 24(sp)
    addi sp, sp, 32
    jr ra
    .size intpop, .-intpop

    .text
    .align 1
    .globl chapop
    .type chapop, @function
chapop:
    addi sp, sp, -32
    sw ra, 28(sp)
    sw s0, 24(sp)
    addi s0, sp, 32
.L_chapop_0:
    la t6, chat
    lw t0, 0(t6)
    addi t2, t0, -1
    sw t2, -12(s0)
.L_chapop_1:
    lw t0, -12(s0)
    la t6, chat
    sw t0, 0(t6)
.L_chapop_2:
    la t6, chat
    lw t0, 0(t6)
    addi t2, t0, 1
    sw t2, -16(s0)
.L_chapop_3:
    li t0, 0
    sw t0, -20(s0)
.L_chapop_4:
    lw t0, -20(s0)
    lw t1, -16(s0)
    add t2, t0, t1
    sw t2, -24(s0)
.L_chapop_5:
    la t6, chas
    lw t0, -24(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -28(s0)
.L_chapop_6:
    lw a0, -28(s0)
    j .L_chapop_exit
.L_chapop_exit:
    lw ra, 28(sp)
    lw s0, 24(sp)
    addi sp, sp, 32
    jr ra
    .size chapop, .-chapop

    .text
    .align 1
    .globl intadd
    .type intadd, @function
intadd:
    addi sp, sp, -64
    sw ra, 60(sp)
    sw s0, 56(sp)
    addi s0, sp, 64
    sw a0, -12(s0)
.L_intadd_0:
    li t0, 0
    sw t0, -16(s0)
.L_intadd_1:
    lw t0, -16(s0)
    la t6, intt
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -20(s0)
.L_intadd_2:
    la t6, ints
    lw t0, -20(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -24(s0)
.L_intadd_3:
    li t0, 10
    sw t0, -28(s0)
.L_intadd_4:
    lw t0, -24(s0)
    lw t1, -28(s0)
    mul t2, t0, t1
    sw t2, -32(s0)
.L_intadd_5:
    li t0, 0
    sw t0, -36(s0)
.L_intadd_6:
    lw t0, -36(s0)
    la t6, intt
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -40(s0)
.L_intadd_7:
    lw t2, -32(s0)
    la t6, ints
    lw t0, -40(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_intadd_8:
    li t0, 0
    sw t0, -44(s0)
.L_intadd_9:
    lw t0, -44(s0)
    la t6, intt
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -48(s0)
.L_intadd_10:
    la t6, ints
    lw t0, -48(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -52(s0)
.L_intadd_11:
    lw t0, -52(s0)
    lw t1, -12(s0)
    add t2, t0, t1
    sw t2, -56(s0)
.L_intadd_12:
    li t0, 0
    sw t0, -60(s0)
.L_intadd_13:
    lw t0, -60(s0)
    la t6, intt
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -64(s0)
.L_intadd_14:
    lw t2, -56(s0)
    la t6, ints
    lw t0, -64(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_intadd_15:
    j .L_intadd_exit
.L_intadd_exit:
    lw ra, 60(sp)
    lw s0, 56(sp)
    addi sp, sp, 64
    jr ra
    .size intadd, .-intadd

    .text
    .align 1
    .globl find
    .type find, @function
find:
    addi sp, sp, -64
    sw ra, 60(sp)
    sw s0, 56(sp)
    addi s0, sp, 64
.L_find_0:
    call chapop
    sw a0, -12(s0)
.L_find_1:
    lw t0, -12(s0)
    la t6, c
    sw t0, 0(t6)
.L_find_2:
    li t0, 0
    sw t0, -16(s0)
.L_find_3:
    lw t0, -16(s0)
    la t6, ii
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -20(s0)
.L_find_4:
    li t2, 32
    la t6, get2
    lw t0, -20(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_find_5:
    la t6, ii
    lw t0, 0(t6)
    addi t2, t0, 1
    sw t2, -24(s0)
.L_find_6:
    li t0, 0
    sw t0, -28(s0)
.L_find_7:
    lw t0, -28(s0)
    lw t1, -24(s0)
    add t2, t0, t1
    sw t2, -32(s0)
.L_find_8:
    la t6, c
    lw t2, 0(t6)
    la t6, get2
    lw t0, -32(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_find_9:
    la t6, ii
    lw t0, 0(t6)
    addi t2, t0, 2
    sw t2, -36(s0)
.L_find_10:
    lw t0, -36(s0)
    la t6, ii
    sw t0, 0(t6)
.L_find_11:
    la t6, chat
    lw t0, 0(t6)
    li t1, 0
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -40(s0)
.L_find_12:
    lw t0, -40(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -44(s0)
.L_find_13:
    lw t0, -44(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -48(s0)
.L_find_14:
    lw t0, -48(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -52(s0)
.L_find_15:
    lw t0, -52(s0)
    bne t0, zero, .L_find_17
.L_find_16:
    j .L_find_18
.L_find_17:
    li a0, 0
    j .L_find_exit
.L_find_18:
.L_find_19:
    li a0, 1
    j .L_find_exit
.L_find_exit:
    lw ra, 60(sp)
    lw s0, 56(sp)
    addi sp, sp, 64
    jr ra
    .size find, .-find

    .text
    .align 1
    .globl main
    .type main, @function
main:
    addi sp, sp, -1728
    sw ra, 1724(sp)
    sw s0, 1720(sp)
    addi s0, sp, 1728
.L_main_0:
    call global
.L_main_1:
    li t0, 0
    la t6, intt
    sw t0, 0(t6)
.L_main_2:
    li t0, 0
    la t6, chat
    sw t0, 0(t6)
.L_main_3:
    la a0, get
    call getstr
    sw a0, -12(s0)
.L_main_4:
    lw t0, -12(s0)
    sw t0, -16(s0)
.L_main_5:
    la t6, i
    lw t0, 0(t6)
    lw t1, -16(s0)
    slt t2, t0, t1
    sw t2, -20(s0)
.L_main_6:
    lw t0, -20(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -24(s0)
.L_main_7:
    lw t0, -24(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -28(s0)
.L_main_8:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_main_9:
    lw t0, -32(s0)
    bne t0, zero, .L_main_11
.L_main_10:
    j .L_main_438
.L_main_11:
    li t0, 0
    sw t0, -36(s0)
.L_main_12:
    lw t0, -36(s0)
    la t6, i
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -40(s0)
.L_main_13:
    la t6, get
    lw t0, -40(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -44(s0)
.L_main_14:
    lw a0, -44(s0)
    call isdigit
    sw a0, -48(s0)
.L_main_15:
    lw t0, -48(s0)
    li t1, 1
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -52(s0)
.L_main_16:
    lw t0, -52(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -56(s0)
.L_main_17:
    lw t0, -56(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -60(s0)
.L_main_18:
    lw t0, -60(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -64(s0)
.L_main_19:
    lw t0, -64(s0)
    bne t0, zero, .L_main_21
.L_main_20:
    j .L_main_30
.L_main_21:
    li t0, 0
    sw t0, -68(s0)
.L_main_22:
    lw t0, -68(s0)
    la t6, i
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -72(s0)
.L_main_23:
    la t6, get
    lw t0, -72(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -76(s0)
.L_main_24:
    li t0, 0
    sw t0, -80(s0)
.L_main_25:
    lw t0, -80(s0)
    la t6, ii
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -84(s0)
.L_main_26:
    lw t2, -76(s0)
    la t6, get2
    lw t0, -84(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_main_27:
    la t6, ii
    lw t0, 0(t6)
    addi t2, t0, 1
    sw t2, -88(s0)
.L_main_28:
    lw t0, -88(s0)
    la t6, ii
    sw t0, 0(t6)
.L_main_29:
    j .L_main_434
.L_main_30:
.L_main_31:
    li t0, 0
    sw t0, -92(s0)
.L_main_32:
    lw t0, -92(s0)
    la t6, i
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -96(s0)
.L_main_33:
    la t6, get
    lw t0, -96(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -100(s0)
.L_main_34:
    lw t0, -100(s0)
    li t1, 40
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -104(s0)
.L_main_35:
    lw t0, -104(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -108(s0)
.L_main_36:
    lw t0, -108(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -112(s0)
.L_main_37:
    lw t0, -112(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -116(s0)
.L_main_38:
    lw t0, -116(s0)
    bne t0, zero, .L_main_40
.L_main_39:
    j .L_main_41
.L_main_40:
    li a0, 40
    call chapush
.L_main_41:
.L_main_42:
    li t0, 0
    sw t0, -120(s0)
.L_main_43:
    lw t0, -120(s0)
    la t6, i
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -124(s0)
.L_main_44:
    la t6, get
    lw t0, -124(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -128(s0)
.L_main_45:
    lw t0, -128(s0)
    li t1, 94
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -132(s0)
.L_main_46:
    lw t0, -132(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -136(s0)
.L_main_47:
    lw t0, -136(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -140(s0)
.L_main_48:
    lw t0, -140(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -144(s0)
.L_main_49:
    lw t0, -144(s0)
    bne t0, zero, .L_main_51
.L_main_50:
    j .L_main_52
.L_main_51:
    li a0, 94
    call chapush
.L_main_52:
.L_main_53:
    li t0, 0
    sw t0, -148(s0)
.L_main_54:
    lw t0, -148(s0)
    la t6, i
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -152(s0)
.L_main_55:
    la t6, get
    lw t0, -152(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -156(s0)
.L_main_56:
    lw t0, -156(s0)
    li t1, 41
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -160(s0)
.L_main_57:
    lw t0, -160(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -164(s0)
.L_main_58:
    lw t0, -164(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -168(s0)
.L_main_59:
    lw t0, -168(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -172(s0)
.L_main_60:
    lw t0, -172(s0)
    bne t0, zero, .L_main_62
.L_main_61:
    j .L_main_83
.L_main_62:
    call chapop
    sw a0, -176(s0)
.L_main_63:
    lw t0, -176(s0)
    la t6, c
    sw t0, 0(t6)
.L_main_64:
    la t6, c
    lw t0, 0(t6)
    li t1, 40
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -180(s0)
.L_main_65:
    lw t0, -180(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -184(s0)
.L_main_66:
    lw t0, -184(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -188(s0)
.L_main_67:
    lw t0, -188(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -192(s0)
.L_main_68:
    lw t0, -192(s0)
    bne t0, zero, .L_main_70
.L_main_69:
    j .L_main_82
.L_main_70:
    li t0, 0
    sw t0, -196(s0)
.L_main_71:
    lw t0, -196(s0)
    la t6, ii
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -200(s0)
.L_main_72:
    li t2, 32
    la t6, get2
    lw t0, -200(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_main_73:
    la t6, ii
    lw t0, 0(t6)
    addi t2, t0, 1
    sw t2, -204(s0)
.L_main_74:
    li t0, 0
    sw t0, -208(s0)
.L_main_75:
    lw t0, -208(s0)
    lw t1, -204(s0)
    add t2, t0, t1
    sw t2, -212(s0)
.L_main_76:
    la t6, c
    lw t2, 0(t6)
    la t6, get2
    lw t0, -212(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_main_77:
    la t6, ii
    lw t0, 0(t6)
    addi t2, t0, 2
    sw t2, -216(s0)
.L_main_78:
    lw t0, -216(s0)
    la t6, ii
    sw t0, 0(t6)
.L_main_79:
    call chapop
    sw a0, -220(s0)
.L_main_80:
    lw t0, -220(s0)
    la t6, c
    sw t0, 0(t6)
.L_main_81:
    j .L_main_64
.L_main_82:
.L_main_83:
.L_main_84:
    li t0, 0
    sw t0, -224(s0)
.L_main_85:
    lw t0, -224(s0)
    la t6, i
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -228(s0)
.L_main_86:
    la t6, get
    lw t0, -228(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -232(s0)
.L_main_87:
    lw t0, -232(s0)
    li t1, 43
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -236(s0)
.L_main_88:
    lw t0, -236(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -240(s0)
.L_main_89:
    lw t0, -240(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -244(s0)
.L_main_90:
    lw t0, -244(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -248(s0)
.L_main_91:
    lw t0, -248(s0)
    bne t0, zero, .L_main_93
.L_main_92:
    j .L_main_164
.L_main_93:
    li t0, 0
    sw t0, -252(s0)
.L_main_94:
    lw t0, -252(s0)
    la t6, chat
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -256(s0)
.L_main_95:
    la t6, chas
    lw t0, -256(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -260(s0)
.L_main_96:
    lw t0, -260(s0)
    li t1, 43
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -264(s0)
.L_main_97:
    lw t0, -264(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -268(s0)
.L_main_98:
    lw t0, -268(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -272(s0)
.L_main_99:
    li t0, 1
    sw t0, -276(s0)
.L_main_100:
    lw t0, -272(s0)
    bne t0, zero, .L_main_148
.L_main_101:
    li t0, 0
    sw t0, -280(s0)
.L_main_102:
    lw t0, -280(s0)
    la t6, chat
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -284(s0)
.L_main_103:
    la t6, chas
    lw t0, -284(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -288(s0)
.L_main_104:
    lw t0, -288(s0)
    li t1, 45
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -292(s0)
.L_main_105:
    lw t0, -292(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -296(s0)
.L_main_106:
    lw t0, -296(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -300(s0)
.L_main_107:
    li t0, 1
    sw t0, -304(s0)
.L_main_108:
    lw t0, -300(s0)
    bne t0, zero, .L_main_146
.L_main_109:
    li t0, 0
    sw t0, -308(s0)
.L_main_110:
    lw t0, -308(s0)
    la t6, chat
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -312(s0)
.L_main_111:
    la t6, chas
    lw t0, -312(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -316(s0)
.L_main_112:
    lw t0, -316(s0)
    li t1, 42
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -320(s0)
.L_main_113:
    lw t0, -320(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -324(s0)
.L_main_114:
    lw t0, -324(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -328(s0)
.L_main_115:
    li t0, 1
    sw t0, -332(s0)
.L_main_116:
    lw t0, -328(s0)
    bne t0, zero, .L_main_144
.L_main_117:
    li t0, 0
    sw t0, -336(s0)
.L_main_118:
    lw t0, -336(s0)
    la t6, chat
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -340(s0)
.L_main_119:
    la t6, chas
    lw t0, -340(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -344(s0)
.L_main_120:
    lw t0, -344(s0)
    li t1, 47
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -348(s0)
.L_main_121:
    lw t0, -348(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -352(s0)
.L_main_122:
    lw t0, -352(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -356(s0)
.L_main_123:
    li t0, 1
    sw t0, -360(s0)
.L_main_124:
    lw t0, -356(s0)
    bne t0, zero, .L_main_142
.L_main_125:
    li t0, 0
    sw t0, -364(s0)
.L_main_126:
    lw t0, -364(s0)
    la t6, chat
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -368(s0)
.L_main_127:
    la t6, chas
    lw t0, -368(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -372(s0)
.L_main_128:
    lw t0, -372(s0)
    li t1, 37
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -376(s0)
.L_main_129:
    lw t0, -376(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -380(s0)
.L_main_130:
    lw t0, -380(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -384(s0)
.L_main_131:
    li t0, 1
    sw t0, -388(s0)
.L_main_132:
    lw t0, -384(s0)
    bne t0, zero, .L_main_140
.L_main_133:
    li t0, 0
    sw t0, -392(s0)
.L_main_134:
    lw t0, -392(s0)
    la t6, chat
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -396(s0)
.L_main_135:
    la t6, chas
    lw t0, -396(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -400(s0)
.L_main_136:
    lw t0, -400(s0)
    li t1, 94
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -404(s0)
.L_main_137:
    lw t0, -404(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -408(s0)
.L_main_138:
    lw t0, -408(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -412(s0)
.L_main_139:
    lw t0, -412(s0)
    sw t0, -388(s0)
.L_main_140:
.L_main_141:
    lw t0, -388(s0)
    sw t0, -360(s0)
.L_main_142:
.L_main_143:
    lw t0, -360(s0)
    sw t0, -332(s0)
.L_main_144:
.L_main_145:
    lw t0, -332(s0)
    sw t0, -304(s0)
.L_main_146:
.L_main_147:
    lw t0, -304(s0)
    sw t0, -276(s0)
.L_main_148:
.L_main_149:
    lw t0, -276(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -416(s0)
.L_main_150:
    lw t0, -416(s0)
    bne t0, zero, .L_main_152
.L_main_151:
    j .L_main_162
.L_main_152:
    call find
    sw a0, -420(s0)
.L_main_153:
    lw t0, -420(s0)
    li t1, 0
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -424(s0)
.L_main_154:
    lw t0, -424(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -428(s0)
.L_main_155:
    lw t0, -428(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -432(s0)
.L_main_156:
    lw t0, -432(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -436(s0)
.L_main_157:
    lw t0, -436(s0)
    bne t0, zero, .L_main_159
.L_main_158:
    j .L_main_160
.L_main_159:
    j .L_main_162
.L_main_160:
.L_main_161:
    j .L_main_93
.L_main_162:
.L_main_163:
    li a0, 43
    call chapush
.L_main_164:
.L_main_165:
    li t0, 0
    sw t0, -440(s0)
.L_main_166:
    lw t0, -440(s0)
    la t6, i
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -444(s0)
.L_main_167:
    la t6, get
    lw t0, -444(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -448(s0)
.L_main_168:
    lw t0, -448(s0)
    li t1, 45
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -452(s0)
.L_main_169:
    lw t0, -452(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -456(s0)
.L_main_170:
    lw t0, -456(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -460(s0)
.L_main_171:
    lw t0, -460(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -464(s0)
.L_main_172:
    lw t0, -464(s0)
    bne t0, zero, .L_main_174
.L_main_173:
    j .L_main_245
.L_main_174:
    li t0, 0
    sw t0, -468(s0)
.L_main_175:
    lw t0, -468(s0)
    la t6, chat
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -472(s0)
.L_main_176:
    la t6, chas
    lw t0, -472(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -476(s0)
.L_main_177:
    lw t0, -476(s0)
    li t1, 43
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -480(s0)
.L_main_178:
    lw t0, -480(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -484(s0)
.L_main_179:
    lw t0, -484(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -488(s0)
.L_main_180:
    li t0, 1
    sw t0, -492(s0)
.L_main_181:
    lw t0, -488(s0)
    bne t0, zero, .L_main_229
.L_main_182:
    li t0, 0
    sw t0, -496(s0)
.L_main_183:
    lw t0, -496(s0)
    la t6, chat
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -500(s0)
.L_main_184:
    la t6, chas
    lw t0, -500(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -504(s0)
.L_main_185:
    lw t0, -504(s0)
    li t1, 45
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -508(s0)
.L_main_186:
    lw t0, -508(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -512(s0)
.L_main_187:
    lw t0, -512(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -516(s0)
.L_main_188:
    li t0, 1
    sw t0, -520(s0)
.L_main_189:
    lw t0, -516(s0)
    bne t0, zero, .L_main_227
.L_main_190:
    li t0, 0
    sw t0, -524(s0)
.L_main_191:
    lw t0, -524(s0)
    la t6, chat
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -528(s0)
.L_main_192:
    la t6, chas
    lw t0, -528(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -532(s0)
.L_main_193:
    lw t0, -532(s0)
    li t1, 42
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -536(s0)
.L_main_194:
    lw t0, -536(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -540(s0)
.L_main_195:
    lw t0, -540(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -544(s0)
.L_main_196:
    li t0, 1
    sw t0, -548(s0)
.L_main_197:
    lw t0, -544(s0)
    bne t0, zero, .L_main_225
.L_main_198:
    li t0, 0
    sw t0, -552(s0)
.L_main_199:
    lw t0, -552(s0)
    la t6, chat
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -556(s0)
.L_main_200:
    la t6, chas
    lw t0, -556(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -560(s0)
.L_main_201:
    lw t0, -560(s0)
    li t1, 47
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -564(s0)
.L_main_202:
    lw t0, -564(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -568(s0)
.L_main_203:
    lw t0, -568(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -572(s0)
.L_main_204:
    li t0, 1
    sw t0, -576(s0)
.L_main_205:
    lw t0, -572(s0)
    bne t0, zero, .L_main_223
.L_main_206:
    li t0, 0
    sw t0, -580(s0)
.L_main_207:
    lw t0, -580(s0)
    la t6, chat
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -584(s0)
.L_main_208:
    la t6, chas
    lw t0, -584(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -588(s0)
.L_main_209:
    lw t0, -588(s0)
    li t1, 37
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -592(s0)
.L_main_210:
    lw t0, -592(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -596(s0)
.L_main_211:
    lw t0, -596(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -600(s0)
.L_main_212:
    li t0, 1
    sw t0, -604(s0)
.L_main_213:
    lw t0, -600(s0)
    bne t0, zero, .L_main_221
.L_main_214:
    li t0, 0
    sw t0, -608(s0)
.L_main_215:
    lw t0, -608(s0)
    la t6, chat
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -612(s0)
.L_main_216:
    la t6, chas
    lw t0, -612(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -616(s0)
.L_main_217:
    lw t0, -616(s0)
    li t1, 94
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -620(s0)
.L_main_218:
    lw t0, -620(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -624(s0)
.L_main_219:
    lw t0, -624(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -628(s0)
.L_main_220:
    lw t0, -628(s0)
    sw t0, -604(s0)
.L_main_221:
.L_main_222:
    lw t0, -604(s0)
    sw t0, -576(s0)
.L_main_223:
.L_main_224:
    lw t0, -576(s0)
    sw t0, -548(s0)
.L_main_225:
.L_main_226:
    lw t0, -548(s0)
    sw t0, -520(s0)
.L_main_227:
.L_main_228:
    lw t0, -520(s0)
    sw t0, -492(s0)
.L_main_229:
.L_main_230:
    lw t0, -492(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -632(s0)
.L_main_231:
    lw t0, -632(s0)
    bne t0, zero, .L_main_233
.L_main_232:
    j .L_main_243
.L_main_233:
    call find
    sw a0, -636(s0)
.L_main_234:
    lw t0, -636(s0)
    li t1, 0
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -640(s0)
.L_main_235:
    lw t0, -640(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -644(s0)
.L_main_236:
    lw t0, -644(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -648(s0)
.L_main_237:
    lw t0, -648(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -652(s0)
.L_main_238:
    lw t0, -652(s0)
    bne t0, zero, .L_main_240
.L_main_239:
    j .L_main_241
.L_main_240:
    j .L_main_243
.L_main_241:
.L_main_242:
    j .L_main_174
.L_main_243:
.L_main_244:
    li a0, 45
    call chapush
.L_main_245:
.L_main_246:
    li t0, 0
    sw t0, -656(s0)
.L_main_247:
    lw t0, -656(s0)
    la t6, i
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -660(s0)
.L_main_248:
    la t6, get
    lw t0, -660(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -664(s0)
.L_main_249:
    lw t0, -664(s0)
    li t1, 42
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -668(s0)
.L_main_250:
    lw t0, -668(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -672(s0)
.L_main_251:
    lw t0, -672(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -676(s0)
.L_main_252:
    lw t0, -676(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -680(s0)
.L_main_253:
    lw t0, -680(s0)
    bne t0, zero, .L_main_255
.L_main_254:
    j .L_main_306
.L_main_255:
    li t0, 0
    sw t0, -684(s0)
.L_main_256:
    lw t0, -684(s0)
    la t6, chat
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -688(s0)
.L_main_257:
    la t6, chas
    lw t0, -688(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -692(s0)
.L_main_258:
    lw t0, -692(s0)
    li t1, 42
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -696(s0)
.L_main_259:
    lw t0, -696(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -700(s0)
.L_main_260:
    lw t0, -700(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -704(s0)
.L_main_261:
    li t0, 1
    sw t0, -708(s0)
.L_main_262:
    lw t0, -704(s0)
    bne t0, zero, .L_main_290
.L_main_263:
    li t0, 0
    sw t0, -712(s0)
.L_main_264:
    lw t0, -712(s0)
    la t6, chat
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -716(s0)
.L_main_265:
    la t6, chas
    lw t0, -716(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -720(s0)
.L_main_266:
    lw t0, -720(s0)
    li t1, 47
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -724(s0)
.L_main_267:
    lw t0, -724(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -728(s0)
.L_main_268:
    lw t0, -728(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -732(s0)
.L_main_269:
    li t0, 1
    sw t0, -736(s0)
.L_main_270:
    lw t0, -732(s0)
    bne t0, zero, .L_main_288
.L_main_271:
    li t0, 0
    sw t0, -740(s0)
.L_main_272:
    lw t0, -740(s0)
    la t6, chat
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -744(s0)
.L_main_273:
    la t6, chas
    lw t0, -744(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -748(s0)
.L_main_274:
    lw t0, -748(s0)
    li t1, 37
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -752(s0)
.L_main_275:
    lw t0, -752(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -756(s0)
.L_main_276:
    lw t0, -756(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -760(s0)
.L_main_277:
    li t0, 1
    sw t0, -764(s0)
.L_main_278:
    lw t0, -760(s0)
    bne t0, zero, .L_main_286
.L_main_279:
    li t0, 0
    sw t0, -768(s0)
.L_main_280:
    lw t0, -768(s0)
    la t6, chat
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -772(s0)
.L_main_281:
    la t6, chas
    lw t0, -772(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -776(s0)
.L_main_282:
    lw t0, -776(s0)
    li t1, 94
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -780(s0)
.L_main_283:
    lw t0, -780(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -784(s0)
.L_main_284:
    lw t0, -784(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -788(s0)
.L_main_285:
    lw t0, -788(s0)
    sw t0, -764(s0)
.L_main_286:
.L_main_287:
    lw t0, -764(s0)
    sw t0, -736(s0)
.L_main_288:
.L_main_289:
    lw t0, -736(s0)
    sw t0, -708(s0)
.L_main_290:
.L_main_291:
    lw t0, -708(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -792(s0)
.L_main_292:
    lw t0, -792(s0)
    bne t0, zero, .L_main_294
.L_main_293:
    j .L_main_304
.L_main_294:
    call find
    sw a0, -796(s0)
.L_main_295:
    lw t0, -796(s0)
    li t1, 0
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -800(s0)
.L_main_296:
    lw t0, -800(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -804(s0)
.L_main_297:
    lw t0, -804(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -808(s0)
.L_main_298:
    lw t0, -808(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -812(s0)
.L_main_299:
    lw t0, -812(s0)
    bne t0, zero, .L_main_301
.L_main_300:
    j .L_main_302
.L_main_301:
    j .L_main_304
.L_main_302:
.L_main_303:
    j .L_main_255
.L_main_304:
.L_main_305:
    li a0, 42
    call chapush
.L_main_306:
.L_main_307:
    li t0, 0
    sw t0, -816(s0)
.L_main_308:
    lw t0, -816(s0)
    la t6, i
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -820(s0)
.L_main_309:
    la t6, get
    lw t0, -820(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -824(s0)
.L_main_310:
    lw t0, -824(s0)
    li t1, 47
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -828(s0)
.L_main_311:
    lw t0, -828(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -832(s0)
.L_main_312:
    lw t0, -832(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -836(s0)
.L_main_313:
    lw t0, -836(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -840(s0)
.L_main_314:
    lw t0, -840(s0)
    bne t0, zero, .L_main_316
.L_main_315:
    j .L_main_367
.L_main_316:
    li t0, 0
    sw t0, -844(s0)
.L_main_317:
    lw t0, -844(s0)
    la t6, chat
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -848(s0)
.L_main_318:
    la t6, chas
    lw t0, -848(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -852(s0)
.L_main_319:
    lw t0, -852(s0)
    li t1, 42
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -856(s0)
.L_main_320:
    lw t0, -856(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -860(s0)
.L_main_321:
    lw t0, -860(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -864(s0)
.L_main_322:
    li t0, 1
    sw t0, -868(s0)
.L_main_323:
    lw t0, -864(s0)
    bne t0, zero, .L_main_351
.L_main_324:
    li t0, 0
    sw t0, -872(s0)
.L_main_325:
    lw t0, -872(s0)
    la t6, chat
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -876(s0)
.L_main_326:
    la t6, chas
    lw t0, -876(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -880(s0)
.L_main_327:
    lw t0, -880(s0)
    li t1, 47
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -884(s0)
.L_main_328:
    lw t0, -884(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -888(s0)
.L_main_329:
    lw t0, -888(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -892(s0)
.L_main_330:
    li t0, 1
    sw t0, -896(s0)
.L_main_331:
    lw t0, -892(s0)
    bne t0, zero, .L_main_349
.L_main_332:
    li t0, 0
    sw t0, -900(s0)
.L_main_333:
    lw t0, -900(s0)
    la t6, chat
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -904(s0)
.L_main_334:
    la t6, chas
    lw t0, -904(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -908(s0)
.L_main_335:
    lw t0, -908(s0)
    li t1, 37
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -912(s0)
.L_main_336:
    lw t0, -912(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -916(s0)
.L_main_337:
    lw t0, -916(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -920(s0)
.L_main_338:
    li t0, 1
    sw t0, -924(s0)
.L_main_339:
    lw t0, -920(s0)
    bne t0, zero, .L_main_347
.L_main_340:
    li t0, 0
    sw t0, -928(s0)
.L_main_341:
    lw t0, -928(s0)
    la t6, chat
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -932(s0)
.L_main_342:
    la t6, chas
    lw t0, -932(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -936(s0)
.L_main_343:
    lw t0, -936(s0)
    li t1, 94
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -940(s0)
.L_main_344:
    lw t0, -940(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -944(s0)
.L_main_345:
    lw t0, -944(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -948(s0)
.L_main_346:
    lw t0, -948(s0)
    sw t0, -924(s0)
.L_main_347:
.L_main_348:
    lw t0, -924(s0)
    sw t0, -896(s0)
.L_main_349:
.L_main_350:
    lw t0, -896(s0)
    sw t0, -868(s0)
.L_main_351:
.L_main_352:
    lw t0, -868(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -952(s0)
.L_main_353:
    lw t0, -952(s0)
    bne t0, zero, .L_main_355
.L_main_354:
    j .L_main_365
.L_main_355:
    call find
    sw a0, -956(s0)
.L_main_356:
    lw t0, -956(s0)
    li t1, 0
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -960(s0)
.L_main_357:
    lw t0, -960(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -964(s0)
.L_main_358:
    lw t0, -964(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -968(s0)
.L_main_359:
    lw t0, -968(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -972(s0)
.L_main_360:
    lw t0, -972(s0)
    bne t0, zero, .L_main_362
.L_main_361:
    j .L_main_363
.L_main_362:
    j .L_main_365
.L_main_363:
.L_main_364:
    j .L_main_316
.L_main_365:
.L_main_366:
    li a0, 47
    call chapush
.L_main_367:
.L_main_368:
    li t0, 0
    sw t0, -976(s0)
.L_main_369:
    lw t0, -976(s0)
    la t6, i
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -980(s0)
.L_main_370:
    la t6, get
    lw t0, -980(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -984(s0)
.L_main_371:
    lw t0, -984(s0)
    li t1, 37
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -988(s0)
.L_main_372:
    lw t0, -988(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -992(s0)
.L_main_373:
    lw t0, -992(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -996(s0)
.L_main_374:
    lw t0, -996(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1000(s0)
.L_main_375:
    lw t0, -1000(s0)
    bne t0, zero, .L_main_377
.L_main_376:
    j .L_main_428
.L_main_377:
    li t0, 0
    sw t0, -1004(s0)
.L_main_378:
    lw t0, -1004(s0)
    la t6, chat
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -1008(s0)
.L_main_379:
    la t6, chas
    lw t0, -1008(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -1012(s0)
.L_main_380:
    lw t0, -1012(s0)
    li t1, 42
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -1016(s0)
.L_main_381:
    lw t0, -1016(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1020(s0)
.L_main_382:
    lw t0, -1020(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1024(s0)
.L_main_383:
    li t0, 1
    sw t0, -1028(s0)
.L_main_384:
    lw t0, -1024(s0)
    bne t0, zero, .L_main_412
.L_main_385:
    li t0, 0
    sw t0, -1032(s0)
.L_main_386:
    lw t0, -1032(s0)
    la t6, chat
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -1036(s0)
.L_main_387:
    la t6, chas
    lw t0, -1036(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -1040(s0)
.L_main_388:
    lw t0, -1040(s0)
    li t1, 47
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -1044(s0)
.L_main_389:
    lw t0, -1044(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1048(s0)
.L_main_390:
    lw t0, -1048(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1052(s0)
.L_main_391:
    li t0, 1
    sw t0, -1056(s0)
.L_main_392:
    lw t0, -1052(s0)
    bne t0, zero, .L_main_410
.L_main_393:
    li t0, 0
    sw t0, -1060(s0)
.L_main_394:
    lw t0, -1060(s0)
    la t6, chat
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -1064(s0)
.L_main_395:
    la t6, chas
    lw t0, -1064(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -1068(s0)
.L_main_396:
    lw t0, -1068(s0)
    li t1, 37
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -1072(s0)
.L_main_397:
    lw t0, -1072(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1076(s0)
.L_main_398:
    lw t0, -1076(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1080(s0)
.L_main_399:
    li t0, 1
    sw t0, -1084(s0)
.L_main_400:
    lw t0, -1080(s0)
    bne t0, zero, .L_main_408
.L_main_401:
    li t0, 0
    sw t0, -1088(s0)
.L_main_402:
    lw t0, -1088(s0)
    la t6, chat
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -1092(s0)
.L_main_403:
    la t6, chas
    lw t0, -1092(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -1096(s0)
.L_main_404:
    lw t0, -1096(s0)
    li t1, 94
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -1100(s0)
.L_main_405:
    lw t0, -1100(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1104(s0)
.L_main_406:
    lw t0, -1104(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1108(s0)
.L_main_407:
    lw t0, -1108(s0)
    sw t0, -1084(s0)
.L_main_408:
.L_main_409:
    lw t0, -1084(s0)
    sw t0, -1056(s0)
.L_main_410:
.L_main_411:
    lw t0, -1056(s0)
    sw t0, -1028(s0)
.L_main_412:
.L_main_413:
    lw t0, -1028(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1112(s0)
.L_main_414:
    lw t0, -1112(s0)
    bne t0, zero, .L_main_416
.L_main_415:
    j .L_main_426
.L_main_416:
    call find
    sw a0, -1116(s0)
.L_main_417:
    lw t0, -1116(s0)
    li t1, 0
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -1120(s0)
.L_main_418:
    lw t0, -1120(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1124(s0)
.L_main_419:
    lw t0, -1124(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1128(s0)
.L_main_420:
    lw t0, -1128(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1132(s0)
.L_main_421:
    lw t0, -1132(s0)
    bne t0, zero, .L_main_423
.L_main_422:
    j .L_main_424
.L_main_423:
    j .L_main_426
.L_main_424:
.L_main_425:
    j .L_main_377
.L_main_426:
.L_main_427:
    li a0, 37
    call chapush
.L_main_428:
.L_main_429:
    li t0, 0
    sw t0, -1136(s0)
.L_main_430:
    lw t0, -1136(s0)
    la t6, ii
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -1140(s0)
.L_main_431:
    li t2, 32
    la t6, get2
    lw t0, -1140(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_main_432:
    la t6, ii
    lw t0, 0(t6)
    addi t2, t0, 1
    sw t2, -1144(s0)
.L_main_433:
    lw t0, -1144(s0)
    la t6, ii
    sw t0, 0(t6)
.L_main_434:
.L_main_435:
    la t6, i
    lw t0, 0(t6)
    addi t2, t0, 1
    sw t2, -1148(s0)
.L_main_436:
    lw t0, -1148(s0)
    la t6, i
    sw t0, 0(t6)
.L_main_437:
    j .L_main_5
.L_main_438:
.L_main_439:
    la t6, chat
    lw t0, 0(t6)
    li t1, 0
    slt t2, t1, t0
    sw t2, -1152(s0)
.L_main_440:
    lw t0, -1152(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1156(s0)
.L_main_441:
    lw t0, -1156(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1160(s0)
.L_main_442:
    lw t0, -1160(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1164(s0)
.L_main_443:
    lw t0, -1164(s0)
    bne t0, zero, .L_main_445
.L_main_444:
    j .L_main_457
.L_main_445:
    call chapop
    sw a0, -1168(s0)
.L_main_446:
    lw t0, -1168(s0)
    sw t0, -1172(s0)
.L_main_447:
    li t0, 0
    sw t0, -1176(s0)
.L_main_448:
    lw t0, -1176(s0)
    la t6, ii
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -1180(s0)
.L_main_449:
    li t2, 32
    la t6, get2
    lw t0, -1180(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_main_450:
    la t6, ii
    lw t0, 0(t6)
    addi t2, t0, 1
    sw t2, -1184(s0)
.L_main_451:
    li t0, 0
    sw t0, -1188(s0)
.L_main_452:
    lw t0, -1188(s0)
    lw t1, -1184(s0)
    add t2, t0, t1
    sw t2, -1192(s0)
.L_main_453:
    lw t2, -1172(s0)
    la t6, get2
    lw t0, -1192(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_main_454:
    la t6, ii
    lw t0, 0(t6)
    addi t2, t0, 2
    sw t2, -1196(s0)
.L_main_455:
    lw t0, -1196(s0)
    la t6, ii
    sw t0, 0(t6)
.L_main_456:
    j .L_main_439
.L_main_457:
.L_main_458:
    li t0, 0
    sw t0, -1200(s0)
.L_main_459:
    lw t0, -1200(s0)
    la t6, ii
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -1204(s0)
.L_main_460:
    li t2, 64
    la t6, get2
    lw t0, -1204(s0)
    slli t0, t0, 2
    add t6, t6, t0
    sw t2, 0(t6)
.L_main_461:
    li t0, 1
    la t6, i
    sw t0, 0(t6)
.L_main_462:
    li t0, 0
    sw t0, -1208(s0)
.L_main_463:
    lw t0, -1208(s0)
    la t6, i
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -1212(s0)
.L_main_464:
    la t6, get2
    lw t0, -1212(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -1216(s0)
.L_main_465:
    lw t0, -1216(s0)
    li t1, 64
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1220(s0)
.L_main_466:
    lw t0, -1220(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1224(s0)
.L_main_467:
    lw t0, -1224(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1228(s0)
.L_main_468:
    lw t0, -1228(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1232(s0)
.L_main_469:
    lw t0, -1232(s0)
    bne t0, zero, .L_main_471
.L_main_470:
    j .L_main_653
.L_main_471:
    li t0, 0
    sw t0, -1236(s0)
.L_main_472:
    lw t0, -1236(s0)
    la t6, i
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -1240(s0)
.L_main_473:
    la t6, get2
    lw t0, -1240(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -1244(s0)
.L_main_474:
    lw t0, -1244(s0)
    li t1, 43
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -1248(s0)
.L_main_475:
    lw t0, -1248(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1252(s0)
.L_main_476:
    lw t0, -1252(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1256(s0)
.L_main_477:
    li t0, 1
    sw t0, -1260(s0)
.L_main_478:
    lw t0, -1256(s0)
    bne t0, zero, .L_main_526
.L_main_479:
    li t0, 0
    sw t0, -1264(s0)
.L_main_480:
    lw t0, -1264(s0)
    la t6, i
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -1268(s0)
.L_main_481:
    la t6, get2
    lw t0, -1268(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -1272(s0)
.L_main_482:
    lw t0, -1272(s0)
    li t1, 45
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -1276(s0)
.L_main_483:
    lw t0, -1276(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1280(s0)
.L_main_484:
    lw t0, -1280(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1284(s0)
.L_main_485:
    li t0, 1
    sw t0, -1288(s0)
.L_main_486:
    lw t0, -1284(s0)
    bne t0, zero, .L_main_524
.L_main_487:
    li t0, 0
    sw t0, -1292(s0)
.L_main_488:
    lw t0, -1292(s0)
    la t6, i
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -1296(s0)
.L_main_489:
    la t6, get2
    lw t0, -1296(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -1300(s0)
.L_main_490:
    lw t0, -1300(s0)
    li t1, 42
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -1304(s0)
.L_main_491:
    lw t0, -1304(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1308(s0)
.L_main_492:
    lw t0, -1308(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1312(s0)
.L_main_493:
    li t0, 1
    sw t0, -1316(s0)
.L_main_494:
    lw t0, -1312(s0)
    bne t0, zero, .L_main_522
.L_main_495:
    li t0, 0
    sw t0, -1320(s0)
.L_main_496:
    lw t0, -1320(s0)
    la t6, i
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -1324(s0)
.L_main_497:
    la t6, get2
    lw t0, -1324(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -1328(s0)
.L_main_498:
    lw t0, -1328(s0)
    li t1, 47
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -1332(s0)
.L_main_499:
    lw t0, -1332(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1336(s0)
.L_main_500:
    lw t0, -1336(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1340(s0)
.L_main_501:
    li t0, 1
    sw t0, -1344(s0)
.L_main_502:
    lw t0, -1340(s0)
    bne t0, zero, .L_main_520
.L_main_503:
    li t0, 0
    sw t0, -1348(s0)
.L_main_504:
    lw t0, -1348(s0)
    la t6, i
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -1352(s0)
.L_main_505:
    la t6, get2
    lw t0, -1352(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -1356(s0)
.L_main_506:
    lw t0, -1356(s0)
    li t1, 37
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -1360(s0)
.L_main_507:
    lw t0, -1360(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1364(s0)
.L_main_508:
    lw t0, -1364(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1368(s0)
.L_main_509:
    li t0, 1
    sw t0, -1372(s0)
.L_main_510:
    lw t0, -1368(s0)
    bne t0, zero, .L_main_518
.L_main_511:
    li t0, 0
    sw t0, -1376(s0)
.L_main_512:
    lw t0, -1376(s0)
    la t6, i
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -1380(s0)
.L_main_513:
    la t6, get2
    lw t0, -1380(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -1384(s0)
.L_main_514:
    lw t0, -1384(s0)
    li t1, 94
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -1388(s0)
.L_main_515:
    lw t0, -1388(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1392(s0)
.L_main_516:
    lw t0, -1392(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1396(s0)
.L_main_517:
    lw t0, -1396(s0)
    sw t0, -1372(s0)
.L_main_518:
.L_main_519:
    lw t0, -1372(s0)
    sw t0, -1344(s0)
.L_main_520:
.L_main_521:
    lw t0, -1344(s0)
    sw t0, -1316(s0)
.L_main_522:
.L_main_523:
    lw t0, -1316(s0)
    sw t0, -1288(s0)
.L_main_524:
.L_main_525:
    lw t0, -1288(s0)
    sw t0, -1260(s0)
.L_main_526:
.L_main_527:
    lw t0, -1260(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1400(s0)
.L_main_528:
    lw t0, -1400(s0)
    bne t0, zero, .L_main_530
.L_main_529:
    j .L_main_609
.L_main_530:
    call intpop
    sw a0, -1404(s0)
.L_main_531:
    lw t0, -1404(s0)
    sw t0, -1408(s0)
.L_main_532:
    call intpop
    sw a0, -1412(s0)
.L_main_533:
    lw t0, -1412(s0)
    sw t0, -1416(s0)
.L_main_534:
    li t0, 0
    sw t0, -1420(s0)
.L_main_535:
    li t0, 0
    sw t0, -1424(s0)
.L_main_536:
    lw t0, -1424(s0)
    la t6, i
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -1428(s0)
.L_main_537:
    la t6, get2
    lw t0, -1428(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -1432(s0)
.L_main_538:
    lw t0, -1432(s0)
    li t1, 43
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -1436(s0)
.L_main_539:
    lw t0, -1436(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1440(s0)
.L_main_540:
    lw t0, -1440(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1444(s0)
.L_main_541:
    lw t0, -1444(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1448(s0)
.L_main_542:
    lw t0, -1448(s0)
    bne t0, zero, .L_main_544
.L_main_543:
    j .L_main_546
.L_main_544:
    lw t0, -1408(s0)
    lw t1, -1416(s0)
    add t2, t0, t1
    sw t2, -1452(s0)
.L_main_545:
    lw t0, -1452(s0)
    sw t0, -1420(s0)
.L_main_546:
.L_main_547:
    li t0, 0
    sw t0, -1456(s0)
.L_main_548:
    lw t0, -1456(s0)
    la t6, i
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -1460(s0)
.L_main_549:
    la t6, get2
    lw t0, -1460(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -1464(s0)
.L_main_550:
    lw t0, -1464(s0)
    li t1, 45
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -1468(s0)
.L_main_551:
    lw t0, -1468(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1472(s0)
.L_main_552:
    lw t0, -1472(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1476(s0)
.L_main_553:
    lw t0, -1476(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1480(s0)
.L_main_554:
    lw t0, -1480(s0)
    bne t0, zero, .L_main_556
.L_main_555:
    j .L_main_558
.L_main_556:
    lw t0, -1416(s0)
    lw t1, -1408(s0)
    sub t2, t0, t1
    sw t2, -1484(s0)
.L_main_557:
    lw t0, -1484(s0)
    sw t0, -1420(s0)
.L_main_558:
.L_main_559:
    li t0, 0
    sw t0, -1488(s0)
.L_main_560:
    lw t0, -1488(s0)
    la t6, i
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -1492(s0)
.L_main_561:
    la t6, get2
    lw t0, -1492(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -1496(s0)
.L_main_562:
    lw t0, -1496(s0)
    li t1, 42
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -1500(s0)
.L_main_563:
    lw t0, -1500(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1504(s0)
.L_main_564:
    lw t0, -1504(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1508(s0)
.L_main_565:
    lw t0, -1508(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1512(s0)
.L_main_566:
    lw t0, -1512(s0)
    bne t0, zero, .L_main_568
.L_main_567:
    j .L_main_570
.L_main_568:
    lw t0, -1408(s0)
    lw t1, -1416(s0)
    mul t2, t0, t1
    sw t2, -1516(s0)
.L_main_569:
    lw t0, -1516(s0)
    sw t0, -1420(s0)
.L_main_570:
.L_main_571:
    li t0, 0
    sw t0, -1520(s0)
.L_main_572:
    lw t0, -1520(s0)
    la t6, i
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -1524(s0)
.L_main_573:
    la t6, get2
    lw t0, -1524(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -1528(s0)
.L_main_574:
    lw t0, -1528(s0)
    li t1, 47
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -1532(s0)
.L_main_575:
    lw t0, -1532(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1536(s0)
.L_main_576:
    lw t0, -1536(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1540(s0)
.L_main_577:
    lw t0, -1540(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1544(s0)
.L_main_578:
    lw t0, -1544(s0)
    bne t0, zero, .L_main_580
.L_main_579:
    j .L_main_582
.L_main_580:
    lw t0, -1416(s0)
    lw t1, -1408(s0)
    div t2, t0, t1
    sw t2, -1548(s0)
.L_main_581:
    lw t0, -1548(s0)
    sw t0, -1420(s0)
.L_main_582:
.L_main_583:
    li t0, 0
    sw t0, -1552(s0)
.L_main_584:
    lw t0, -1552(s0)
    la t6, i
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -1556(s0)
.L_main_585:
    la t6, get2
    lw t0, -1556(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -1560(s0)
.L_main_586:
    lw t0, -1560(s0)
    li t1, 37
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -1564(s0)
.L_main_587:
    lw t0, -1564(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1568(s0)
.L_main_588:
    lw t0, -1568(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1572(s0)
.L_main_589:
    lw t0, -1572(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1576(s0)
.L_main_590:
    lw t0, -1576(s0)
    bne t0, zero, .L_main_592
.L_main_591:
    j .L_main_594
.L_main_592:
    lw t0, -1416(s0)
    lw t1, -1408(s0)
    rem t2, t0, t1
    sw t2, -1580(s0)
.L_main_593:
    lw t0, -1580(s0)
    sw t0, -1420(s0)
.L_main_594:
.L_main_595:
    li t0, 0
    sw t0, -1584(s0)
.L_main_596:
    lw t0, -1584(s0)
    la t6, i
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -1588(s0)
.L_main_597:
    la t6, get2
    lw t0, -1588(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -1592(s0)
.L_main_598:
    lw t0, -1592(s0)
    li t1, 94
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -1596(s0)
.L_main_599:
    lw t0, -1596(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1600(s0)
.L_main_600:
    lw t0, -1600(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1604(s0)
.L_main_601:
    lw t0, -1604(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1608(s0)
.L_main_602:
    lw t0, -1608(s0)
    bne t0, zero, .L_main_604
.L_main_603:
    j .L_main_606
.L_main_604:
    lw a0, -1416(s0)
    lw a1, -1408(s0)
    call power
    sw a0, -1612(s0)
.L_main_605:
    lw t0, -1612(s0)
    sw t0, -1420(s0)
.L_main_606:
.L_main_607:
    lw a0, -1420(s0)
    call intpush
.L_main_608:
    j .L_main_649
.L_main_609:
.L_main_610:
    li t0, 0
    sw t0, -1616(s0)
.L_main_611:
    lw t0, -1616(s0)
    la t6, i
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -1620(s0)
.L_main_612:
    la t6, get2
    lw t0, -1620(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -1624(s0)
.L_main_613:
    lw t0, -1624(s0)
    li t1, 32
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1628(s0)
.L_main_614:
    lw t0, -1628(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1632(s0)
.L_main_615:
    lw t0, -1632(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1636(s0)
.L_main_616:
    lw t0, -1636(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1640(s0)
.L_main_617:
    lw t0, -1640(s0)
    bne t0, zero, .L_main_619
.L_main_618:
    j .L_main_648
.L_main_619:
    li t0, 0
    sw t0, -1644(s0)
.L_main_620:
    lw t0, -1644(s0)
    la t6, i
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -1648(s0)
.L_main_621:
    la t6, get2
    lw t0, -1648(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -1652(s0)
.L_main_622:
    lw t0, -1652(s0)
    addi t2, t0, -48
    sw t2, -1656(s0)
.L_main_623:
    lw a0, -1656(s0)
    call intpush
.L_main_624:
    li t0, 1
    la t6, ii
    sw t0, 0(t6)
.L_main_625:
    la t6, i
    lw t0, 0(t6)
    la t6, ii
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -1660(s0)
.L_main_626:
    li t0, 0
    sw t0, -1664(s0)
.L_main_627:
    lw t0, -1664(s0)
    lw t1, -1660(s0)
    add t2, t0, t1
    sw t2, -1668(s0)
.L_main_628:
    la t6, get2
    lw t0, -1668(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -1672(s0)
.L_main_629:
    lw t0, -1672(s0)
    li t1, 32
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1676(s0)
.L_main_630:
    lw t0, -1676(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1680(s0)
.L_main_631:
    lw t0, -1680(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1684(s0)
.L_main_632:
    lw t0, -1684(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -1688(s0)
.L_main_633:
    lw t0, -1688(s0)
    bne t0, zero, .L_main_635
.L_main_634:
    j .L_main_644
.L_main_635:
    la t6, i
    lw t0, 0(t6)
    la t6, ii
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -1692(s0)
.L_main_636:
    li t0, 0
    sw t0, -1696(s0)
.L_main_637:
    lw t0, -1696(s0)
    lw t1, -1692(s0)
    add t2, t0, t1
    sw t2, -1700(s0)
.L_main_638:
    la t6, get2
    lw t0, -1700(s0)
    slli t0, t0, 2
    add t6, t6, t0
    lw t0, 0(t6)
    sw t0, -1704(s0)
.L_main_639:
    lw t0, -1704(s0)
    addi t2, t0, -48
    sw t2, -1708(s0)
.L_main_640:
    lw a0, -1708(s0)
    call intadd
.L_main_641:
    la t6, ii
    lw t0, 0(t6)
    addi t2, t0, 1
    sw t2, -1712(s0)
.L_main_642:
    lw t0, -1712(s0)
    la t6, ii
    sw t0, 0(t6)
.L_main_643:
    j .L_main_625
.L_main_644:
.L_main_645:
    la t6, i
    lw t0, 0(t6)
    la t6, ii
    lw t1, 0(t6)
    add t2, t0, t1
    sw t2, -1716(s0)
.L_main_646:
    lw t0, -1716(s0)
    addi t2, t0, -1
    sw t2, -1720(s0)
.L_main_647:
    lw t0, -1720(s0)
    la t6, i
    sw t0, 0(t6)
.L_main_648:
.L_main_649:
.L_main_650:
    la t6, i
    lw t0, 0(t6)
    addi t2, t0, 1
    sw t2, -1724(s0)
.L_main_651:
    lw t0, -1724(s0)
    la t6, i
    sw t0, 0(t6)
.L_main_652:
    j .L_main_462
.L_main_653:
.L_main_654:
    la t6, ints
    addi t6, t6, 4
    lw t0, 0(t6)
    sw t0, -1728(s0)
.L_main_655:
    lw a0, -1728(s0)
    call putint
.L_main_656:
    li a0, 0
    j .L_main_exit
.L_main_exit:
    lw ra, 1724(sp)
    lw s0, 1720(sp)
    addi sp, sp, 1728
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
    la t6, intt
    sw t0, 0(t6)
.L_global_1:
    li t0, 0
    la t6, chat
    sw t0, 0(t6)
.L_global_2:
    li t0, 0
    la t6, i
    sw t0, 0(t6)
.L_global_3:
    li t0, 1
    la t6, ii
    sw t0, 0(t6)
.L_global_4:
    li t0, 0
    la t6, c
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
