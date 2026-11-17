# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name

Ashton Farley
Micah Solomon

## Summary

We learned how D flip-flops store the current state and how logic gates determine the next state based on the input. We also learned how to use KMaps to simplify the logic needed for each state machine.

## Lab Questions

### Compare and contrast One Hot and Binary encodings

One Hot encoding uses one flip-flop for each state, while Binary encoding uses fewer flip-flops by representing states with binary numbers.

### Which method did your team find easier, and why?

We found One Hot encoding easier because each state has its own flip-flop. This made it easier to understand the state transitions and write the logic equations.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.

One Hot encoding would be better when there are plenty of flip-flops available and we want simpler, potentially faster logic. Binary encoding would be better when FPGA resources are limited because it uses fewer flip-flops.

