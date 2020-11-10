# Assignment - 6
# Group No  :  28
# Problem   :  1
# Name   :  Rohit Dhaipule, Pruthvi Kantevari
# Roll   :  18CS10013 , 18CS10024


# Data Segment
.data
input_msg:  .asciiz "\nEnter the two positive numbers to compute GCD : "
error_msg:  .asciiz "Not positive numbers. "
result_msg: .asciiz "GCD of two numbers is : "


# Text Segment
.text
.globl main
main:

    la $a0,input_msg
    li $v0,4    # Printing the input_msg in console
    syscall

    li $v0,5
    syscall
    move 	$t0, $v0		# $t0 = $v0

    li $v0,5
    syscall
    move 	$t1, $v0		# $t1 = $v0

    # Sanity Check
    ble		$t0, $zero , ERROR	# if $t0 <= $t1 then ERROR
    ble		$t1, $zero, ERROR	# if $t1 <= $zero then ERROR


Loop:
    beq $t0, $t1, PrintResult	# Redirect to PrintResult if both inputs are equal
			
	bgt $t0, $t1, Continue
			
	Swap:
		move $t2, $t0	# temp = t0
		move $t0, $t1	# t0 = t1
		move $t1, $t2	# t1 = temp
				
	Continue:
		sub $t0, $t0, $t1	# Subtract t0 = t0 - t1
		bgt $t0, $zero, Loop



PrintResult:
	li $v0, 4	#	print_string
	la $a0, result_msg	# load string address
	syscall
	li $v0, 1	# print_int
	move $a0, $t0	# $a0 = $t0
	syscall


Exit:
	li $v0, 10	# exit
	syscall


ERROR:

    li		$v0, 4		# $v0 = 4
    la		$a0, error_msg	
    syscall
    li		$v0, 10		# $v0 = 10
    syscall 
    