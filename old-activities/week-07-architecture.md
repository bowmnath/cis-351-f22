# General Questions

1. Describe the difference between architecture and microarchitecture.

2. Is there anything that can be done in a high-level language (e.g., Java)
that cannot be done in assembly?
If so, give an example.
If not, explain why not.

3. Consider the following assembly code.
```
addi $t0, $0, 2  # these immediates are arbitrary
addi $t1, $0, 4

sll $t0, $t0, 1
sll $t1, $t1, 1
add $s0, $t0, $t1
```
What does the code compute?
What useful task might the code be performing?

4. MIPS instructions are stored as 32-bit numbers.
What is the advantage of having every instruction stored using the same
number of bits?
Are there any disadvantages?

For the next few questions,
you will likely want to use a
[website listing MIPS opcodes and function codes](https://uweb.engr.arizona.edu/~ece369/Resources/spim/MIPSReference.pdf).
This link also has generally helpful reference information about MIPS
instructions.

5. Convert the following instruction (from lecture) from machine code to
assembly:
```
0x2237FFF1
```

6. Convert the following instruction (from lecture) from machine code to
assembly:
```
0x02F34022
```

7. We have seen that computer instructions are really just numbers.
Explain in your own words how we can use this fact to make a computer that runs
automatically.

8. Consider the following sentence:
"The program counter register holds the current instruction."
Explain why the sentence is incorrect or, at the very least, imprecise.

9. Assume our instruction format uses 3 bits to specify which register is the
destination of an operation.
How many registers does the architecture have?
How many bytes does each register store?

10. For each of the following I-type instructions,
indicate whether the immediate is signed or unsigned.
* `addi`
* `andi`
* `xori`
* `slti`
* `beq`

11. Explain why knowing the opcode is sufficient to identify a particular
I-type instruction but insufficient to identify a particular R-type
instruction.
