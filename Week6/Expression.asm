.data
msg1: .asciiz " Enter y : "
msg2: .asciiz "Enter z : "
msg3: .asciiz "Enter f : "
msg4: .asciiz "Enter q : "
result : .asciiz "\nThe result of this expression is: "
.text
li $v0 ,4
la $a0, msg1
syscall
li $v0 ,5
syscall
move $t1 ,$v0
li $v0 ,4
la $a0, msg2
syscall
li $v0 ,5
syscall
move $t2 ,$v0
li $v0 ,4
la $a0, msg3
syscall
li $v0 ,5
syscall
move $t3 ,$v0
li $v0 ,4
la $a0, msg4
syscall
li $v0 ,5
syscall
move $t4 ,$v0
mul $t5 ,$t2 , $t2
mul $t6 ,$t5 , $t1
div $t7 ,$t6 ,$t3
sub $t8, $t7, $t4
li $v0 ,4
la $a0, result
syscall
li $v0 ,1
move $a0 ,$t8
syscall
li $v0 ,10
syscall