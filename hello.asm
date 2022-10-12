# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
	# TODO: Write your string definitions here
	prompt: .asciiz "Enter an integer: "

#Text Area (i.e. instructions)
.text

main:
	# TODO: Write your code here

	li $t4 3
	li $t5 2
	
	# call prompt
	li $v0 4
	la $a0 prompt 
	syscall

	# store int 
	li $v0 5
	syscall
	move $t0 $v0 

	# bit mask 
	and $t1 $t0 1

	# if checker statement 
    	beq $t1 1 if 

	#else 
	mult $t0 $t4
	mfhi $t2
	mflo $t3
	li $v0 1
    	move $a0 $t3
    	syscall
	j exit

	#if 	
	if: 
		mult $t0 $t5
		mfhi $t2
		mflo $t3
		li $v0 1
    		move $a0 $t3
		syscall
		
	j exit

exit:
	# Exit SPIM: Write your code here!
    	li $v0, 10
    	syscall	
