# Assignment - 6
# Group No  :  28
# Problem   :  4
# Name   :  Rohit Dhaipule, Pruthvi Kantevari
# Roll   :  18CS10013 , 18CS10024


# Data Segment
.data
input1: .asciiz "Enter an integer(signed 16-bit): "
input2: .asciiz "Enter another integer(signed 16-bit): "
newline: .asciiz "\n"
product_msg: .asciiz "Product of entered numbers is "
error_msg: .asciiz "Numbers are not in the range of signed 16-bit\n"
	
	.text


seq_mult_booth:	
	li $t0, 16				
	li $t1, 0               
	sll $a0, $a0, 16        
	andi $a1, $a1, 65535    
	
LOOP:
	andi $t2, $a1, 1		
	bne $t2, $t1, Op		

loop_end:										
	sra $a1, $a1, 1			
	move $t1, $t2			
	sub $t0, $t0, 1         
	bne $t0, $zero, LOOP   
	move $v0, $a1			
	jr $ra     			    
	
Op:							
	beq $t1, $zero, Sub
	addu $a1, $a1, $a0
	j loop_end
	
Sub:
	subu $a1, $a1, $a0
	j loop_end

main:
	la $a0, input1			
	li $v0, 4
	syscall
	
	li $v0, 5						
	syscall
	move $t0, $v0
	
	li $t2, 32767  			#sanity checking
	li $t3, -32768 
	bgt $t0, $t2, Error
	blt $t0, $t3, Error
	
	la $a0, input2	   		
	li $v0, 4
	syscall
	
	li $v0, 5		   		
	syscall
	move $t1, $v0

	bgt  $t1, $t2, Error	#sanity checking
	blt  $t1, $t3, Error	
	
	move $a0, $t0			#procedure call to seq_mult_booth
	move $a1, $t1

	jal seq_mult_booth
	
	move $t2, $v0           
	
	la $a0, product_msg		
	li $v0, 4
	syscall
	
	move $a0, $t2			
	li $v0, 1
	syscall
	
	la $a0, newline    		
	li $v0, 4
	syscall

Exit:	
	li $v0, 10				#exit
	syscall
	
Error:						#error message
	la $a0, error_msg
	li $v0, 4
	syscall
	j Exit	
	

	
	