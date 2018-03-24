# Java 8 Lambdas


## Introduction

### Why Did They Need to Change Java Again?

- So Java came out to actually make developer just think about code and logic more than using up the CPU and every byte of memory as efficient as possible.

	- Come to think of it, All the things that get developed, developers get easier to actually develop stuff.

- So the challenge was, multi core CPU’s. We needed a way to actually provide ways to make use of them. Concurrency is the main issue in parallelism. And yes, that is the java.util.concurrent package, but it wasn’t enough. That’s why we started to use lambda enabled code.

	- If we have lambdas, we can pass around functions and make callbacks more readable and easier. (Java still had callbacks and could be implemented by anonymous singular classes). But hey! We’re getting over and can do non-blocking stuff with lambdas.

- OOP: Abstraction of data FP: Abstraction of behavior In the real world, we’ll need both of them.

### What Is Functional Programming?

- The heart of functional programming: thinking about the problem domain in terms of immutable values and functions that translate between them.

### Example Domain

- We’ve got three simple domains. Artist, Track and Album. We’ll use these domains to actually implement functional code. Pragmatic functional code.

## Lambda Expressions

### Your First Lambda Expression

### How to Spot a Lambda in a Haystack

### Using Values

### Functional Interfaces

### Type Interface

### Key Points

### Exercises

## Streams

### From External Iteration to Internal Iteration

### What’s Actually Going on

### Common Stream Operations

- collect(toList())

- map

- filter

- flatMap

- Max and min

- A Common Pattern Appears

- reduce

- Putting Operations Together

### Refactoring Legacy Code

### Multiple Stream Calls

### Higher-Order Functions

### Good Use of Lambda Expressions

### Key Points

### Exercises

### Advanced Exercises

## Libraries

### Using Lambda Expressions in Code

### Primitives

### Overload Resolution

### @FunctionalInterface

### Binary Interface Compatibility

### Default Methods

- Default Methods and Subclassing

### Multiple Inheritance

- The Three Rules

### Tradeoffs

### Static Methods on Interfaces

### Optional

### Key Points

### Exercises

### Open Exercises

## Advanced Collections and Collectors

### Method References

### Element Ordering

### Enter the Collector

- Into Other Collections

- To Values

- Partitioning the Data

- Grouping the Data

- Strings

- Compositing Collectors

- Refactoring and Custom Collectors

- Reduction as a Collector

### Collection Niceties

### Key Points

### Exercises

## Data Parallelism

### Parallelism Versus Concurrency

### Why Is Parallelism Important?

### Parallel Stream Operations

### Simulations

### Caveats

### Performance

### Parallel Array Operations

### Key Points

### Exercises

## Testing, Debugging, and Refactoring

### Lambda Refactoring Candidates

- In, Out, In, Out, Shake It All About

- The Lonely Override

- Behavioral Write Everything Twice

### Unit Testing Lambda Expressions

### Using Lambda Expressions in Test Doubles

### Lazy Evaluation Verses Debugging

### Logging and Printing

### The Solution: peek

### Midstream Breakpoints

### Key Points

## Design and Architectural Principles

### Lambda-Enabled Design Patterns

- Command Pattern

- Strategy Pattern

- Observer Pattern

- Template Method Pattern

### Lambda-Enabled Domain-Specific Languages

- A DLS in Java

- How We Got There

- Evaluation

### Lambda-Enabled SOLID Principles

- The Single Responsibility Principle

- The Open/Closed Principle

- The Dependency Inversion Principle

### Further Reading

### Key Points

## Lambda-Enabled Concurrency

### Why Use Nonblocking I/O?

### Callbacks

### Message Passing Architectures

### The Pyramid of Doom

### Futures

### Completable Futures

### Reactive Programming

### When and Where

### Key Points

### Exercises

## Moving Forward

