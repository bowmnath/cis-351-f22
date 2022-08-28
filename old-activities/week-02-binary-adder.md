Note: some questions are taken entirely or in part from your textbook.

# Computational Questions

These questions are not particularly open-ended --
you will want to practice these kinds of question with various numbers until
you are confident you understand how to do them.

P1. Give the value of the following base-7 number in base 10:
143

P2. Give the hexadecimal equivalent of the following decimal number:
257

P3. Convert the following binary number to hex:
`1101101`

P4. What is `10010_2 / 2`?
You may want to verify your answer by converting to decimal,
but you should be able to solve the question without needing to convert.

P5. What range of numbers can be represented in 6 bits using
* unsigned binary numbers?
* two's complement binary numbers?

The next few questions involve "bitwise operations."
I will give a brief explanation when we get to these,
but the gist is that each hex number is really just short-hand for a binary
number.
Find the corresponding binary numbers,
and apply the operation (`AND`, `OR`, or `XOR`) to each pair of bits
independently.

P6. What is the result of the bitwise operation `0xAC & 0x0F`?

P7. What is the result of the bitwise operation `0xAC | 0x0F`?

P8. What is the result of the bitwise operation `0xAC ^ 0x0F`?
(The symbol ^ in this context means "Exclusive OR".)

# General Questions

**Note:** In these activities, and *anywhere else in the course*,
if I mention signed binary numbers without specifying the format,
I am referring to two's complement numbers.

1. Base 16 (hex) numbers are useful because they are a shorthand way of writing
binary.
Two hex digits are the equivalent of one byte (8 bits).
What base could we use if we wanted to represent each byte with a single digit?
Why is that not common?

2. If an animal shelter is holding 18 stray dogs and wants to assign each of
them a unique numeric ID,
what is the fewest number of bits they would need to allocate to store an ID?

3. Consider 5 foods: apples, carrots, grapes, cookies, celery sticks.
Draw a circuit that determines whether a given food is a fruit.
This needs to occur in two steps:
* Choose a representation for the foods that a circuit will understand.
There is no single correct representation,
though some might be easier to work with.
* Draw the circuit. Writing a truth table first may be helpful.
Your circuit can output either True or False if an invalid input is given --
i.e., don't worry about invalid inputs for this question

4. Given a fixed size of 6 bits,
which binary system can represent more numbers:
unsigned or two's complement signed?
Explain.

5. Assume you have built an adder that computes the sum of two unsigned 16-bit
binary numbers.
How would you modify your adder to produce the sum of two signed 16-bit binary
numbers.

6. What is the decimal equivalent of the *signed* binary number `1101_2`?

7. Given your previous answer,
for each system,
provide an example of two binary numbers that result in overflow when added.

8. Consider the following operation: `1101_2 + 0111_2`.
Would the operation overflow using
* unsigned arithmetic?
* siged arithmetic?

9. Design a circuit that multiplies two one-bit numbers.
(We will not work with binary multiplication in this course,
except in powers of two.
This is just for circuit design practice.)

10. A 16-bit adder is still a combinational circuit because its outputs depend
only on its inputs.
How many rows would there be in the truth table for a 16-bit adder?
Don't forget about the carry in.

11. Prove that the set `{AND, NOT}` is logically complete.

12. Design a circuit that returns `true` if a four-bit input represents the
number 6, and `false` otherwise.

13. Design a circuit that returns `true` if a four-bit input represents the number 0, and `false` otherwise.
