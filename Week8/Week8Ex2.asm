.data
please_give_us_input: .asciiz "Enter number of Natural numbers you want to calculate: "

.text

li $v0, 4
la $a0, please_give_us_input
syscall

li $v0, 5
syscall

move $a0, $v0
li $a1, 0
li $a2, 0
jal fun

li $v0, 1
move $a0, $a1
syscall 

li $v0, 10
syscall


fun:
add $a1, $a1, $a2
beq $a2, $a0, exitFun
add $a2, $a2, 1
j fun 

exitFun:
jr $ra