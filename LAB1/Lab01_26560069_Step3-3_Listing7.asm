# >>> Le Dang Vien 26560069 Step3-3_Listing7
.data
prompt: .asciiz "Enter reading (kWh): "
m1: .asciiz "Month 1: "
m2:     .asciiz "Month 2: "
m3:     .asciiz "Month 3: "
tot:    .asciiz "Total:   "
nl:     .asciiz "\n"

.text
.globl main
main:
	# >>> Nhap Month1
	li $v0, 4
	la $a0, prompt
	syscall
	li $v0, 5
	syscall
	add $s0, $v0, $zero
	la $a0, nl
	li $v0, 4
	syscall
	
	# >>> Nhap Month2
	li $v0, 4
	la $a0, prompt
	syscall
	li $v0, 5
	syscall
	add $s1, $v0, $zero
	la $a0, nl
	li $v0, 4
	syscall
	
	# >>> Nhap Month3
	li $v0, 4
	la $a0, prompt
	syscall
	li $v0, 5
	syscall
	add $s2, $v0, $zero
	la $a0, nl
	li $v0, 4
	syscall
	
	# >>> Nhap Month4
	li $v0, 4
	la $a0, prompt
	syscall
	li $v0, 5
	syscall
	add $s3, $v0, $zero
	la $a0, nl
	li $v0, 4
	syscall
	
	# >>> Tinh m1
	la $a0, m1
	li $v0, 4
	syscall
	sub $t0, $s1, $s0
	add $a0, $t0, $zero
	li $v0, 1
	syscall
	la $a0, nl
	li $v0, 4
	syscall
	
	# >>> Tinh m2
	la $a0, m2
	li $v0, 4
	syscall
	sub $t1, $s2, $s1
	add $a0, $t1, $zero
	li $v0, 1
	syscall
	la $a0, nl
	li $v0, 4
	syscall
	
	# >>> Tinh m3
	la $a0, m3
	li $v0, 4
	syscall
	sub $t2, $s3, $s2
	add $a0, $t2, $zero
	li $v0, 1
	syscall
	la $a0, nl
	li $v0, 4
	syscall
	
	# >>> Tinh m2
	la $a0, tot
	li $v0, 4
	syscall
	sub $t3, $s3, $s0
	add $a0, $t3, $zero
	li $v0, 1
	syscall
	la $a0, nl
	li $v0, 4
	syscall
