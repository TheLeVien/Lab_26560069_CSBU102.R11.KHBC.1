# >>> Le Dang Vien 26560069 Step2-4_Table9

.text
.globl main
main:
	addi $s0, $zero, 8
	addi $s1, $zero, 5
	addi $s2, $zero, 3
	
	# 1
	add $t5, $s0, $s1
	add $t0, $t5, $s2
	
	#2
	addi $t5, $s2, 5
	add $t1, $s0, $s1
	sub $t1, $t1, $t5
	
	#3
	add $t2, $zero, $s0
	
	#4
	sub $t3, $s1, $s0
	
	li   $v0, 10
	syscall

