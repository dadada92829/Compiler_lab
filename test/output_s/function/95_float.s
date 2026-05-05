    .option nopic
    .text
    .align 1
    .globl float_abs
    .type float_abs, @function
float_abs:
    addi sp, sp, -48
    sw ra, 44(sp)
    sw s0, 40(sp)
    addi s0, sp, 48
    fsw fa0, -12(s0)
.L_float_abs_0:
    flw ft0, -12(s0)
    li t6, 0
    fmv.w.x ft1, t6
    flt.s t2, ft0, ft1
    fcvt.s.w ft2, t2
    fsw ft2, -16(s0)
.L_float_abs_1:
    flw ft0, -16(s0)
    li t6, 0
    fmv.w.x ft1, t6
    feq.s t2, ft0, ft1
    xori t2, t2, 1
    fcvt.s.w ft2, t2
    fsw ft2, -20(s0)
.L_float_abs_2:
    flw ft0, -20(s0)
    fcvt.w.s t0, ft0, rtz
    sw t0, -24(s0)
.L_float_abs_3:
    lw t0, -24(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -28(s0)
.L_float_abs_4:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_float_abs_5:
    lw t0, -32(s0)
    bne t0, zero, .L_float_abs_7
.L_float_abs_6:
    j .L_float_abs_9
.L_float_abs_7:
    li t6, 0
    fmv.w.x ft0, t6
    flw ft1, -12(s0)
    fsub.s ft2, ft0, ft1
    fsw ft2, -36(s0)
.L_float_abs_8:
    flw fa0, -36(s0)
    j .L_float_abs_exit
.L_float_abs_9:
.L_float_abs_10:
    flw fa0, -12(s0)
    j .L_float_abs_exit
.L_float_abs_exit:
    lw ra, 44(sp)
    lw s0, 40(sp)
    addi sp, sp, 48
    jr ra
    .size float_abs, .-float_abs

    .text
    .align 1
    .globl circle_area
    .type circle_area, @function
circle_area:
    addi sp, sp, -48
    sw ra, 44(sp)
    sw s0, 40(sp)
    addi s0, sp, 48
    sw a0, -12(s0)
.L_circle_area_0:
    lw t0, -12(s0)
    fcvt.s.w ft0, t0
    fsw ft0, -16(s0)
.L_circle_area_1:
    li t6, 1078530011
    fmv.w.x ft0, t6
    flw ft1, -16(s0)
    fmul.s ft2, ft0, ft1
    fsw ft2, -20(s0)
.L_circle_area_2:
    lw t0, -12(s0)
    fcvt.s.w ft0, t0
    fsw ft0, -24(s0)
.L_circle_area_3:
    flw ft0, -20(s0)
    flw ft1, -24(s0)
    fmul.s ft2, ft0, ft1
    fsw ft2, -28(s0)
.L_circle_area_4:
    lw t0, -12(s0)
    lw t1, -12(s0)
    mul t2, t0, t1
    sw t2, -32(s0)
.L_circle_area_5:
    lw t0, -32(s0)
    fcvt.s.w ft0, t0
    fsw ft0, -36(s0)
.L_circle_area_6:
    flw ft0, -36(s0)
    li t6, 1078530011
    fmv.w.x ft1, t6
    fmul.s ft2, ft0, ft1
    fsw ft2, -40(s0)
.L_circle_area_7:
    flw ft0, -28(s0)
    flw ft1, -40(s0)
    fadd.s ft2, ft0, ft1
    fsw ft2, -44(s0)
.L_circle_area_8:
    flw ft0, -44(s0)
    li t6, 1073741824
    fmv.w.x ft1, t6
    fdiv.s ft2, ft0, ft1
    fsw ft2, -48(s0)
.L_circle_area_9:
    flw fa0, -48(s0)
    j .L_circle_area_exit
.L_circle_area_exit:
    lw ra, 44(sp)
    lw s0, 40(sp)
    addi sp, sp, 48
    jr ra
    .size circle_area, .-circle_area

    .text
    .align 1
    .globl float_eq
    .type float_eq, @function
float_eq:
    addi sp, sp, -48
    sw ra, 44(sp)
    sw s0, 40(sp)
    addi s0, sp, 48
    fsw fa0, -12(s0)
    fsw fa1, -16(s0)
.L_float_eq_0:
    flw ft0, -12(s0)
    flw ft1, -16(s0)
    fsub.s ft2, ft0, ft1
    fsw ft2, -20(s0)
.L_float_eq_1:
    flw fa0, -20(s0)
    call float_abs
    fsw fa0, -24(s0)
.L_float_eq_2:
    flw ft0, -24(s0)
    li t6, 897988541
    fmv.w.x ft1, t6
    flt.s t2, ft0, ft1
    fcvt.s.w ft2, t2
    fsw ft2, -28(s0)
.L_float_eq_3:
    flw ft0, -28(s0)
    li t6, 0
    fmv.w.x ft1, t6
    feq.s t2, ft0, ft1
    xori t2, t2, 1
    fcvt.s.w ft2, t2
    fsw ft2, -32(s0)
.L_float_eq_4:
    flw ft0, -32(s0)
    fcvt.w.s t0, ft0, rtz
    sw t0, -36(s0)
.L_float_eq_5:
    lw t0, -36(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -40(s0)
.L_float_eq_6:
    lw t0, -40(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -44(s0)
.L_float_eq_7:
    lw t0, -44(s0)
    bne t0, zero, .L_float_eq_9
.L_float_eq_8:
    j .L_float_eq_11
.L_float_eq_9:
    li a0, 1
    j .L_float_eq_exit
.L_float_eq_10:
    j .L_float_eq_13
.L_float_eq_11:
.L_float_eq_12:
    li a0, 0
    j .L_float_eq_exit
.L_float_eq_13:
.L_float_eq_14:
    li a0, 0
    j .L_float_eq_exit
.L_float_eq_exit:
    lw ra, 44(sp)
    lw s0, 40(sp)
    addi sp, sp, 48
    jr ra
    .size float_eq, .-float_eq

    .text
    .align 1
    .globl error
    .type error, @function
error:
    addi sp, sp, -16
    sw ra, 12(sp)
    sw s0, 8(sp)
    addi s0, sp, 16
.L_error_0:
    li a0, 101
    call putch
.L_error_1:
    li a0, 114
    call putch
.L_error_2:
    li a0, 114
    call putch
.L_error_3:
    li a0, 111
    call putch
.L_error_4:
    li a0, 114
    call putch
.L_error_5:
    li a0, 10
    call putch
.L_error_6:
    j .L_error_exit
.L_error_exit:
    lw ra, 12(sp)
    lw s0, 8(sp)
    addi sp, sp, 16
    jr ra
    .size error, .-error

    .text
    .align 1
    .globl ok
    .type ok, @function
ok:
    addi sp, sp, -16
    sw ra, 12(sp)
    sw s0, 8(sp)
    addi s0, sp, 16
.L_ok_0:
    li a0, 111
    call putch
.L_ok_1:
    li a0, 107
    call putch
.L_ok_2:
    li a0, 10
    call putch
.L_ok_3:
    j .L_ok_exit
.L_ok_exit:
    lw ra, 12(sp)
    lw s0, 8(sp)
    addi sp, sp, 16
    jr ra
    .size ok, .-ok

    .text
    .align 1
    .globl assert
    .type assert, @function
assert:
    addi sp, sp, -32
    sw ra, 28(sp)
    sw s0, 24(sp)
    addi s0, sp, 32
    sw a0, -12(s0)
.L_assert_0:
    lw t0, -12(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -16(s0)
.L_assert_1:
    lw t0, -16(s0)
    li t1, 0
    xor t2, t0, t1
    sltiu t2, t2, 1
    sw t2, -20(s0)
.L_assert_2:
    lw t0, -20(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -24(s0)
.L_assert_3:
    lw t0, -24(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -28(s0)
.L_assert_4:
    lw t0, -28(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -32(s0)
.L_assert_5:
    lw t0, -32(s0)
    bne t0, zero, .L_assert_7
.L_assert_6:
    j .L_assert_9
.L_assert_7:
    call error
.L_assert_8:
    j .L_assert_11
.L_assert_9:
.L_assert_10:
    call ok
.L_assert_11:
.L_assert_12:
    j .L_assert_exit
.L_assert_exit:
    lw ra, 28(sp)
    lw s0, 24(sp)
    addi sp, sp, 32
    jr ra
    .size assert, .-assert

    .text
    .align 1
    .globl assert_not
    .type assert_not, @function
assert_not:
    addi sp, sp, -32
    sw ra, 28(sp)
    sw s0, 24(sp)
    addi s0, sp, 32
    sw a0, -12(s0)
.L_assert_not_0:
    lw t0, -12(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -16(s0)
.L_assert_not_1:
    lw t0, -16(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -20(s0)
.L_assert_not_2:
    lw t0, -20(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -24(s0)
.L_assert_not_3:
    lw t0, -24(s0)
    bne t0, zero, .L_assert_not_5
.L_assert_not_4:
    j .L_assert_not_7
.L_assert_not_5:
    call error
.L_assert_not_6:
    j .L_assert_not_9
.L_assert_not_7:
.L_assert_not_8:
    call ok
.L_assert_not_9:
.L_assert_not_10:
    j .L_assert_not_exit
.L_assert_not_exit:
    lw ra, 28(sp)
    lw s0, 24(sp)
    addi sp, sp, 32
    jr ra
    .size assert_not, .-assert_not

    .text
    .align 1
    .globl main
    .type main, @function
main:
    addi sp, sp, -208
    sw ra, 204(sp)
    sw s0, 200(sp)
    addi s0, sp, 208
.L_main_0:
    call global
.L_main_1:
    li t6, -1110651699
    fmv.w.x ft0, t6
    fsw ft0, -12(s0)
.L_main_2:
    li t6, 1033895936
    fmv.w.x fa0, t6
    li t6, -956241920
    fmv.w.x fa1, t6
    call float_eq
    sw a0, -16(s0)
.L_main_3:
    lw a0, -16(s0)
    call assert_not
.L_main_4:
    li t6, 1119752446
    fmv.w.x fa0, t6
    li t6, 1107966695
    fmv.w.x fa1, t6
    call float_eq
    sw a0, -20(s0)
.L_main_5:
    lw a0, -20(s0)
    call assert_not
.L_main_6:
    li t6, 1107966695
    fmv.w.x fa0, t6
    li t6, 1107966695
    fmv.w.x fa1, t6
    call float_eq
    sw a0, -24(s0)
.L_main_7:
    lw a0, -24(s0)
    call assert
.L_main_8:
    li a0, 5
    call circle_area
    fsw fa0, -28(s0)
.L_main_9:
    li a0, 5
    call circle_area
    fsw fa0, -32(s0)
.L_main_10:
    flw fa0, -28(s0)
    flw fa1, -32(s0)
    call float_eq
    sw a0, -36(s0)
.L_main_11:
    lw a0, -36(s0)
    call assert
.L_main_12:
    li t6, 1130954752
    fmv.w.x fa0, t6
    li t6, 1166012416
    fmv.w.x fa1, t6
    call float_eq
    sw a0, -40(s0)
.L_main_13:
    lw a0, -40(s0)
    call assert_not
.L_main_14:
    li t0, 1
    bne t0, zero, .L_main_16
.L_main_15:
    j .L_main_17
.L_main_16:
    call ok
.L_main_17:
.L_main_18:
    li t0, 1
    bne t0, zero, .L_main_20
.L_main_19:
    j .L_main_21
.L_main_20:
    call ok
.L_main_21:
.L_main_22:
    li t0, 0
    sw t0, -44(s0)
.L_main_23:
    li t0, 0
    bne t0, zero, .L_main_25
.L_main_24:
    j .L_main_26
.L_main_25:
    li t0, 0
    sw t0, -44(s0)
.L_main_26:
.L_main_27:
    lw t0, -44(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -48(s0)
.L_main_28:
    lw t0, -48(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -52(s0)
.L_main_29:
    lw t0, -52(s0)
    bne t0, zero, .L_main_31
.L_main_30:
    j .L_main_32
.L_main_31:
    call error
.L_main_32:
.L_main_33:
    li t0, 1
    sw t0, -56(s0)
.L_main_34:
    li t0, 0
    bne t0, zero, .L_main_36
.L_main_35:
    li t0, 1
    sw t0, -56(s0)
.L_main_36:
.L_main_37:
    lw t0, -56(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -60(s0)
.L_main_38:
    lw t0, -60(s0)
    bne t0, zero, .L_main_40
.L_main_39:
    j .L_main_41
.L_main_40:
    call ok
.L_main_41:
.L_main_42:
    li t0, 1
    sw t0, -64(s0)
.L_main_43:
    li t0, 0
    sw t0, -68(s0)
.L_main_44:
    addi t0, s0, -112
    sw t0, -72(s0)
.L_main_45:
    li t6, 1065353216
    fmv.w.x ft0, t6
    lw t6, -72(s0)
    fsw ft0, 0(t6)
.L_main_46:
    li t6, 1073741824
    fmv.w.x ft0, t6
    lw t6, -72(s0)
    addi t6, t6, 4
    fsw ft0, 0(t6)
.L_main_47:
    li t6, 0
    fmv.w.x ft0, t6
    lw t6, -72(s0)
    addi t6, t6, 8
    fsw ft0, 0(t6)
.L_main_48:
    li t6, 0
    fmv.w.x ft0, t6
    lw t6, -72(s0)
    addi t6, t6, 12
    fsw ft0, 0(t6)
.L_main_49:
    li t6, 0
    fmv.w.x ft0, t6
    lw t6, -72(s0)
    addi t6, t6, 16
    fsw ft0, 0(t6)
.L_main_50:
    li t6, 0
    fmv.w.x ft0, t6
    lw t6, -72(s0)
    addi t6, t6, 20
    fsw ft0, 0(t6)
.L_main_51:
    li t6, 0
    fmv.w.x ft0, t6
    lw t6, -72(s0)
    addi t6, t6, 24
    fsw ft0, 0(t6)
.L_main_52:
    li t6, 0
    fmv.w.x ft0, t6
    lw t6, -72(s0)
    addi t6, t6, 28
    fsw ft0, 0(t6)
.L_main_53:
    li t6, 0
    fmv.w.x ft0, t6
    lw t6, -72(s0)
    addi t6, t6, 32
    fsw ft0, 0(t6)
.L_main_54:
    li t6, 0
    fmv.w.x ft0, t6
    lw t6, -72(s0)
    addi t6, t6, 36
    fsw ft0, 0(t6)
.L_main_55:
    lw a0, -72(s0)
    call getfarray
    sw a0, -116(s0)
.L_main_56:
    lw t0, -116(s0)
    sw t0, -120(s0)
.L_main_57:
    lw t0, -64(s0)
    li t1, 1000000000
    slt t2, t0, t1
    sw t2, -124(s0)
.L_main_58:
    lw t0, -124(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -128(s0)
.L_main_59:
    lw t0, -128(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -132(s0)
.L_main_60:
    lw t0, -132(s0)
    li t1, 0
    xor t2, t0, t1
    sltu t2, zero, t2
    sw t2, -136(s0)
.L_main_61:
    lw t0, -136(s0)
    bne t0, zero, .L_main_63
.L_main_62:
    j .L_main_89
.L_main_63:
    call getfloat
    fsw fa0, -140(s0)
.L_main_64:
    flw ft0, -140(s0)
    fsw ft0, -144(s0)
.L_main_65:
    li t6, 1078530011
    fmv.w.x ft0, t6
    flw ft1, -144(s0)
    fmul.s ft2, ft0, ft1
    fsw ft2, -148(s0)
.L_main_66:
    flw ft0, -148(s0)
    flw ft1, -144(s0)
    fmul.s ft2, ft0, ft1
    fsw ft2, -152(s0)
.L_main_67:
    flw ft0, -152(s0)
    fsw ft0, -156(s0)
.L_main_68:
    flw ft0, -144(s0)
    fcvt.w.s t0, ft0, rtz
    sw t0, -160(s0)
.L_main_69:
    lw a0, -160(s0)
    call circle_area
    fsw fa0, -164(s0)
.L_main_70:
    flw ft0, -164(s0)
    fsw ft0, -168(s0)
.L_main_71:
    li t0, 0
    sw t0, -172(s0)
.L_main_72:
    lw t0, -172(s0)
    lw t1, -68(s0)
    add t2, t0, t1
    sw t2, -176(s0)
.L_main_73:
    lw t6, -72(s0)
    lw t0, -176(s0)
    slli t0, t0, 2
    add t6, t6, t0
    flw ft0, 0(t6)
    fsw ft0, -180(s0)
.L_main_74:
    flw ft0, -180(s0)
    flw ft1, -144(s0)
    fadd.s ft2, ft0, ft1
    fsw ft2, -184(s0)
.L_main_75:
    li t0, 0
    sw t0, -188(s0)
.L_main_76:
    lw t0, -188(s0)
    lw t1, -68(s0)
    add t2, t0, t1
    sw t2, -192(s0)
.L_main_77:
    flw ft0, -184(s0)
    lw t6, -72(s0)
    lw t0, -192(s0)
    slli t0, t0, 2
    add t6, t6, t0
    fsw ft0, 0(t6)
.L_main_78:
    flw fa0, -156(s0)
    call putfloat
.L_main_79:
    li a0, 32
    call putch
.L_main_80:
    flw ft0, -168(s0)
    fcvt.w.s t0, ft0, rtz
    sw t0, -196(s0)
.L_main_81:
    lw a0, -196(s0)
    call putint
.L_main_82:
    li a0, 10
    call putch
.L_main_83:
    li t0, 10
    sw t0, -200(s0)
.L_main_84:
    lw t0, -64(s0)
    lw t1, -200(s0)
    mul t2, t0, t1
    sw t2, -204(s0)
.L_main_85:
    lw t0, -204(s0)
    sw t0, -64(s0)
.L_main_86:
    lw t0, -68(s0)
    addi t2, t0, 1
    sw t2, -208(s0)
.L_main_87:
    lw t0, -208(s0)
    sw t0, -68(s0)
.L_main_88:
    j .L_main_57
.L_main_89:
.L_main_90:
    lw a0, -120(s0)
    lw a1, -72(s0)
    call putfarray
.L_main_91:
    li a0, 0
    j .L_main_exit
.L_main_exit:
    lw ra, 204(sp)
    lw s0, 200(sp)
    addi sp, sp, 208
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
