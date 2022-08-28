# General Questions

1. Explain, in general terms,
why or how a single circuit is able to handle different instruction types.
Or, put another way,
if you were asked to add circuitry for a new instruction type,
how would you go about it in general?

2. Consider the datapath we implemented for R-type and (some) I-type
instructions, pictured below.

![R and I datapath](images/r_i_type.png)

What are the values of `RegDst` and `ALUSrc` when the instruction is `addi`?

3. In the datapath above,
write in the values on as many of the wires as possible for the instruction
`addi $14, $15, 8`.
What additional information would you need to completely fill out the diagram?

4. Explain the purpose of the wire above with bits `15-11`.
Which instructions ignore this wire?

5. We will learn how to build the control logic later.
Do you expect that the control logic will implemented with a combinational or a
sequential circuit?
Why?

For the next few questions, consider the following code snippet:
```
    addi $t0, $0, 2
    addi $t1, $0, 4
    addi $s0, $0, 0

    sll $t2, $t0, 1
    beq $t1, $t2, L1
    addi $s0, $s0, 8

L1:
    beq $t0, $t1, L2
    addi $s0, $s0, 4

L2:
    addi $s0, $s0, 2
```

6. What is the value in `$s0` when the code finishes?

7. Write high-level code that corresponds to the assembly code above.

8. What are the values of the immediates stored in the two branch
instructions?

9. Write the machine code for the branch instructions above.

10. You are designing a new MIPS-like 32-bit architecture.
However, you want your architecture to have 64 registers.
Design an R-type instruction for this architecture.
What decisions/compromises do you need to make in your design?

11. Why does a jump instruction need to store the address in a "funny" way?
Why not just encode the entire address in the instruction?

12. What is the value of the immediate stored in the jump instruction in the
following code snippet?
```
0x00400000 |       j place
0x00400004 |       addi $t0, $0, 1
0x00400008 |       addi $t1, $0, 2
0x0040000C |       and $t2, $t0, $t1
0x00400010 | place: or $t3, $t0, $t1
0x00400014 |       xor $t4, $t0, $t1
```

13. Why can a jump move farther than a branch?

14. Write the following in assembly.
```python
x = 8
if x < 10:
    y = 5
else:
    y = 6
```

15. Write the following in assembly.
```python
x = 8
if x < 2*x:
    y = 5
else:
    y = 6
```

16. Write the following in assembly.
```python
x = 8
y = 0
while x > 1:
    y = y + x
    x = x/2
```

For the next few questions, consider the following diagram.

![R, I, and branch datapath](images/i_r_beq_type.png)

17. If the sign-extender were replaced with a zero-extender,
    how would it affect
    * addi?
    * add?
    * branch?

18. If the `sll` shifted by 3 instead of 2, what would instruction(s) would the
    change affect?
    How would it change them?
    Give any upsides or downsides.


19. Modify the circuit to include a `bne` instruction as well as a `beq`
    instruction.
    You may add new control wires if needed.

20. Give an example of an instruction that would not work if the `RegWrite`
    flag were not present
    (i.e., if the register file were always writable).

21. As a first step toward moving to a 64-bit architecture,
    the designers of MIPS decide to move to 64-bit instructions that simply
    include padding (`0`s) as the last 32 bits and leave everything else about
    the instruction formats the same.
    What change(s) would need to be made to the diagram to support this new
    format?
    (Hint: It's not much.)

22. Why is this not a valid MIPS instruction: `addi $t0, $t1, 65500`?

23. If I want to get the number `0x03510000` into a register,
    how can I do that in three instructions or fewer in MIPS?

24. If I want to get the number `0x03510452` into a register,
    how can I do that in three instructions or fewer in MIPS?

25. If you wanted to get the effect of the instruction from (22) in MIPS,
    how could you go about it?
    (It may take more than one instruction.)

26. We usually consider `$rt` to be the destination register for I-type
    instructions.
    Give an example of an I-type instruction for which this is not an accurate
    description of `$rt`.

27. The address of the first line of code below is `0x0004080`.
    What is the address of the line marked `A`?
    ```
    beq $7 $8 gohere
    addi $19 $19 2
    gohere:
    sub $19 $8 $7  # A
    j goelsewhere
    ```
28. The current value of `$PC` is `0x000498c`.
    If the current instruction is a jump instruction,
    is there anywhere it *cannot* jump to?

29. Consider an architecture that has just one branch instruction --
    branch-if-equal-to-zero (`beqz`).
    This instruction takes just one register and a label and branches if the
    contents of the register are zero.
    How could you write the following conditionals using just that type of
    branch statement?
    (You will likely need other assembly statements before your branch
    statement.)

    **Snippet 1**
    ```
    if a != 5:
      a = 6
    ... # do stuff
    ```

    **Snippet 2**
    ```
    if a > 5:
      a = 6
    ... # do stuff
    ```

30. For both jump instructions and both branch instructions below,
what is the value of `place`
(i.e., what value is actually encoded in the instruction itself)?
```
0x00400000 |       j place
0x00400004 |       j place
0x00400008 |       beq $t1, $0, place
0x0040000C |       beq $s1, $s2, place
0x00400010 | place: or $t3, $t0, $t1
0x00400014 |       xor $t4, $t0, $t1
```
