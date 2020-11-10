# Assignment - 6
# Group No  :  28
# Problem   :  2
# Name   :  Rohit Dhaipule, Pruthvi Kantevari
# Roll   :  18CS10013 , 18CS10024


# Data Segment
.data
input_msg: .asciiz "Enter the positive number : "
prime_msg: .asciiz " is a prime number.\n"
error_msg: .asciiz "\nNumber is not greater than or equal to 2.\n"
composite_msg: .asciiz " is a composite number.\n"

.text

main:

    la $a0,input_msg
    li $v0,4
    syscall

    li $v0,5
    syscall
    move 	$t0, $v0		# $t0 = $v0

    # Sanity checking
    addi	$t1, $zero, 1			# $t1 = $zero + 1
    bge		$t1, $t0, ERROR	# if $t1 >= $t0 th0n ERROR

    addi   $t1, $t1, 1
    beq    $t0, $t1, PRIME                    # div stores high strores remainder, low stores quotient


Loop:
    div    $t0,$t1
    mfhi   $t3
    beq		$t3, $zero, COMPOSITE	# if $t3 == $zero then PRIME
    addi    $t1,$t1,1
    bgt		$t1, $s0, PRIME	# if $t1 > $t2 then target
    ble		$t1, $s0, Loop	# if $t1 <= $t2 then Loop

PRIME:
    li $v0, 1	# print_int
	move $a0, $t0	# $a0 = $t0
    syscall

    li $v0, 4	#	print_string
	la $a0, prime_msg	# load string address
	syscall
	
    li $v0, 10
	syscall
    				# jump to EXIT and save position to $ra
    

COMPOSITE:

    li $v0, 1	# print_int
	move $a0, $t0	# $a0 = $t0
	syscall

    li $v0, 4	#	print_string
	la $a0, composite_msg	# load string address
	syscall
	
    li $v0, 10
    syscall


EXIT:
    li $v0,10
    syscall

ERROR:

    li		$v0, 4		# $v0 = 4
    la		$a0, error_msg	
    syscall
    li		$v0, 10		# $v1 = 10
    syscall 
    