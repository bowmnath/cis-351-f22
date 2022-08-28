# A syscall is a call to the operating system. This is used to handle things
# that an individual program should not be able to control, such as file I/O
# and, in our case, memory allocation.
#
# MARS will simulate some syscalls for you.
# For documentation on MIPS system calls available in MARS, see
# https://courses.missouristate.edu/KenVollmar/MARS/Help/SyscallHelp.html
#
.text

	addi $a0, $0, 12  # size of allocated data goes in a0
	addi $v0, $0, 9  # the 9 in v0 specifies which syscall we want
	syscall  # address of allocated space stored in $v0 after syscall

	addi $s0, $v0, 0
	addi $t0, $0, 5
	sw $t0, 0($s0)

	addi $a0, $0, 12  # size of allocated data goes in a0
	addi $v0, $0, 9  # the 9 in v0 specifies which syscall we want
	syscall  # address of allocated space stored in $v0 after syscall

	addi $s1, $v0, 0
	addi $t0, $0, 6
	sw $t0, 0($s1)