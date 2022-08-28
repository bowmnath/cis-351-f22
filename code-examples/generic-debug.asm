.data
	example_arr: .word 2 4 6 8 10

.text

la $a0, example_arr
addi $a1, $0, 5
jal fun
add $t0, $0, $v0

addi $v0, $0, 10
syscall

fun:
	lw $t0, 0($a0)
	
	addi $t1, $a1, -1
	sll $t1, $t1, 2
	add $t1, $a0, $t1
	lw $t1, 0($t1)
	
	add $v0, $t0, $t1
	jr $ra