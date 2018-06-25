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

- Can’t believe streams are added to the Collections API. I think Stream is a connector between the Collection and the Iterator right?

- Dang, didn’t know Java’s for loop actually calls the iterator and iterates with hasNext() and next()! I am shocked! Java’s a lie!

	- Oh yeah, they call iterating with for, while, do, and that stuff means ‘External Iteration’.

	- Iterator ... welcome to the external iteration world people!

- Now for Stream! When you call stream(), it doesn’t affect the original collection. You do the filtering, map, counting etc on it and the contents of the ‘stream’ will be changed. Which is functional, making the original collection ‘immutable’. 

	- This is ‘Internal Iteration’ people! Well, we can do more that that stuff with streams though. It’s pretty cool to have them. A key thing that you have to know is immutability.

### What’s Actually Going on

- You have to understand eager and lazy evaluation. 

	- Eager evaluation is something when the function returns another stream! Which means, a final value isn’t evaluated. Collect will be an example of eager, but the others like filter, map, those kind of stuff would be lazy evaluation.

### Common Stream Operations

- collect(toList())

	- Generates a list from the stream! I told you! It was eager!!! Oh and this dude can do toSet and stuff. I’m sure there will be a lot more argument values available. 

- map

	- Dude ... this doesn’t do the thing that filter does god damn it! You totally got it wrong. Map converts a value to another type! It produces another stream of new values.

	- If a for loop is adding some stuff to a list, go with map.

- filter

	- This is the function that really ‘filters’ the god damn stuff. If the condition is true, the element will be included in the stream!

	- If a for loop just has an if statement, just go for filter.

- flatMap

	- Flatten a list of lists. The main purpose is that. So when you have a stream that has a stream inside, just flat it up with flatMap.

- Max and min

	- Comaprator.comparing -> This is the key over here. Give the element that is the key of comparing. It’ll find you your max and min!

- A Common Pattern Appears

	- Think of the ‘sum’ operation while looping!  Object accumulator = initialValue; for(Object element : collection) {  
	      accumulator = combine(accumulator, element);  
	  }

	- The common pattern is used all the time like the one above. 

- reduce

	- To fix this common pattern and make it abstract, we use something called reduce. 

		- I see. This is reduction. Reducing a values of lists into one value. That is what reduction is. Reducing it to one value! Got it.

	- Go and find about mapReduce. See if it’s something that is involved with the ‘reduce’ over here.

- Putting Operations Together

	- Well this is just an example of using all the map, collect, and filter stuff. I actually have used them in my projects lately, but the most important thing that I learned about was the map dude. Also flapMap that I have never used once.

### Refactoring Legacy Code

- Best thing to think is, changing the for loops. External to internal dude!

- We should avoid ‘nested’ stream operations. Try to make everything in depth one!

	- Making their depths smaller is best with using flatMap. I think I should find more examples on using flatMap stuff. 

- Oh, when you refactor the legacy code with Java 8 stuff, make sure you write unit tests with them. Legacy code will mostly have no tests. 

### Multiple Stream Calls

- It’s not efficient when you do multiple stream calls since you have to do eager operations on each of them. It won’t make the entirely parallel. 

- If you don’t chain as much as you can, you have to create some useless local variables and that will make your code dirty. 

- Oh yeah, too much boilerplate!

### Higher-Order Functions

- It’s a very important thing in functional programming, passing around functions(behavior) and returning functions(behavior). These types of functions are called higher-order functions. So does that mean the other functions are lower-order functions?

	- If the method signature has a FunctionalInterface, as in parameter or return type, it’s just a higher-order function!

### Good Use of Lambda Expressions

- Capture values rather than capturing values? Don’t get what this means.

- Whenever using higher-order functions on the Stream interface, you have to make sure not to have side effects.

### Key Points

- Internal iteration is a way of iterating over a collection that delegates more control over the iteration to the collection. 

- A Stream is the internal iteration analogue of an Iterator.

	- Yep, since the Iterator is an external iteration!

- Many common operations on collections can be performed by combining methods on Stream with lambda expressions.

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

