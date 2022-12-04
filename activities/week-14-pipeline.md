# General Questions

1. Consider wrapping Christmas presents with two friends.
   To wrap a present,
   you need to cut the paper to the correct size,
   fold it around the present,
   and then tape the paper on.

   If you have many presents to wrap but only one pair of scissors and one
   roll of tape,
   explain the three of you could work together to get the presents wrapped
   faster.

2. In the above scenario,
   would you be able to wrap presents three times as quickly as one of you
   could individually?
   Why or why not?

3. Assuming it takes 10 seconds to cut, 5 seconds to wrap, and 30 seconds to
   tape,
   how long will it take you to wrap 1 present?
   5 presents?
   (For this question,
   assume the time to hand the present from one person to the next can be
   ignored.)
   It will likely be very helpful to draw a diagram like the ones used in
   lecture to help figure out the time.

<!--
4. If instead it takes 10 seconds to cut, 30 seconds to wrap,
   and 5 seconds to tape,
   does this change the total time to wrap 1 present?
   5 presents?
-->

4. Consider the same scenario,
   except you have three pairs of scissors,
   three rolls of paper,
   and three tape holders.
   Could you be more efficient in this case?
   (Hint: consider alternative forms of parallelism.)

5. Next, let's go back to the scenario where you have just one set of
   materials (one pair of scissors, etc.).
   One difference between the present-wrapping situation we have been
   considering and a pipelined processor is that we have not had a "clock"
   in the present-wrapping scenario to control when presents move through
   the stages.
   If we somehow added a clock
   (for example, by saying that presents could only be passed when a timer went
   off)
   how would that change the timing for wrapping
   * one present?
   * hundreds of presents?
     (Hint: don't actually find the time required to wrap 100 presents.
     Instead, think about the long-term pattern you would observe in terms of
     pipelining.)

   If you drew a diagram to help answer the above question,
   it may be insightful to figure out how the diagram would change.

6. Come up with a real-life example of pipelining that you might see
   (it doesn't need to be anything practical,
   though you might be surprised how often the idea can come up).
   Discuss with your groupmates and explain why it is a pipeline,
   how well it would increase throughput,
   and so on.

![pipelined processor](images/pipelined-processor.png)

7. The processor above is split into five stages.
   Ideally, how would this change
   * the latency?
   * the throughput?

   In practice, give one or two reasons why the throughput will not be improved
   by the ideal amount.

![example code](images/pipeline-example-code.png)

For the next few questions,
consider either or both of the images above.

8. For each cycle (1 through 10),
   state how many instructions are in the pipeline during that cycle.

9. During cycle 5,
   which instruction is in the Execute stage?
   (If you do not remember which part is the Execute stage,
   ask me or check your notes.)

10. Given your previous answer,
    explain in more detail what is happening in the Execute stage of the
    pipeline during cycle 5.
    For example,
    what are the operands to the ALU?
    How are the control wires for that stage set?
    And so on.

    You may want to think back to previous homeworks on microarchitecture to
    answer this one.

11. During cycle 6 of the above image,
    what is happening in the Fetch stage?

12. With a five-stage pipeline,
    how many instructions can the processor complete
    * in the first 8 cycles?
      (Hint: you can use the image above for this if you are not sure.)
    * in the first 70 cycles?
      (You probably don't want to draw this entire picture --
      look for a pattern.)

13. With a five-stage pipeline and a clock cycle of 200 ps,
    what is the long-term throughput of the processor?

14. Imagine if the control signals were not pipelined along with the rest of
    the instruction.
    Instead, whatever is currently in the decode stage determines the control
    signals throughout the ciruit.
    What could go wrong if you have an `add` instruction in the Memory stage
    and a `sw` instruction in the Decode stage?

15. Consider the same scenario,
    but you now have an `add` instruction in the Execute stage
    and an `addi` instruction in the Decode stage.

16. According to the textbook,
    the Fetch and Memory stages are the slowest stages of the pipeline.
    If we were to slow down the ALU slightly,
    would this affect the throughput of the processor?
    Why or why not?

17. The pipelined MIPS process we learned about in lecture has 5 stages.
    If we added a 6th stage,
    would throughput be improved?
    Why or why not?
    (Hint: if you're not sure about this one,
    think about what determines the long-term throughput of the processor.)

    What about latency?

18. A bank needs to manage money transfers.
    Each time a customer wants to transfer money,
    the customer submits a requested on a printed card, such as
    ```
    From: XXX account
    To: YYY account
    Amount: ZZZ$
    ```
    There is a large stack of these at the end of the day,
    so the bank employees try to speed up the processing by "pipelining"
    the work.
    * Employee 1 looks up the `From` account and
      verifies that the current balance is enough to cover the transfer amount.
      They write the current balance down and pass it to the next employee.
    * Employee 2 looks up to `To` account and determines which bank the money
      will be transferred to.
      They write this information down and pass it
      (along with the current balance)
      to the next employee.
    * Employee 3 takes the information from the previous employees,
      increases the balance for the `To` account and decreases the balance for
      the `From` account.

    Pipelining the work in this way can result in a very serious error for
    the bank.
    What is the problem that can occur?
    (Hint: a single customer may make more than one transfer in a day.)

19. The above problem would be called a "hazard" in pipelining terms.
    How can the bankers continue to use pipelining but change their process so
    that the issue you found in the previous question does not occur?
    (Hint: consider how hazards are solved in a CPU pipeline and apply similar
    ideas to this scenario.)

20. Identify any data hazards in the code below.
    Determine whether any hazards you find can be solved via forwarding.
    ```
    add $t0 $t1 $t2
    add $t1 $t2 $t3
    add $s0 $t0 $t3
    ```

21. If you solve the hazard(s) above by forwarding,
    which stages will you be forwarding from and forwarding to?

22. Is it ever possible that a single instruction will need to have *two*
    operands forwarded to it?
    If so, explain how this could happen or give a small code example where it
    would be necessary.
    If not, explain why not.

23. Give the values stored in `$t0`, `$t1`, and `$t2` at the end of the
    following code snippet assuming
    * the code is run on a processor that correctly implements data forwarding.
    * the code is run on a processor that does not implement data forwarding.

    Why do you think I added the `addu` statements to the end?
    ```
    # $t0 holds the value 50
    # $t1 holds the value 40
    addi $t0 $t0 1
    addi $t1 $t0 1
    slt $t2 $t0 $t1
    addu $0 $0 $0
    addu $0 $0 $0
    addu $0 $0 $0
    addu $0 $0 $0
    ```
