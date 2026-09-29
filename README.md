# Lab 05 - Combinatorial Logic

In this lab, you’ve learned real world applications of digital logic, as well
as how to assemble your own Verilog modules. In addition, you’ve learned how
the constraints file maps your inputs and outputs to real pins on the FPGA.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name

## Lab Summary

Learned how to connect 2 circuits to a basys3 board using min and max terms from truth tables.

## Lab Questions

### 1 - Explain the role of the Top Level file.

The top file connects the two circuits through a wire that takes on output as another's input.

### 2 - Explain the function of the Constraints file.

The constraint file sets the barriers of which leds and switches need to be used within the circuits.

### 3 - Was the selection of Minterm and Maxterm correct for each circuit? What would you have chosen?

Both the minterms and maxterms were correct for each circuit. Minterms a generally the easier of the two to work with,
as you don't have to invert the signals and can read the truth table as-is.
