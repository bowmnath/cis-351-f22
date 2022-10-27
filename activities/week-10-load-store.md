# General Questions

For the first few questions, consider the instruction `lw $t0, 4($s1)`.

1. What is the memory address that is being read and where is the data from
   that address being written?

2. Are there any restrictions on the value in `$s1` for this instruction to
   run successfully?

For the next few questions,
consider the MIPS microarchitecture from your textbook.

   ![mips microarchitecture](images/mips-full-microarchitecture.png)

3. Consider the instruction `lw $s0, 4($t0)`.
   In words, what is the value on the `ALUResult` line for this instruction?
   You do not need to go through the entire diagram to figure this out.
   Consider that one wire, and ask yourself where it is coming from
   (i.e., what is the job of the ALU in a `lw` instruction)
   or where it is going
   (i.e., what is the `A` input of `Data Memory` for a `lw` instruction).

4. Consider the instruction `lw $s0, 4($t0)` again.
   Does the `WriteData` line have any *useful* data on it for this instruction?
   How do you know?
   If so, describe where the data comes from.
   If not, try to figure out what non-useful data would be on that wire.

5. Consider the instruction `sw $s0, 4($t1)`.
   For each of the following parts of the circuit,
   decide whether it is useful or not useful for this instruction:
   * the ALU
   * the sign extender
   * the left-shifter (denoted `<<2`)
   * the mux with `MemtoReg` as its control line

6. Circle or highlight the parts of the circuit responsible for moving from
   one instruction to the next assuming we are *not* branching or jumping.

7. What is the value of `MemtoReg` for each of the following instructions?
   Write an `X` if the value does not matter.
   * `lw`
   * `add`
   * `addi`
   * `bne`

<!--
8. The instructions above have the following opcodes:
   * `lw` -- `100011`
   * `add` -- `000000`
   * `addi` -- `001000`
   * `bne` -- `000101`

   Assuming those were the only instructions implemented,
   give an example of how the control logic for `MemtoReg` could look.
   Assume that any `X` above is treated as a `0`
   (though this is not necessarily the case in a real circuit.)

For the next few questions,
consider the array `[7, 99, 14, 12]` with base address `0x10004000`
as pictured below.

```
addr       | data
---        | ---
0x10004014 |   X
0x10004010 |   X
0x1000400c |  12
0x10004008 |  14
0x10004004 |  99
0x10004000 |   7
```

7. Assume the base address is loaded into `$t4`.
   Write assembly code demonstrating two ways you could access `array[2]` in
   MIPS.
   *Hint*: One of the ways will require just one command,
   and the other will require more.

8. Assume the base address is loaded into `$t4`.
   Write assembly code to store the value 24 in `array[3]`.
   There are several ways to accomplish this.

9. Would writing general functions be possible without the `jal` instruction?
   If not, explain why not. If so, explain how.

10. The function `bar` is intended to add up the results of three other function
    calls.
    The code does not work correctly.
    It results in an infinite loop (among other problems).
    Why?

    ```
    bar:
        li $s0, 0
        jal fun1
        add $s0, $s0, $v0
        jal fun2
        add $s0, $s0, $v0
        jal fun3
        add $v0, $s0, $v0
        jr $ra
    ```

11. Would the following function implementation and corresponding call work
    correctly?
    If not, why not?
    If so, is it a good implementation?

    ```
        addi $t0, $0, 4
        addi $t1, $0, 8
        jal sum            # sum(4, 8)
        ...

    sum:
        add $v0, $t0, $t1
        jr $ra
    ```

12. The following code does not work.
    Why? What would happen if it were run?
    (Note that the comments explain what the code is *supposed* to do,
    not necessarily what it actually does.)

    ```
        # array entries are [1, 3, 9, 12, 15]
        # s0: base address of array
        # t0: constant 10
        # t4: accumulator
        addi $t0, $0, 10
        addi $t4, $0, 0

        lw $t1, 0($s0)

    loop:                    # loop while array entry < 10
        slt $t2, $t1, $t0
        beq $t2, $0, done
        add $t4, $t4, $t1    # $t4 += $t1
        addi $s0, $s0, 4     # move to next array entry
        j loop
    done:
    ```
-->
