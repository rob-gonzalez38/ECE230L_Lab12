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
In this lab, we designed both concepts; One Hot and Binary State machines. Using the given state table, we noticed the 5 states that must be implemented. For the one hot machine, we had 5 D-flip-flops for states A, B, C, D, and E. We were able to draw the state machine diagram and assign each state with their inputs. We also assigned the outputs of "1" to both C or E using the variable 'z'. The binary state machine was very similar in logic. The difference here is the wire input labeled as a number instead of a variable. Both concpets also used a reset and clock button with 'w' assigned to switch 0. We were able to demostrate both concpets with either switch: w = 0 or w = 1.

## Lab Questions

### Compare and contrast One Hot and Binary encodings
One-hot encoding uses one flip-flop per state, making the logic simpler and easier to read, since each state is directly represented. However, it uses more hardware resources as the number of states increases. Binary encoding uses fewer flip-flops by representing states as binary values, which is more efficient. The trade-off is that the logic becomes more complex and requires combining multiple bits to determine states.

### Which method did your team find easier, and why?
Our team found one-hot encoding easier to implement and understand. Each state had its own signal, which made debugging and writing logic more straightforward. Binary encoding required more careful work with equations and was easier to make mistakes in. One-hot was a little more work upfront but easier at the end, which my team overall decided, that deemed it easier as a whole.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
You would use binary encoding over one-hot encoding for high nominal features, which include lots of categories or more than one thing. One hot encoding also produces many zeros in data that may sow down a model, while binary encoding reduces this sparsity.
