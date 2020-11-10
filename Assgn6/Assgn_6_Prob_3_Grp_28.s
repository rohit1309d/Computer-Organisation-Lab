# Assignment - 6
# Group No  :  28
# Problem   :  3
# Name   :  Rohit Dhaipule, Pruthvi Kantevari
# Roll   :  18CS10013 , 18CS10024


# Data Segment
.data
first_input:
	     .asciiz "\nEnter multiplicand ( 16-bit unsigned) "
second_input:
	     .asciiz "Enter multiplier (16-bit unsigned) "
error_message:
	    .asciiz "Numbers are not in unsigned 16bit range "
out_msg:
	.asciiz "\nThe product is: "

out_2_msg:
	.asciiz "\nThe product in 2's complement is (add 2^32 to the ouput for unsigned result): "

bin_print_str:
	.asciiz "\nPrinting result in binary, LSB ..... MSB\n"

newline:
	.asciiz "\n"

	.text

main:
	li $t2, 65535
	la $a0, first_input   
	li $v0, 4
	syscall
	
	li $v0, 5		   
	syscall
	move $t0, $v0


	la $a0, second_input    
	li $v0, 4
	syscall
	
	li $v0, 5		   
	syscall
	move $t1, $v0

	bgt $t1, $t2, ERROR_warn
	blt $t1, 0, ERROR_warn 
	bgt $t0, $t2, ERROR_warn
	blt $t0, 0, ERROR_warn


	move $a0, $t0
	move $a1, $t1

	jal seq_mult_unsigned

	move $t3, $v0

	bltz $t3, print_neg
	
	la $a0, out_msg		
	li $v0, 4
	syscall
	
	move $a0, $t3			
	li $v0, 1
	syscall
	
	la $a0, newline    		
	li $v0, 4
	syscall

	li $v0, 10
	syscall

print_neg:
	la $a0, out_2_msg
	li $v0, 4
	syscall

	move $a0, $t3
	li $v0, 1
	syscall

	li $v0, 10
	syscall

		
seq_mult_unsigned:
	li $t1, 0	

Loop:
	beq $a1, 0, Ret
	beq $a0, 0, Ret
	andi $t0, $a1, 1
	srl $a1, $a1, 1
	beq $t0, 1, Add
	sll $a0, $a0, 1
	j Loop
Add:
	addu $t1, $t1, $a0
	sll $a0, $a0, 1
	j Loop

Ret:
	blt $t1, $zero, bin_print

Final:
	move $v0, $t1
	jr $ra


bin_print:
	la $a0, bin_print_str
	li $v0, 4
	syscall
	
	move $t7, $t1
	li $t3, 1
	li $t4, 32
	li $t5, 0

print_loop:
	bge $t5, $t4, Final
	and $t6, $t7, $t3
	srl $t7, $t7, 1
	addi $t5, $t5, 1

	li $v0, 1
	move $a0, $t6
	syscall

	j print_loop



ERROR_warn: 				   
	la $a0, error_message
	li $v0, 4
	syscall

	li $v0, 10
	syscall


	
