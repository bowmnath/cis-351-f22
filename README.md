## Welcome to CIS 351!

This is the main website for the course.
The slides, schedule, and links to assignments, labs, projects,
as well as the official course policies,
will be posted here.
The course also uses other websites for specific purposes.
* [Piazza](https://www.piazza.com/gvsu/fall2022/cis351) is a question-and-answer forum.
*All official announcements will be sent through Piazza*,
and you are responsible for monitoring Piazza to keep up to date with
announcements
(Piazza by default will send an email when an announcement is posted).
    * You can read the following [Piazza FAQ](misc/piazza-faq.md) if you have
      questions.
* [Prairielearn](https://www.prairielearn.org/pl/course_instance/129541) is where you will
submit all of your assignments, labs, and projects.
After submitting labs to Prairielearn, don't forget to update the
["Grade me" spreadsheet](https://docs.google.com/spreadsheets/d/1shghdhT2vdgzLtZ1ldm2VO2dvFkBJcX154lu-eaglHk/edit?usp=sharing)
as described in the syllabus.
* [ClassTranscribe](https://classtranscribe.illinois.edu/offering/25d3a943-1da6-4e69-b804-6f088a538887)
is where the videos will be hosted.

That seems like a lot to monitor,
but don't worry -- you really need only actively follow Piazza.
I will release announcements there any time assignments or videos are assigned,
and I will post links to them directly on this page.

Be sure to read through the [syllabus](syllabus.md) for course policies,
contact information, and other important info.

## Schedule

** Note: This is an estimated timeline and subject to change. **

| Week | Topics | Activities | Deliverables |
| ---- | ------ | ---------- | ------------ |
|  1   | Introduction<br>[intro slides](slides/intro.pdf)<br>Combinational circuits<br>[circuits slides](slides/boolean-circuits.pdf)<br>[circuit representation slides](slides/boolean-representations.pdf)<br>[conversion slides](slides/boolean-conversions.pdf)<br>[SOP & PLA slides](slides/boolean-sop.pdf)<br>[logical completeness slides](slides/boolean-logical-completeness.pdf) | [In-class Activities](activities/week-01-intro.md) | [Syllabus quiz](https://www.prairielearn.org/pl/course_instance/129541/assessment/2322055)<br><br>[Lab partner survey](https://forms.gle/ea66Z7WEBJBz4LtJA) |
|  2   | Binary numbers<br>[intro slides](slides/binary-intro.pdf)<br>[usage slides](slides/binary-use.pdf)<br>[tricks/tips slides](slides/binary-hex.pdf)<br>Negative binary numbers<br>[sign-magnitude slides](slides/binary-sign-magnitude.pdf)<br>[two's complement slides](slides/binary-twos-complement.pdf)<br>[overflow slides](slides/binary-overflow.pdf)<br>Boolean algebra<br>[simplification slides](slides/boolean-simplify.pdf)<br>Ripple-carry adder<br>[half adder slides](slides/half-adder.pdf)<br>[ripple-carry adder slides](slides/ripple-carry-adder.pdf)<br>Circuit Timing<br>[circuit timing slides](slides/circuit-timing.pdf) | [In-class Activities](activities/week-02-binary-adder.md) | [Lab 1 -- Introduction to DLUnit](https://www.prairielearn.org/pl/course_instance/129541/assessment/2322073)<br><br>[HW1: Combinational circuits](https://www.prairielearn.org/pl/course_instance/129541/assessment/2322138) -- Friday, Sep. 9 (recommended) |
|  3   | Ripple-Carry Timing<br>[ripple-carry timing slides](slides/ripple-carry-timing.pdf)<br>Multiplexors<br>[multiplexor slides](slides/muxes.pdf)<br>Carry-select adder<br>[carry-select slides part 1](slides/carry-select-part1.pdf)<br>[carry-select slides part 2](slides/carry-select-part2.pdf)<br>Carry-lookahead adder<br>[carry-lookahead slides part 1](slides/carry-lookahead-part1.pdf)<br>[carry-lookahead slides part 2](slides/carry-lookahead-part2.pdf) | [In-class Activities](activities/week-03-faster-adders.md)<br><br>[Practice Midterm 1](practice-exams/practice-exam-1.pdf)<br><br>[Practice Midterm 1 Solutions](practice-exams/practice-exam-1-solutions.pdf)<br><br>[System-check exam](https://www.prairielearn.org/pl/course_instance/129541/assessment/2322458)<br><br>[System-check exam (timed)](https://www.prairielearn.org/pl/course_instance/129541/assessment/2322459) | [Lab 2 -- First breadboard lab](https://www.prairielearn.org/pl/course_instance/129541/assessment/2322227)<br><br>[HW2: Boolean Algebra](https://www.prairielearn.org/pl/course_instance/129541/assessment/2322305) -- Friday, Sep. 16 (recommended) |
|  4   | Karnaugh Maps<br>[k-map slides](slides/karnaugh-maps.pdf)<br>Latches<br>[latches slides](slides/latches.pdf) | [In-class Activities](activities/week-04-adders.md) | **First Midterm** -- Tuesday, Sep. 20 (in lab)<br><br>[Lab 3 -- Building adder lab](https://www.prairielearn.org/pl/course_instance/129541/assessment/2322432) |
|  5   | Flip-flops<br>Synchronous sequential circuits<br>[flip-flop slides](slides/flip-flops.pdf)<br>[synchronous sequential slides](slides/synchronous-sequential.pdf)<br>[timing sequential slides](slides/sequential-timing.pdf)<br>Pipelining<br>[pipelining slides](slides/pipelining.pdf) | [In-class Activities](activities/week-05-sequential.md) | [Project 1](https://www.prairielearn.org/pl/course_instance/129541/assessment/2322472) -- Friday, Sep. 30 (standard credit) |
|  6   | Turning circuits into computers<br>[automatic computer](slides/arch-automatic-computer.pdf) | [Handout: Building a computer](handouts/architecture-intro-handout.pdf)<br><br>[Practice Midterm 2](practice-exams/practice-exam-2.pdf) | [Lab 4 -- Sequential circuits](https://www.prairielearn.org/pl/course_instance/129541/assessment/2322730)<br><br>[HW3: Sequential Circuits](https://www.prairielearn.org/pl/course_instance/129541/assessment/2322766) -- Friday, Oct. 7 (recommended) |
|  7   | Computer Architecture<br>[architecture](slides/arch-intro.pdf)<br><br>R-type microarchitecture<br>[R-type datapath](slides/arch-mips-r-type.pdf)<br><br>I-type instructions<br>[I-type](slides/arch-mips-i-type.pdf)<br>[Implementing arithmetic I-type](slides/arch-impl-i-type.pdf)<br><br>Branches<br>[conditional branching](slides/arch-branches.pdf) | | **Second Midterm** -- Monday, Oct. 10 (in lab)<br><br>[Project 2](https://www.prairielearn.org/pl/course_instance/129541/assessment/2322749) -- ~~Wednesday, Oct. 12~~ Friday, Oct. 14 (standard credit) |
|  8   | Unconditional branch (jump)<br>[jump](slides/arch-jump.pdf)<br><br>Assembly programming constructs<br>[conditionals (if statements)](slides/assembly-conditionals.pdf)<br>[loops](slides/assembly-loops.pdf)<br><br>Branch microarchitecture<br>[Implementing branches](slides/arch-impl-beq.pdf)<br><br>Memory load/store<br>[memory instructions](slides/arch-memory.pdf)<br>[Implementing load and store](slides/arch-lw-full-impl.pdf) | | |
|  9   | Control logic<br>[Control logic](slides/arch-control-logic.pdf)<br><br>Arrays<br>[arrays](slides/assembly-arrays-intro.pdf)<br>[arrays and loops](slides/assembly-arrays-loops.pdf)<br><br>Functions<br>[functions](slides/assembly-functions.pdf) | | Branches lab<br><br>HW4: Architecture and Microarchitecture<br><br>Project 3 |
|  10  | Stack<br>[stack](slides/assembly-stack.pdf)<br>[recursion](slides/assembly-recursion.pdf) | | **Third Midterm**<br><br>Computer instruction types lab |
|  11  | Memory<br>[memory map](slides/arch-map-memory.pdf)<br>[loading and executing](slides/arch-loading.pdf)<br><br>Programming with memory<br>[data segment code](code-examples/data-segment-final.asm)<br>[heap code](code-examples/malloc.asm)<br>[generic debugging code](code-examples/generic-debug.asm)<br>[stack vs heap vs global (optional -- no video)](code-examples/stack-heap-global.asm)<br><br>Cache motivation<br>[cache motivation](slides/cache-motivation.pdf)<br><br>Direct-mapped cache<br>[direct-mapped cache](slides/cache-direct-map.pdf) | | Loops lab<br><br>HW5: Stack and Microarchitecture |
|  12  | Cache conflicts<br>[cache conflicts](slides/cache-direct-conflict.pdf)<br><br>Associative cache<br>[associative cache mapping](slides/cache-associative-map.pdf)<br>[associative cache conflicts (LRU)](slides/cache-associative-conflict.pdf)<br><br>Varying block size in cache<br>[mapping with larger block sizes](slides/cache-block-map.pdf)<br>[blocks of addresses](slides/cache-block-addresses.pdf)<br>[associativity vs block size and address bits](slides/cache-type-comparison.pdf) | | **Fourth Midterm**<br><br>Recursion lab |
|  13  | Cache performance<br>[cache performance](slides/cache-performance.pdf)<br><br>Basic pipelining in MIPS<br>[pipeline intro](slides/micro-pipeline-intro.pdf)<br>[pipeline performance](slides/micro-pipeline-performance.pdf) | | Cache lab 1<br><br>HW6: Cache |
|  14  | Data and Control Hazards<br>[data hazards](slides/pipeline-hazards-data.pdf)<br>[control hazards](slides/pipeline-hazards-control.pdf) | | Project 4<br><br>Pipeline lab |
|  15  | **Final Exam** | | |

## Useful links

[MIPS Reference Sheet](https://uweb.engr.arizona.edu/~ece369/Resources/spim/MIPSReference.pdf)
