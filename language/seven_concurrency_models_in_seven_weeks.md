# Seven Concurrency Models In Seven Weeks


## Introduction

### The most interesting part was, Moore’s law. Because of this, we only get more of CPU cores and not making a single core work faster. 

- Because of this, we can’t just wait for hardware to get better. We need to use these multiple cores and write our code to run faster by using them.

### Concurrent or Parallel?

- Related but Different

	- Parallelism: Doing a lot of things at once.

		- I have a task that I’m doing and I have a lot of help!

	- Concurrency: Dealing with a log of things at once.

		- I have a lot of tasks to do at once!

- Beyond Sequential Programming

	- The great point of coding nowadays. Doing everything sequential, one thing after another. 

	- Said something about nondeterminism. I think the meaning of this is, that when I do parallel things, the events that occur won’t be always the same? Well duh, it will be the same but it won’t finish on the same time. So you’ll have to think of that.

### Parallel Architecture

- Bit-Level Parallelism

	- So the CPU can consume some bits. The 32bit architecture would consume 32 bits for each operation. It was 8 bits in the past. So there are some limitations of just making the numbers up. We haven’t learned right now, but they say they’re going to tell us.

		- Could I do a guess? It would be harder to process too many bits for the CPU? Since the spinning speed won’t get that faster, which means it won’t be able to do all the big computations.

- Instruction-Level Parallelism

	- So in the instruction level of a CPU computation, it’s getting parallel. I don’t know how, but they’ll tell us in the memory visibility section.

- Data Parallelism

	- SIMD(Single Instruction, Multiple Data). I wonder what the algorithm is for doing parallel tasks. Like, how many threads should you create in parallel to do computation on such a size of data. This is really hard to think. 

		- What would be the right number? How would that number be calculated?

- Task-Level Parallelism

	- Task-level is like, processes? I guess. Yeah, multiple processors. But the thing is, it comes with distributed computing over here. Since we have to know where the memory, and how much the memory is used.

		- Shared memory vs distributed memory. If the memory is inside just one dude, then it’ll be easy since you don’t have to think about much. But what if your program is in a lot of memory cards? Okay, that’s the thing.

### Concurrency: Beyond Multiple Cores

- Concurrency is just more than doing parallelism well. It’s more about responsive, fault tolerant, efficient, and simple software.

	- What is fault tolerant? It’s something called “UNSTOPPABLE!!!”. An unstoppable software!

- Concurrent Software for a Concurrent World

	- Everything executes at the same time. So the best way to write software, is to make it concurrent. Everyone can listen to music while tapping it and playing games and stuff. Concurrent! But to make it concurrent as possible, we need to use parallelism.

- Distributed Software for a Distributed World

	- Yep, just talking about availability zones. Multiple datacentres! Hooray!

- Resilient Software for an Unpredictable World

	- Self healing software. That’s the point!

- Simple Software in a Complex World

	- Rather making one thread so complex, why not make a lot of threads that are simple tasks? 

	- The thing that I learned over here is that, there are good tools that can make a big sequential task into way faster and easy tasks!

### The Seven Models

- Threads and locks

- Functional programming

- The Clojure Way-separating identity and state

- Actors

- Communicating Sequential Processes(CSP)

- Data parallelism

- The Lambda Architecture

- Questions that you should ask when you read each chapter

	- Is this model applicable to solving concurrent problems, parallel problems, or both?

	- Which parallel architecture or architectures can this model target?

	- Does this model provide tools to help you write resilient or geographically distributed code?

## Threads and Locks

### The Simplest Thing That Could Possibly Work

### Day 1: Mutual Exclusion and Memory Models

### Day 2: Beyond Intrinsic Locks

### Day 3: On the Shoulders of Giants

### Wrap-Up

## Functional Programming

### If It Hurts, Stop Doing It

### Day 1: Programming Without Mutable State

### Day 2: Functional Parallelism

### Day 3: Functional Concurrency

### Wrap-Up

## The Clojure Way---Separating Identity from State

### The Best of Both Worlds

### Day 1: Atoms and Persistent Data Structures

### Day 2: Agents and Software Transactional Memory

### Day 3: In Depth

### Wrap-Up

## Actors

### More Object-Oriented than Objects

### Day 1: Messages and Mailboxes

### Day 2: Error Handling and Resilience

### Day 3: Distribution

### Wrap-Up

## Communicating Sequential Processes

### Communication Is Everything

### Day 1: Channels and Go Blocks

### Day 2: Multiple Channels and IO

### Day 3: Client-Side CSP

### Wrap-Up

## Data Parallelism

### The Supercomputer Hidden in Your Laptop

### Day 1: GPGPU Programming

### Day 2: Multiple Dimensions and Work-Groups

### Day 3: OpenCL and OpenGL---Keeping It on the GPU

### Wrap-Up

## The Lambda Architecture

### Parallelism Enables Big Data

### Day 1: MapReduce

### Day 2: The Batch Layer

### Day 3: The Speed Layer

### Wrap-Up

## Wrapping Up

### Where Are We Going?

### Roads Not Taken

### Over to You

