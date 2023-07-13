.data
	array : .word 10 , 9 , 8 , 7 , 6 , 5 , 4 , 3 , 2 , 1
	n: .word 10
	nl: .asciiz "\n"

.text
.globl main

main:
	li $t1,40
	li $t2,0
	la $t0,array
	
	loop1:
	beq $t2,$t1,endloop
	addi $t3,$t2,4
	
	loop2:
	beq $t3,$t1,endloop2
	add $t4,$t0,$t2
	add $t5,$t0,$t3
	
	lw $t7,0($t5)

	ble $t6,$t7,jump
	sw $t7,0($t4)
	sw $t6,0($t5)
	
	jump:
	addi $t3,$t3,4
	
	j loop2

	endloop2:
	addi $t2,$t2,4

	j loop1
	endloop:

	li $t2,0
	
	print:
	beq $t2,$t1,endprint
	add $t3,$t2,$t0
	lw $t3,0($t3)
	
	move $a0,$t3
	li $v0,1
	syscall
      
	la $a0,nl
      	li $v0,4
   	syscall
	
	addi $t2,$t2,4
	j print
	endprint: 

li $v0,10
syscall