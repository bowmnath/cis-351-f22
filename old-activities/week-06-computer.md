# General Questions

For the next few questions,
consider the image below.

![example circuit 1](images/set_clock_example_1.jpg)

1. Assume that getting information into a register takes 1 nanosecond and
getting information out of a register takes no time.
If all gates have a delay of 5 nanoseconds,
what does the clock period need to be set to for the circuit above to work
correctly?

2. If you set the clock period to be longer than what you found for the
previous question,
will the circuit work correctly?
If so, give a specific clock period and specific set of inputs that will cause
the circuit to fail and explain why.
Otherwise, explain why it is not possible,
and determine whether there are any other potential downsides.

3. If you set the clock period to be shorter than what you found for the
previous question,
will the circuit work correctly?
If so, give a specific clock period and specific set of inputs that will cause
the circuit to fail and explain why.
Otherwise, explain why it is not possible,
and determine whether there are any other potential downsides.

4. Given two additional one-bit registers,
how could you add them to the circuit to decrease the clock period?
What would the new clock period be?

5. Given an unlimited number of registers,
how low could you decrease the clock period?
In your updated circuit,
how long would it take for the circuit to fully compute one result?

6. You should have found that fully computing the result takes longer in your
new circuit than in the original.
Is there any sense in which your new circuit is better than the original?
Explain.
