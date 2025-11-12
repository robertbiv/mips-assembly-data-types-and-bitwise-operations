.data
prompt1: .asciiz "Enter first integer: "
prompt2: .asciiz "Enter second integer: "
out_sum: .asciiz "Sum: "
out_sub: .asciiz "Difference: "
out_mul: .asciiz "Product (32-bit): "
out_div: .asciiz "Quotient: "
out_div_zero: .asciiz "Division by zero"
out_and: .asciiz "AND: "
out_or: .asciiz "OR: "
out_xor: .asciiz "XOR: "
out_nor: .asciiz "NOR: "
out_sll: .asciiz "Left shift by 2: "
out_srl: .asciiz "Logical right shift by 2: "
out_sra: .asciiz "Arithmetic right shift by 2: "
out_slt: .asciiz "Signed a < b? "
out_sltu: .asciiz "Unsigned a < b? "
newline: .asciiz "\n"

.text
.globl main
main:
    la $a0, prompt1
    li $v0, 4
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    la $a0, prompt2
    li $v0, 4
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    add $t2, $t0, $t1
    sub $t3, $t0, $t1

    mult $t0, $t1
    mflo $t4

    beq $t1, $zero, skip_div
    div $t0, $t1
    mflo $t5
    j after_div
skip_div:
    li $t5, 0x7fffffff
after_div:

    and $t6, $t0, $t1
    or  $t7, $t0, $t1
    xor $t8, $t0, $t1
    nor $t9, $t0, $t1

    sll $s0, $t0, 2
    srl $s1, $t0, 2
    sra $s2, $t0, 2

    slt  $s3, $t0, $t1
    sltu $s4, $t0, $t1

    la $a0, out_sum
    li $v0, 4
    syscall
    move $a0, $t2
    li $v0, 1
    syscall
    la $a0, newline
    li $v0, 4
    syscall

    la $a0, out_sub
    li $v0, 4
    syscall
    move $a0, $t3
    li $v0, 1
    syscall
    la $a0, newline
    li $v0, 4
    syscall

    la $a0, out_mul
    li $v0, 4
    syscall
    move $a0, $t4
    li $v0, 1
    syscall
    la $a0, newline
    li $v0, 4
    syscall

    la $a0, out_div
    li $v0, 4
    syscall
    beq $t1, $zero, print_div_zero
    move $a0, $t5
    li $v0, 1
    syscall
    j after_div_print
print_div_zero:
    la $a0, out_div_zero
    li $v0, 4
    syscall
after_div_print:
    la $a0, newline
    li $v0, 4
    syscall

    la $a0, out_and
    li $v0, 4
    syscall
    move $a0, $t6
    li $v0, 1
    syscall
    la $a0, newline
    li $v0, 4
    syscall

    la $a0, out_or
    li $v0, 4
    syscall
    move $a0, $t7
    li $v0, 1
    syscall
    la $a0, newline
    li $v0, 4
    syscall

    la $a0, out_xor
    li $v0, 4
    syscall
    move $a0, $t8
    li $v0, 1
    syscall
    la $a0, newline
    li $v0, 4
    syscall

    la $a0, out_nor
    li $v0, 4
    syscall
    move $a0, $t9
    li $v0, 1
    syscall
    la $a0, newline
    li $v0, 4
    syscall

    la $a0, out_sll
    li $v0, 4
    syscall
    move $a0, $s0
    li $v0, 1
    syscall
    la $a0, newline
    li $v0, 4
    syscall

    la $a0, out_srl
    li $v0, 4
    syscall
    move $a0, $s1
    li $v0, 1
    syscall
    la $a0, newline
    li $v0, 4
    syscall

    la $a0, out_sra
    li $v0, 4
    syscall
    move $a0, $s2
    li $v0, 1
    syscall
    la $a0, newline
    li $v0, 4
    syscall

    la $a0, out_slt
    li $v0, 4
    syscall
    move $a0, $s3
    li $v0, 1
    syscall
    la $a0, newline
    li $v0, 4
    syscall

    la $a0, out_sltu
    li $v0, 4
    syscall
    move $a0, $s4
    li $v0, 1
    syscall
    la $a0, newline
    li $v0, 4
    syscall

    li $v0, 10
    syscall
