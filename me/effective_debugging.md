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

## Drill Up from the Problem to the Bug or Down from the Program’s Start to the Bug
[Magic number (programming) - Wikipedia](https://en.wikipedia.org/wiki/Magic_number_%28programming%29) -> You can find a whole lot of magic numbers that the program makes up when it crashes. 
 Program crashes are pretty much easy to resolve because of its call stack nature, and it actually stops at some point. Of course it could not give a dying message. Then we’ll need our memory dumping skills to actually get some evidence of the program’s death.
 Programs that freeze, a logical way of thinking of the freeze is actually an infinite loop. If the program keeps on looping, I’m sure that it’ll make the program freeze since the main thread will be looping forever and all the events that we make will be queued in the back. If the stack gets too big, then the program will eventually crash. Anyway, you need to find the exit point of the infinite loop and see whether how to fix that condition to cover all the probabilities.
 If your program is manifesting through an error message, make sure to use the `fgrep -r` command to find literal string matches. 

### Things to Remember
* Work bottom up in the case of failures that have a clearly identifiable case, such as crashes, freezes, and error messages.
* Work top down in the case of failures that are difficult to pin down, such as performance, security, and reliability. 

## Find the Difference between a Known Good System and a Failing One
Obviously, you need to find the difference between a nice working system and the failing one. How are you going to differentiate? First of all, you have to get as many logs as you can. The network logs, database SQL logs, operation system calls, dynamic library calls, and language calls. You always should verify whether your code has run with the right arguments. 
 Use `javap`, `ldd`, `dumpbin`, etc for code analysis. If the code is identical and you don’t know why it’s not working, then you have to go with seeing the assembly code that the compiler generates. This is how you dig deep.
 How the hell? A binary search? I don’t really understand this thing but you can do it very easily with `git bisect`. It’s about hunting the bugs from history.
 Use `comm`, `diff`, `cut`, `sed`, `grep -v` and etc to do text manipulation. It helps you look at the log files much more easier and see where the actual difference lies in. 

### Things to Remember
* Compare the behavior of a known good system with that of a failing one to find the failure’s cause.
* Consider all of the elements that can influence a system’s behavior: code, input, invocation arguments, environment variables, services, and dynamically linked libraries. 

## Use the Software’s Debugging Facilities
Use debugging facilities! And also, you should make debugging facilities in your program too. When to actually make debug logs and all that stuff. I think that’s pretty much a real important thing!
 Use `-x` option for shell commands, `explain` for debugging SQL, and see if all the other binaries have this kind of thing. Find debugging facilities for every command one day!

### Things to Remember
* Identify what debugging facilities are available in the software you’re troubleshooting, and use them to investigate the problem you’re examining.

## Diversify Your Build and Execution Environment
I’ve never thought of it in this way. So you have to diversify your build and execution environment to find more bugs? All the C library implementations are different between all platforms. You even saw `IOCP`, `kqueue`, and `epoll`. It’s that simple. In result, if the C libraries are various, then interpreted languages which have a dependency on them will vary on their behavior. 
 It’s cool how programming languages that are close to hardware can differ in results because of the CPU architecture. Even 32bit and 64bit architectures have differences in the programming language. They actually print out different results for the size of the data type. How cool. 
1. Use VM, Docker to test on multiple environments.
2. Small inexpensive computers(For other CPU architectures)
3. Rent clouds!

Use multiple compilers to statically check your code. It’s a good practice! Cause compilers are good at catching language stuff. So multiple compilers will make that stronger.
* C, C++: LLVM, GCC
* Java: OpenJDK, GNU Classpath
You can also reimplement your low level code into a higher level language and identify what went wrong.

### Things to Remember
* Diverse compilation and execution platforms can offer you valuable debugging insights
* Fix a tricky algorithm by implementing it in a higher-level language

## Focus Your Work on the Most Important Problems
This item is actually about prioritizing work. It’s either creating or maintaining. In other words, crushing bugs. Bugs are everywhere, and you need to focus on bugs that are really critical.

High priority errors:
* Data loss
* Security
* Reduced service availability
* Safety
* Crash or freeze
* Code hygiene

Low priority errors:
* Legacy support
* Backward compatibility
* Cosmetic issues
* Documented workarounds
* Rarely used features

### Things to Remember
* Not all problems are worth solving
* Fixing a low-priority issue may deprive you of the time required to address a high-priority one

# General-Purpose Methods and Practices
Debugging techniques vary on the platform and technology you use. But in this chapter, we’re going to look at methods that work in most of the environments and technologies. It’s general!

## Set Yourself Up for Debugging Success
Believe that the problem can be found and fixed. It’s all about your mindset. You need to give plenty of time. Don’t stop until you get it. It also goes with persistence. If you persist, you’ll get a chance to get all the test cases as you can. The test cases must have a lot, and you’ll get to automate your debugging environment. Always try to study the things that you are debugging. You won’t know where it’ll come from. This leads to no distractions while you debug, and when you can’t solve it, just give it to the diffuse mode. Remember, to do this, you have to have enough data. So if you don’t research as much, you won’t get the answer even if you give it to the diffuse mode.
 A debugging infrastructure. I’m sure that’s a really important thing to do. Look at where I work, they have so many debugging tools and really good infrastructure for doing that. 

### Things to Remember
* Believe that the problem can be traced and fixed.
* Set aside of sufficient time for your debugging task.
* Arrange to work without distractions.
* Sleep on a difficult problem.
* Don’t give up.
* Invest in your environment, tools, and knowledge.

#reading/books