# Lab 04 - SOP/POS and KMaps

In this lab, you’ve learned how to apply KMaps, Sum Of Products and Products of
sums to simplify digital logic equations. Then, you’ve proven out that they work
using an implemented design on your Basys3 boards.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary

Summarize your learnings from the lab here.

	We learned how to implement a KMap into Verilog, as well as saw the visual representation of the difference in efficiency between the naive and 	minterm files. We then learned how to generate a bitstream to a board based on the truth tables and KMaps we created.

## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?

	This is because only 1 input is changing, so 10 can go back to 00 and so forth.

### Why are the names Sum of Products and Products of Sums?
  
        With Sum of Products, we are taking the inputs and anding them together to make minterms, any of which result in a 1 output. For Products of Sums,
	we are inverting the minterms, meaning that the and's become or's, and or's become and's. (A & B becomes ~A | ~B)

### Open the test.v file – how are we able to check that the signals match using XOR?

	With the test file, the ^ symbol represents a XOR gate, meaning that our logic follows XOR logic.

