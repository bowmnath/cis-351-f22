.text

# We like to segment our data memory into stack, heap, and global (static).
# In a sense, memory is memory. But, we logically separate it into these
# segements because each segment serves a separate purpose.

# Global: accessible anywhere in program
# Stack: local to functions
# Heap: locations (variables) assigned at runtime, like stack, but may
#	outlive function that created them

# Aside from how they are used, we distinguish between them based on when
# the memory is allocated.

# Global (static): allocated before program begins. Addresses do not change
#	 	   (though values stored there may).
# Stack (dynamic): amount of memory allocated grows and shrinks with
#		   function calls
# Heap (dynamic): chunks of memory are allocated by operating system at
#		  runtime

# Once again, these segments are logical distinctions -- we physically
# have one memory.
# We could just access memory directly by address in our code, such as
# lui $t0, 0x1001
# lw $t1, 0($t0)
# but we *never* do that.  Keeping track of addresses ourselves is too
# error prone. Instead, each of the segments has its own way of helping
# us keep track of memory.

# The primary purpose of this code is to emphasize how we access memory
# in each segment.

# As an example, we will see that we can store an array in any of
# the three areas. An array is just the base address of some chunk of
# memory. The way we get that address depends on which segment the array
# is stored in, but we never create it directly.



# Stack
# 	Dynamic -- grows and shrinks
#	The stack allows us to track our memory locations using $sp.
#	Working with the stack, *all* references are relative to $sp

addi $a0, $0, 5
#jal fun
#jal arr_stack_fun
#jal arr_heap_fun1
jal arr_global_fun
addi $v0, $0, 10
syscall

fun:
	addi $sp, $sp, -8
	sw $s0, 0($sp)
	sw $ra, 4($sp)

	beq $a0, $0, fun_else
	addi $s0, $a0, 0
	addi $a0, $a0, -1
	jal fun
	add $v0, $s0, $v0
	j fun_done
fun_else:
	addi $v0, $0, 0
fun_done:
	lw $s0, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	jr $ra

# Stack (part 2)
#	You can store arrays on stack by making space for them with $sp
#	You can use another register to keep the base address,
#	but the memory is still allocated by changing $sp

# Note that the function below does not actually perform any work.

arr_stack_fun:
	addi $sp, $sp, -20
	addi $t0, $sp, 0	# $t0 holds base address of 5-element array
	
	addi $t1, $0, 5		# t1: constant 5
	addi $t2, $0, 0		# t2: loop index (i)
stack_for:
	slt $t7, $t2, $t1
	beq $t7, $0, stack_done
	
	sll $t3, $t2, 2
	add $t3, $t0, $t3
	sw $t2, 0($t3)
	
	addi $t2, $t2, 1
	j stack_for
stack_done:
	addi $sp, $sp, 20
	jr $ra

# Heap
#	When an array is going on the heap, the OS (a program on
#	the computer) assigns the address for us and gives it to
#	us in a register.
#	The OS keeps track of the locations and sizes of arrays so
#	they don't run into one another.
#	Like the stack, the heap is allocated dynamically, but a
#	big difference in how it is used is that variables on the
#	heap are not limited to the function that created them.

# Note that the function below does not actually perform any work.

arr_heap_fun1:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	
	addi $a0, $0, 3
	jal arr_heap_fun2
	add $t0, $v0, $0
	
	# Because the array was created on the heap, we can access
	# it in this function. If it were on the stack, it would
	# be gone once the function that created it returned.
	lw $t1, 0($t0)
	
	# We could also return this array to yet another function by
	# putting the address in $v0 if we chose to do so

	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra

arr_heap_fun2:
	# Accepts number as argument
	# Fills five-element array with that number and returns array
	
	addi $t0, $a0, 0	# save a0 because we will overwrite it
	
	addi $a0, $0, 5
	addi $v0, $0, 9
	syscall			# request address on heap from OS
	addi $t1, $v0, 0	# t1: base address of array (on heap)

	add $t3, $0, $0	# t3: loop index 
heap_for:
	slti $t4, $t3, 5
	beq $t4, $0, heap_done
	
	sll $t5, $t3, 2
	add $t5, $t1, $t5	# address of ith element
	sw $t0, 0($t5)
	
	addi $t3, $t3, 1
	j heap_for
heap_done:
	add $v0, $t1, $0
	jr $ra

.data

# Note: You should put the data segment at the top of the program,
# but you do not technically need to.

# Data in the global segment is static -- the memory locations that
# will be used are determined before the program is run.
# Once the program is running, we can change *what* we store at these
# locations, but we cannot change the locations themselves.

# Using the global data segment is the closest we come in code to
# directly referring to a memory location by its address. Instead of
# using a number for the address, we use a human-friendly name that
# represents a particular address (i.e., a variable) and let the
# assembler keep track of the names and addresses.

# Unlike the stack and heap, these addresses are hard-coded into the
# machine code for our program.  After we assemble the code, we can
# see that it contains references to particular addresses.
# Note that being hard-coded into the machine code does not mean that
# they are hard-coded into the assembly code, however. That distinction
# is part of the job of the assembler.

	global_arr: .word 2 4 6 8 10

.text

arr_global_fun:
	la $t0, global_arr  # this address is hard-coded in machine code
	
	lw $t1, 0($t0)
	lw $t2, 12($t0)
	
	jr $ra
