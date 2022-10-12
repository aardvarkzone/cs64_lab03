# arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#
.data 
    
.text
main:
	# TODO: Write your code here

	# store first int - x
    li $v0 5
    syscall
    move $t0 $v0

	# store second int - y
    li $v0 5
    syscall
    move $t1 $v0

	sub $t0 $t0 $t1
	sll $t0 $t0 4
	add $t0 $t0 8

	#output first int
    li $v0 1
    move $a0 $t0
    syscall

    j exit


exit:
	# Exit SPIM: Write your code here!
    li $v0, 10
    syscall

