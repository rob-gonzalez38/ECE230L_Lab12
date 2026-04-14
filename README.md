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
Rob Gonzalez
Orlando Godina

## Summary

## Lab Questions

### Compare and contrast One Hot and Binary encodings
One-hot encoding uses one flip-flop per state, making the logic simpler and easier to read, since each state is directly represented. However, it uses more hardware resources as the number of states increases. Binary encoding uses fewer flip-flops by representing states as binary values, which is more efficient. The trade-off is that the logic becomes more complex and requires combining multiple bits to determine states.

### Which method did your team find easier, and why?
Our team found one-hot encoding easier to implement and understand. Each state had its own signal, which made debugging and writing logic more straightforward. Binary encoding required more careful work with equations and was easier to make mistakes in. One-hot was a little more work upfront but easier at the end, which my team overall decided, that deemed it easier as a whole.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.

