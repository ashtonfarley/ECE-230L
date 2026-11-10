# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

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

We are building modulo and ripple counters using D and T flip-flops full adders, and comparator logic to divide clock frequencies by 12 and 8, respectively.

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?

The modulo counter toggles its output once every Count clock cycles, but a complete square-wave cycle requires two toggles.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?

This is because each T-flip-flop toggles when it detects a rising edge on its clock input.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?

We would need 17 flip-flops.

