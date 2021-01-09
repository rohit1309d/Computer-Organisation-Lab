# Assignment - 7
# Group No  :  28
# Problem   :  2
# Name   :  Rohit Dhaipule, Pruthvi Kantevari
# Roll   :  18CS10013 , 18CS10024

###############Data Segment########

	.data
array1:
	.space  32
prompt1:
	.asciiz "Enter 8 integers for sorting:\n"
prompt2:
	.asciiz "The array after insertion sort:\n"
newline:
	.asciiz "\n" 
space:
	.asciiz " "
		
############# Data Segment #################

############## Text Segment ##############

	.text
main:
	la $a0, prompt1			#message for taking input array 
	li $v0, 4
	syscall	
	
	li $t6, 0
	la $t7, array1
	
Loop: 
	beq $t6, 8, Print
	li $v0, 5				#take input integer		
	syscall
	sw   $v0, ($t7)
	addi $t6, $t6, 1
	addi $t7, $t7, 4
	j Loop
	
Print:
	la  $a0, array1			# procedure call
	li  $a1, 1
	jal InsertionSort

	la $a0, prompt2			#output message 
	li $v0, 4
	syscall

	li $t6, 0
	la $t7, array1
	
Loop2:
	beq $t6, 8, Exit
	
	lw $a0, ($t7)				#print array element
	li $v0, 1				
	syscall
	
	la $a0, space 				#print space
	li $v0, 4
	syscall
	
	addi $t6, $t6, 1
	addi $t7, $t7, 4
	j Loop2
	
Exit:
	la $a0, newline			#newline
	li $v0, 4
	syscall
	syscall
	
	li $v0, 10				#exit
	syscall

####function
InsertionSort:
	addi $sp, $sp, -12
	sw   $ra, 8($sp)
	sw   $a0, 4($sp)
	sw   $a1, 0($sp)
	
	bne  $a1, 8, Recursion
	addi $sp, $sp, 12
	jr   $ra
	
Recursion:
	sll  $t7, $a1, 2
	add  $t7, $t7, $a0

Traverse:
	lw   $t0, ($t7)
	lw   $t1, -4($t7)
	ble  $t1, $t0, Endcall
	sw   $t1, ($t7)
	sw   $t0, -4($t7)
	addi $t7, $t7, -4
	bne  $t7, $a0, Traverse
	
Endcall:	
	addi $a1, $a1, 1
	jal  InsertionSort
	lw   $a1, 0($sp)
	lw   $a0, 4($sp)
	lw   $ra, 8($sp)
	addi $sp, $sp, 12
	jr   $ra
