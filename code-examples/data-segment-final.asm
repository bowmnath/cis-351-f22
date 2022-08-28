.data

	y: .word 50
	a: .byte 'a'
	.align 2
	b: .asciiz "cis351"
	arr: .word 2 4 6 8
	
.text

	# How do we use labels?
	#addi $t0, $0, y
	lw $t0, y

	# How do labels work behind the scenes?
	lui $s0, 0x1001
	lw $t1, 0($s0)

	# What if we grab too much data?
	lw $t2, a  # Grabs character we want,
		   # plus additional memory that could be anything
	lb $t3, a

	# How do we get an entire sting into a register?
	lw $t4, b  # Doesn't work.  See the next part about arrays

	# How do we load an array?
	#lw $t5, arr  # Still doesn't work. Grabs only the first element of the array
	la $t6, arr
	lw $t7, 0($t6)
	lw $t8, 4($t6)

	# What about a string? It's just an array of characters
	la $t0, b
	lb $t1, 0($t0)
	lb $t2, 1($t0)