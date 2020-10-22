# Assume e = 2.71828, pi = 3.1415
.data
e: .float 2.71828
pi: .float 3.1415


.text
l.s $f1, e
l.s $f2, pi

mul.s $f1, $f1, $f1
div.s $f3, $f1, $f2

li $v0, 2
mov.s $f12, $f3
syscall


li $v0, 10
syscall
