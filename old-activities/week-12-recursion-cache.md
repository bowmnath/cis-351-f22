# General Questions

1. The following function does not preserve registers correctly.
   Modify it so that it does.

   ```
   fun:
        addi $s0, $0, 8
        addi $t1, $0, 4

        slt $t4, $a0, $s0
        slt $t5, $t1, $a0
        and $v0, $t4, $t5

        jr $ra
   ```

2. A compiler takes high-level code and converts it to assembly code.
   Given how close assembly code is to machine code,
   what useful purpose(s) does the assembler serve?
   (You have likely never called an assembler directly --
   your compiler calls it for you.)

3. What is a `syscall` in MIPS?
   Give two examples of things you can do with a `syscall`.

4. The instruction `li` is actually a pseudo-instruction --
   it is not part of the architecture,
   but it is converted to a "real" instruction for you.
   Give the real instruction equivalent to the following:
   `li $t0, 8`.
   (Hint: you can check in MARS if you are not sure.)

5. The base address of an array is stored in `$t0`.
   How does the process of accessing the second element array change,
   if at all,
   depending on whether the array is on the stack, the heap, or in global
   memory?

6. Consider the setup below.
   Write code to swap the values of `a` and `b`.
   Your code does not need to be in a function.
   ```
   .data

        a: .word 1
        b: .word 35

   .text
        # your code here
   ```

7. Consider the setup below.
   This time, the value of `b` was stored on the stack.
   Write code to swap the values of `a` and `b`.
   Note that in this case,
   you code would need to occur before `fun` returns.
   Otherwise, `b` will have been removed from the stack.
   ```
   .data

        a: .word 1

   .text

   fun:
        addi $sp, $sp, -4
        addi $t0, $0, 35
        sw $t0, 0($sp)  # storing b

        ... # add code here
   ```

8. The code below does not do what the comments suggest.
   How would you fix the code to match the comments?

   ```
   .data

        x: .word 40
        s: .asciiz "abc123"

   .text
        # x += 5
        addi $t0, x, 5
        sw $t0, x

        # grab second character of string ('b')
        la $t1, s
        addi $t1, $t1, 4
        lw $t2, 0($t1)
   ```

9. Write a *recursive* function called `recpow` that takes a single integer
   argument `n` and returns `2*recpow(n - 1)`.
   Assume `recpow(1) = 1`.
   For example,
   `recpow(3) = 2*recpow(2) = 2*(2*(recpow(1))) = 2*(2*(1)) = 4`.
   You may also assume that nobody will pass your function a number less than
   1 (a poor assumption in practice).

   You can use the example base case below if you find it helpful.
   ```
   recpow:
        li $t0, 1
        bne $a0, $t0, notbase
        li $v0, 1
        jr $ra

   notbase:
        # your code here
   ```
10. Describe in your own words what a cache is.
   <!-- Small, fast memory where we hold data we expect we will need in the
   near future. -->

11. How, if at all, does the use of a cache change
    * the results of a program?
    * the performance of a program?

12. Assume you own too many PC games to keep them all on your computer at once.
    At any given time,
    you have a subset of them downloaded that you can readily play.
    The other games are still available to you,
    but you need to download them before playing.
    Describe how this example relates to caches.

13. In the scenario above,
    you decide that keep the last ten games that you have played stored on
    your local machine.
    What idea from this class are you taking advantage of?

14. In the scenario above,
    whenever you decide you want to play a real-time strategy game,
    you download a few of your other real-time strategy games along with it
    even if you do not intend to play them today.
    What idea from this class are you taking advantage of?
    What possible downside could there be?

15. You buy yourself a new gaming machine as a present for successfully passing
    CIS 351.
    This machine has a fast, small SSD and a slow, large hard disk.
    You still store 10 games on the SSD.
    But, you now store an additional 50 games on the hard disk so that you do
    not need to download those games to play them --
    you can simply move the games from the hard disk to the SSD.
    Your library consists of hundreds of games,
    so you still have games that do not fit on your machine and must be
    downloaded if you want to play them.
    What concept from caching are you taking advantage of with this new setup
    that you could not take advantage of before?

16. You are programming a web interface for a popular sandwich shop, MIPSway.
    You decide to include a user's last three orders as buttons that they can
    press to quickly reorder.
    Also, you set up the site so that whenever a user puts bacon and lettuce
    on a sandwich,
    a box will pop up asking whether the user wants to add tomatoes.
    Explain why you may have made these choices using ideas from this class.
    (Hint: the answer is not just "caching.")

17. Give an example of temporal locality in your daily life or in something
    you might program.

18. Give an example of spatial locality in your daily life or in something
    you might program.

19. Looking at the memory hierarchy,
    (cheap) memory that we have a lot of is always slower than (expensive)
    memory that we do not have a lot of.
    Why are there no fast, cheap, and large options?

<!--
   Answer: because if something were both faster *and* cheaper,
   we would replace the other kind entirely.
   Put another way, our memory *is* big, fast, and cheap compared to older
   technologies.
-->

20. Start working on the
    [direct-mapped cache handout](/handouts/direct-cache-handout.pdf).
