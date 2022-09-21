Note: some questions may be taken entirely or in part from your textbook.

# General Questions

1. Using full adders as black boxes,
   draw a ripple-carry adder capable of computing the sum `11001_2 + 10011_2`.

2. Compute the above sum by hand.
   Then, label your diagram showing the values on the input and output wires for
   your circuit for this set of inputs.
   (I'm not looking for something abstract --
   you should actually have `1`s and `0`s on the input and output wires.)

3. Using your circuit above as a black box,
   draw a 10-bit ripple-carry adder.
   How many full adders are on the critical path for this circuit?

4. Using your circuit from (1) as a black box,
   draw a 10-bit carry-select adder.

5. How many full adders are on the critical path of the circuit from the
   previous question?

   For the questions below,
   you may assume the delay of multiplexors (`T_mux`) is the same as the delay
   of full adders (`T_FA`).

6. Draw a 4-bit carry-select adder using full adders and multiplexors.
   Use blocks of size two.
   * How many full adders does this circuit use?
   * What is the propagation delay of this circuit in terms of `T_FA`?
   * How does this correspond to the propagation delay of a 4-bit ripple-carry
     adder?

7. Draw a 5-bit carry-select adder using full adders and multiplexors.
   Try to choose the block sizes to minimize the propagation delay.

8. Consider a group of full adders making up a ripple-carry adder.
   Assume all gates have a delay of 8 nanoseconds
   (for this question,
   we are switching gears a little bit and looking *inside* the full adders).
   If a full adder other than the first receives its carry-in at time 64,
   at what point can we be sure that full adder has correctly produced
       * its sum?
       * its carry-out?

9. Your lab partner wants to speed up your 16-bit adder using the following
   idea:
       * use two 16-bit ripple-carry adders,
         one with a carry-in of 1 and the other with a carry-in of 0
       * attach the outputs to multiplexors and use the actual carry in as the
         selector for the muxes

   How would you explain to them that this is a bad idea?
   How could the idea be improved?

10. Draw a 6-bit carry-lookahead adder using blocks of size two.
    * How many full adders does your circuit contain?
    * How many full adders are on the critical path?

11. Assume all logic gates (e.g., `AND`, `NOT`, etc.) have a delay of 5
    and that the delay of a full adder is 10
    (this ratio is not realistic given the construction of a full adder,
    but it will be close enough for this problem).
    Compute the propagation delay of the circuit you drew above.

12. Add another block to your adder above to make it an 8-bit adder.
    * What is the propagation delay of this new cicruit?
    * How does it compare to the propagation delay of an 8-bit ripple-carry
      adder?

13. Given `G3:2`, `G_1:0`, `P_3:2`, `P_1:0`, and a carry-in `C_in`,
    give a Boolean expression to determine `C_3`.
    That is, if you know the generate and propagate logic for 2-bit blocks,
    how can you determine the carry-out for the combined 4-bit block?
    (Hint: The expression should look familiar.)

14. Given `G5`, `G4:0`, `P5`, `P4:0`, and a carry-in `C_in`,
    give a Boolean expression to determine `C_5`.

    Switching gears to K-maps...

15. Consider the Boolean expression
    ```
    A'B'C' + A'BC' + A'B'C + AB'C
    ```
    Simplify this expression using a K-map.
    You may check your work using Boolean algebra,
    but you will need to know how to draw and circle a K-map for the exam.

16. Consider the unlabeled K-map below.
    Assuming the K-map was drawn in the standard way,
    what is the truth table that would produce this K-map?
    ```
    A \ BC
      -----------------
      | 0 | 1 | 1 | 0 |
      |---------------|
      | 1 | 1 | 0 | 0 |
      -----------------
    ```

17. Use the truth table you generated for the previous question to find a
    sum-of-products Boolean expression.

18. Using the K-map from the previous question,
    find a simplified Boolean expression.
