# Listing 4 - the index of the element is held in a register
# Register plan:  $s0 = address of scores[0]   $s1 = i
.data
scores: .word 40, 55, 70, 85, 100
msg:    .asciiz "scores[i] = "
nl:     .asciiz "\n"
 
.text
.globl main
main:
    la   $s0, scores      # $s0 = address of scores[0]
    addi $s1, $zero, 3    # i = 3
    sll  $t1, $s1, 2      # $t1 = 4 * i
    add  $t1, $t1, $s0    # $t1 = address of scores[i]
    lw   $t2, 0($t1)      # $t2 = scores[i]
    li   $v0, 4
    la   $a0, msg
    syscall
    li   $v0, 1
    add  $a0, $t2, $zero
    syscall
    li   $v0, 4
    la   $a0, nl
    syscall
    
    addi $s1, $zero, 0
    la $s0, scores
    addi $s2, $zero, 0
    addi $t3, $zero, 5
   
loop:
	beq $s1, $t3, output
	sll $t1, $s1, 2
	add $t1, $t1, $s0
	lw $t2, 0($t1)
	add $s2, $s2, $t2
	addi $s1, $s1, 1
	j loop

output:
	li $v0, 1
	add $a0, $s2, $zero
	syscall 
    	li   $v0, 10
    	syscall