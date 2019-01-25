# Effective Debugging
I should read a t least one item for each day. It’s because debugging techniques mostly come from case by case scenarios. Of course it’ll go from higher to lower, but these are just techniques. So I felt it would be better for me to actually acquire one item a day. Instead of reading it all, then I won’t be able to remember most of it. Just read one, and try to use it each day. 

# High-Level Strategies
It’s important to know that you have to know the big picture first. So we’ll be finding out about high level stuff first. Forest!

## Handle All Problems through an Issue-Tracking System
It’s pretty much all the things that I know. But there are things that I should remember. Priority, and severity. You should make the issue understandable, KISS. Always write down the people that are involved, and write a really great understandable way to reproduce the problem. 
 Last of all, you should document the progress when you’re tackling down the problem. 

### Things to Remember
* Handle all problems through an issue-tracking system
* Ensure each issue contains a precise description on how to reproduce the problem with a short, self-contained, correct example
* Triage issues and schedule your work based on the priority and severity of each issue
* Document your progress through the issue-tracking system

## Use Focused Queries to Search the Web for Insights into Your Problem
First of all, I think it’s best to get some techniques of searching the web. Adding “” to give exact matching searches, filetypes, etc. 
 The more important thing to get is, knowing how to ask a question. If you want to let others to give you good answers, you must give them a good question. Try to make a reproducible code snippet and give all the environmental variables that you can offer. Remember, polite all the way!
 If there’s a bug in an open source project, try to find the issue-tracking system, GitHub issues, and then give the author your question. Remember, polite!

### Things to Remember
* Perform a web search regarding error messages by enclosing them in double quotes
* Value the answers from StackExchange sites
* If all else fails, post your own question or open an issue

## Confirm That Preconditions and Postconditions Are Satisfied
* Look for values that are null when they shouldn’t be
* Verify that arithmetic values are within the domain of the called math function; for example, check that the value passed to log is greater than zero
* Look inside the objects, structures, and arrays passed to the routine to verify that their contents match what is required; this also helps you pinpoint invalid pointers
* Check that values are within a reasonable range. Often uninitialized variables have a suspect value, such as 6.89851e-308 or 61007410
* Spot-check the integrity of any data structure passed to the routine; for example, that a map contains the expected keys and values, or that you can correctly traverse a doubly linked list. 

After checking the above list, you need to think about the result of the algorithm execution.
* Do the computed results look reasonable? Are they within the range of expected results?
* If yes, are the results actually correct? You can verify this by executing the corresponding code by hand, by comparing them with known good values, or by calculating them with another tool or method.
* Are the routine’s side effects the expected ones? Has any other data touched by the suspect code been corrupted or set to an incorrect value? This is especially important for algorithms that maintain their own housekeeping information within the data structures they traverse.
* Have the resources obtained by the algorithm, such as file handles or locks, been correctly released?

Comparing results to known good ones, checking whether side effects are the same, handling locks, releasing resources.

### Things to Remember
* Carefully examine a routine’s preconditions and postconditions.

#reading/books