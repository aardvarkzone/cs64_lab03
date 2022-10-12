.data
    prompt: .asciiz "Enter a integer: "

.text
main:
    li $v0 4      
    la $a0 prompt
    syscall

    li $v0 5
    syscall
    move $t0 $v0

    srl $t1 $t0 1

    li $v0 1
    move $a0 $t1
    syscall

    j exit
exit:
    # Exit SPIM: Write your code here!
    li $v0, 10
    syscall
