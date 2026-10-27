# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

Ashton Farley
Micah Solomon

## Summary

We used multiplexers, demultiplexers and a d latch to store and retrieve data from memory.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?

Structural Verilog cannot store memory, and has no signal delay.

### What is the meaning of always @(*) in a sensitivity block?

It can contain regular continuous assignment where no memory is needed.

### What importance is memory to digital circuits?

Memory allows us to store and recall data, allowing us to build more complex circuits.