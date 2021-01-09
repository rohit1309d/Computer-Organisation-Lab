# Assignment - 7
# Group No  :  28
# Problem   :  3
# Name   :  Rohit Dhaipule, Pruthvi Kantevari
# Roll   :  18CS10013 , 18CS10024

###############Data Segment########
	.data
array1:
	.space  36
prompt1:
	.asciiz "Enter 9 integers:\n"
prompt2:
	.asciiz "Enter a number to search:\n"
prompt3:
	.asciiz "Number not found\n"
prompt4:
	.asciiz "Number found at index: "
prompt5:
	.asciiz "The array after insertion sort:\n"
newline:
	.asciiz "\n" 
space:
	.asciiz " "
############## Data Segment #################

############## Text Segment ##############
.text
main:
	la $a0, prompt1			
	li $v0, 4
	syscall	
	
	li $t6, 0
	la $t7, array1
	
Loop: 
	beq $t6, 9, Print
	li $v0, 5					
	syscall
	sw   $v0, ($t7)
	addi $t6, $t6, 1
	addi $t7, $t7, 4
	j Loop
	
Print:
	la  $a0, array1			#procedure call
	li  $a1, 1
	jal InsertionSort

	la $a0, prompt5			#output message 
	li $v0, 4
	syscall

	li $t6, 0
	la $t7, array1
	
Loop2:
	beq $t6, 9, Search
	
	lw $a0, ($t7)				#print array element
	li $v0, 1				
	syscall
	
	la $a0, space 				#print space
	li $v0, 4
	syscall
	
	addi $t6, $t6, 1
	addi $t7, $t7, 4
	j Loop2

Search:
	la $a0, newline			
	li $v0, 4
	syscall

	la $a0, prompt2			
	li $v0, 4
	syscall

	li $v0, 5						
	syscall

	move $a1, $v0
	la $a0, array1
	li $a2, 0
	li $a3, 9
	jal BinSearch

	move $t1, $v0
	bne $t1, -1, Success

	la $a0, prompt3			
	li $v0, 4
	syscall
	j Exit

Success:
	la $a0, prompt4			
	li $v0, 4
	syscall

	move $a0, $t1
	li $v0, 1
	syscall

Exit:
	la $a0, newline			
	li $v0, 4
	syscall
	
	li $v0, 10				
	syscall
	
##########
InsertionSort:
	addi $sp, $sp, -12
	sw   $ra, 8($sp)
	sw   $a0, 4($sp)
	sw   $a1, 0($sp)
	
	bne  $a1, 9, Recursion
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


##########	
BinSearch:
	addi $sp, $sp, -20
	sw $ra, 16($sp)
	sw $a0, 12($sp)
	sw $a1, 8($sp)
	sw $a2, 4($sp)
	sw $a3, 0($sp)
	bne $a2, $a3, Body
	li $v0, -1
	addi $sp, $sp, 20
	jr $ra

Body:
	add $t6, $a2, $a3
	srl $t6, $t6, 1
	sll $t5, $t6, 2
	add $t5, $t5, $a0
	lw $t4, ($t5)
	beq $t4, $a1, Found
	bgt $t4, $a1, Greater
	addi $t6, $t6, 1
	move $a2, $t6
	jal BinSearch
	lw   $ra, 16($sp)
	addi $sp, $sp, 20
	jr $ra

Greater:
	move $a3, $t6
	jal BinSearch
	lw   $ra, 16($sp)
	addi $sp, $sp, 20
	jr $ra

Found:
	move $v0, $t6
	addi $sp, $sp, 20
	jr $ra
