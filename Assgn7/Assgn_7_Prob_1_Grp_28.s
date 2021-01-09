# Assignment - 7
# Group No  :  28
# Problem   :  1
# Name   :  Rohit Dhaipule, Pruthvi Kantevari
# Roll   :  18CS10013 , 18CS10024

.data
msg_input:	.asciiz "Enter the string : "
msg_print:	.asciiz "Lowercase String : "
input: .space 100
newline: .asciiz "\n"

.text
main:
    la $a0, msg_input
    li $v0 , 4
    syscall	 # print the message
    li $v0, 8
    li $a1, 100
    la $a0, input
    syscall

    li $v0, 4
    li $t0, 0

loop:
    lb $t1, input($t0)
    beq $t1, 0, exit
    blt $t1, 'A', case
    bgt $t1, 'Z', case
    addi $t1, $t1, 32
    sb $t1, input($t0)

case:
    addi $t0, $t0, 1
    j loop

exit:
    la $a0, msg_print
    li $v0 , 4
    syscall	 # print the message
    li $v0, 4
    la $a0, input
    syscall

    li $v0, 10
    syscall
