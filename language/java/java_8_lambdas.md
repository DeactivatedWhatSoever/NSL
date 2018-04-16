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

- They call it, “passing around behavior”. Which technically means, you can pass around functions. You could only pass around specific data like int, long, String, Objects, Data Structures, etc. but now you can pass around actual pieces of execution, behavior, functions.

	- I think this is the most fundamental part of this book, as it’s called Java 8 Lambdas. Lambda expressions is what makes functional programming possible. Because you need to pass around the ‘result’ of a function to another function. Chaining the methods together, and stuff. Manipulating the data step by step! 

- The book also refers Lambdas as passing ‘code’ as ‘data’. I think that’s a pretty good thing to know.

- We can see a lot of lambda in event listening applications. Like GUI frameworks and stuff. They always use anonymous class methods to pass behavior. The reason lambda is good to come is, to destroy all the boilerplate code. All the redundancy like the parameter type. Since you can just reference the type from the calling functions’ parameter type. 

	- So two things, boilerplate code and parameter type reference. You don’t need to think about these two things when you get to use lambdas. It’s highly readable and it’s a way better way to express code as data. 

### How to Spot a Lambda in a Haystack

- Well there are several ways to express lambdas in Java. Well actually 4. One liner or more, with or without parameters. 2 by 2 and you’ll get them. Nothing really new over here but the book says something about context dependent referencing. So the parameter types are not specified. Which means it’s getting the type from the context. 

### Using Values

- Closures vs lambda expressions

	- Gotta know the difference! I heard that Java doesn’t have such closures in the language. But people also refer lambda expressions to closures. They say it’s a holy war so, just call them lambda expressions.

- Sometimes there are situations when you need to refer to values outside of the lambda. When we used anonymous classes, it was the same. But we must refer to ‘values’ which are not variables. Variables can change, which means, we can’t change the values of the variable inside the lambda expression. I think this is something with parallel computing, gotta go know the reason for this.

	- Reason why we can only refer to final values in lambda expressions. 

- You don’t need to explicitly make the variables final but, when you use the value like variables in the lambda, then the compiler will give you an error so don’t worry.

- Remember that the lambda expressions are ‘static’ typed. The expression type itself is functional interfaces.

### Functional Interfaces

- You can basically give any type of arguments and return and type. Even generics! To use generics, you have to name your interface with generics. BinaryOperator<T> for example. 

- There’s not much information I got from this section. I think the thing that I have to know is when to actually give the type of Functional Interfaces.

### Type Interface

- Type interference. It’s a really important word over here. Java needs to have enough information to determine the type that it needs to know. For example, we can see that the diamond operator for representing generics can be replaced by the diamond operator. You first define the variable name and type in the front, and you don’t have to put in the type again in the back when you make a new one. Same as lambdas, you don’t need to explicitly write down the type. It’s the same thing with generics.

	- I wonder how the compiler works. Would it just find the nearest code? See if it’s the same? Or just take the code like that. Not really sure how that’ll come out. Automatic type inference, gotta check the internals of this.

- Predicate. Didn’t know when to use these but, actually, it’s a guy that generate a boolean from an object! Well it could me more if we program not a little bit.

- It tells you about functional interfaces again! I think it’s an important point over here so you should go and take a look. I know there’s a @FunctionalInterface annotation! 

### Key Points

- A lambda expression is a method without a name that is used to pass around behavior as if it were data.

- Lambda expressions look like this: BinaryOperator<Integer> add = (x, y) -> x + y;

- A functional interface is an interface with a single abstract method that is used as the type of a lambda expression.

### Exercises

- Question 1

	- T -> Function -> R

		- So the diagram actually gives you the input, the functional interface, and the return type.

	- I’ll have to think about this.

	- x -> x + 1; x -> x == 1;

- Question 2

	- [Thread Local Java Docs](https://docs.oracle.com/javase/8/docs/api/java/lang/ThreadLocal.html)

	- What is thread safe and isn’t?

		- Something thread safe eh. When I read all about that stuff, it was something that an object inside a thread can be modified from a thread from the outside. 

		- This is actually a big problem if you think about it. So if you want to inherit the object inside a thread, you use ThreadLocal eh? Thread Local, just in the name. I get it now.

	- Thread Local can be done in a one liner. Which is cool. 

		- private static final ThreadLocal<DateFormatter> formatterThreadLocal =   
		          ThreadLocal.withInitial(() -> new DateFormatter(new SimpleDateFormat()));

- Question 3

	- Type inference is a function in the compiler that inferences the type! <> -> In over here.

	- It won’t be able to reference any of the Predicate or IntPred. Because, when you put them up, they’re both the same. Predicate<Integer> or a method with Integer value. Also, the method names are all the same. There’s no way for the compiler to tell which one to choose unless we specify the functional interface.

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

