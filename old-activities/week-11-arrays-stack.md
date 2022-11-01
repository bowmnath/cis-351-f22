# General Questions

1. Consider the following assembly function call.
    Give the values of `$a0`, `$t0`, and `$v0` at locations marked `A` and `B`
    in the code.
    Denote any value you do not know as `X`.

    ```
        addi $a0, $0, 5
        addi $t0, $0, 8
        jal fun
        ...  # A: After function call

    fun:
        # B: During function call, before executing
        li $t0, 6
        sll $a0, $a0, 2
        add $v0, $a0, $t0
        jr $ra
    ```

2. In high-level languages,
   variables have "scope",
   meaning that the two values of `a` in the following code are different and
   *do not affect one another*.
   ```
   int a = 1;
   void foo() {
        int a = 5;
   }
   ```
   What do we mean when we say that registers do not have a concept of scope
   for assembly functions?
   Why is this the case?
   Consider the code below if you are not sure.
   ```
   addi $t0 $t0 1
   ...
   foo:
   addi $t0 $t0 5
   ```
   Why is this important to remember as an assembly programmer?

**Note:** in any of the array questions below,
assume that arrays that store numbers are storing 32-bit (i.e., 4-byte)
integers.

3. Assume the base address of an array is stored in `$s0`.
   Write code to copy `array[1]` into `array[2]`
   (it will take more than one instruction).

4. We typically store an array by keeping its base address.
   If we knew the address of `array[3]` instead,
   could we still use the array successfully?
   Why or why not?

5. In C, when passing an array as an argument to a function,
   you should pass the length of the array as well.
   In Java, you typically would not.
   Why do you think this is done differently in the two languages?
   (Or, another way: why does Java not need to pass the length?)

6. Assume you have an array in `$a0`
   (why would it be there?)
   and you know that the length of the array is `5`.
   Write a loop that fills the array with `1`s.

7. Assume you have an array in `$a0`
   and you know that the length of the array is `5`.
   Using your code from the previous problem as a starting point,
   write code that computes a cumulative sum of the elements of the array.
   That is:
   * `c_array[0] = array[0]`
   * `c_array[1] = array[1] + array[0]`
   * `c_array[2] = array[2] + (array[1] + array[0])`
   * `c_array[3] = array[3] + (array[2] + array[1] + array[0])`
   * `c_array[4] = array[4] + (array[3] + array[2] + array[1] + array[0])`

   You should be able to do this using just one loop
   (use the fact that `c_array[i] = array[i] + c_array[i - 1]`).

   You can either overwrite the array in `$a0` or assume that `$s0` holds an
   empty array of the correct size -- your choice.
