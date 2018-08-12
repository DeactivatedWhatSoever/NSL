# Scala Official Documentation


## Introduction

### Welcome to the tour

- Well you should just go and read the Scala Programming Language book that everyone has lol. But I’m not really sure whether to put in a lot of time into this language. But yeah, I think you’ll be processing a lot of data. Look at all those machines .... 

- And also, when you’re fiddling with financial data, I bet you’ll have to process a lot. Even when you do sentinel analysis, you’ll have to crawl a hell lot of text.

### What is Scala?

- Scalable Language. That’s what Scala is. Does it mean in concurrency? Throughput? Or low memory consumption plus efficient memory usage? Type-safe, multi-paradigm. OOP + FP.

### Scala is object-oriented

- Every value is an object. Classes and traits. Traits came out over here. Which means there’s no interfaces. Well the internet says it’s pretty much the same with Java 8 interfaces. They say something about mixii-based composition and that’ll make a clean replacement for multiple inheritance.

- Okay, while you’re actually learning OOP over here, well, a refresher, you should go and see what Cypher told you about the ‘extends’ keyword. How it actually destroyed a lot of people’s code. 

### Scala is functional

- Every function is a value. Well, this means functions are treated as an object. Because everything value is an object, then every function is a value, every function is an object!

- There’s a lot of FP stuff, such as higher-order functions, nested functions (decorators), currying, case classes, pattern matching, singleton ‘objects’(Only functions). 

### Scala is statically typed

- It’s pretty cool that Scala tried to make pure OOP by not using the primitive types in Java. So in Scala, the primitive types are boxed types and when it compiles, the compiler will tell whether the type will be boxed or unboxed in java byte code.

- Still, it supports generic classes, variance annotations, upper and lower type bounds, inner classes and abstract types as object members, compound types, explicitly typed self references, implicit parameters and conversions, polymorphic methods, type inference

	- Yeah, you should go find about dynamic typing vs type inference.

	- Type inference: the user doesn’t need to annotate code with TMI. Which means, you don’t need to declare the type explicitly.

### Scala is extensible

- Can’t believe that this language is extensible like just creating extensions in a form of libraries. That’ll be really cool if you actually know all the internal stuff. Like, if you want something from Python, you could just implement it in Scala. Well I bet other people would have done this. But not a lot.

- Implicit classes, String interpolation are pretty much good examples to look at.

### Scala interoperates

- Scala can compile into Java. It has the same compilation model. All the other stuff like Java specific language functions will be compiled as close as possible. This means, that Scala can use Java libraries. This is what it means by ‘interoperates’.

### Enjoy the tour!

- Let’s get it!

## Basics

### Trying Scala in the Browser

- [You can try Scala over here](https://scalafiddle.io/)

### Expressions

- Well it’s mostly the same for all other languages. Println -> Print with a new line. Just the same.

- Values are expressed with the ‘val’ keyword. It can’t be changed, and if a value is assigned to a new value, Scala won’t compile. Something like the final keyword except very strict I guess. But anyways, the important thing about this is, immutable can be achieved really easily. Since it’s a FP language, most of the time we’ll try to make a value instead of a variable. 

	- Value’s or variables can be inferred. Which means type inference, the compiler actually guesses the value’s type by itself. But you can explicitly state the type. For example, val x: Int = 1 + 1 -> a colon with the type specified, that’s explicit typing I guess?

- Variables. An example, var x = 1 + 1. You can reassign these dudes.

	- Also explicit typing is the same as values.

### Blocks

- Something that I couldn’t really get. Well, from Ruby lol. I couldn’t really understand the concept of blocks. So it’s actually a lambda expression I guess? Not really sure about this part, but lets get this in my head.

- {} -> This is a block, but the thing is, the last line seems to get evaluated and get ‘returned’ in Scala. So in everything, like functions, you don’t really write down what to return explicitly. The compiler just thinks that you’ll return the thing that’s evaluated at the end.

- So, if you want to combine a lot of expressions, you use a block and group them inside {}. 

### Functions

- Functions are expressions that take parameters!

- So, anonymous functions, which obviously are lambdas, can be made. So it’s different with blocks. If you can just make a function with no arguments, why bother to make a block? Don’t really get it but I think they’ll be in use some day.

- Well anyways, lets think of another thing about functions. So, how can you use lambdas in Scala? Just (x: Int) => x + 1 won’t do the whole job right? How to actually use them? Ahh ... I see, so when you want to pass in behavior, you just use lambdas. But if you want to reuse that lambda, then you have to name it. Which would become a function. I guess this is getting natural.

	- If you sort of wrap the lambda, you can call it! With parenthesis.

### Methods

- I didn’t really understood the difference between functions and methods. But really, you can just think that methods are just inside a class. That’s all. But what about Java? You have to put a function inside a class. Doesn’t that mean a function is a method in Java?

- I guess that methods are different from functions. Functions are actually declared inside all the methods and classes. So, behavior. That’s what defines a function. It takes arguments and gives a result or doesn’t do anything. But methods, you have to declare it with the def keyword, give arguments, a return type, and a body. That’s a method in this world.

	- Well functions actually don’t declare a return type. Which is pretty funny lol. I wonder if you can though.

- I get it. So in Scala, you have to give an assignment to methods, functions, values, variables, all that stuff. If any of those assignments need more than one line of expressions, then you can assign them as a block. And the block will return the last expression.

	- Yep, Scala does have a ‘return’ keyword, but it’s rarely used.

### Classes

- Well, it’s obvious. Just a class keyword and kabaam! You got a class. But what’s different in Scala is, that you can give constructor parameters with a parenthesis on the class name. class Test(param1, param2) {} -> Just like this. Which is pretty much very convenient. But I bet that it can give default values. 

	- Oh, and ‘Unit’ comes out over here. Unit is the same thing as void in Java and C. Since Scala expressions must have a value, Unit came out for representing ‘None, null, nil’ or what so ever. So returning nothing as a value. 

	- It’s actually a singleton object!

- There’ll be extra explanation later. So don’t worry!

### Case Classes

- Okay, case classes are somewhat new in Scala. And I don’t really know the use cases and why they put it in. I’m not really sure but they say that I’m gonna love it?

- Well case classes don’t need the ‘new’ keyword to instantiate it. It’s actually an immutable value. So it means it doesn’t make ‘new’ objects, and there’s only one of those? If they have different values, the reference will be different I guess. But the important thing is, when you compare them, they compare the value, not the reference hash code.

### Objects

- Scala actually supports singleton objects. This design pattern was made to be the most common pattern. It also gave us some problems about concurrency. When two threads on the same time tries to make an object. Which is pretty cool. 

- Well anyways, these are singletons of their own classes. It gets defined by the ‘object’ keyword. Wonder how it works and stuff. 

### Traits

- Traits are types containing certain fields and methods. They can have default methods too!

- You can extend them with the ‘extends’ keyword.

- Traits can extend multiple traits. Multiple inheritance! Duh!

### Main Method

- object Main {  
    def main(args: Array[String]): Unit =  
      println("Hello, Scala developer!")  
  }

- Yep, since the JVM needs an entry point, it needs a main function that takes in an array of strings. And yes, it’s a convention over here right? But does the object name should be Main? Why not other dudes? 

	- Yeah, you can name the class whatever you want. Except, the program must have once main method just the same as a Java program.

## Unified Types

### [The overall type hierarchy!](https://docs.scala-lang.org/resources/images/tour/unified-types-diagram.svg)

- As you can see, the most top level ‘thing’ is Any. AnyVal & AnyRef are the next. I wonder if there’s only ‘List’ for the Object stuff. So the value stuff is made from Scala. 

- There’s a Null in the AnyRef and Nothing is on the most bottom.

	- Unit? I saw Nil and stuff but I wonder where those come from lol

### Scala Type Hierarchy

- So, well, Scala’s type system is pretty much the same with Kotlin. Didn’t know that they had a type like that. Damn lol. 

- Any, AnyRef, AnyVal. The stuff that user defines will mostly be under AnyRef. Since we define objects, classes, traits, etc.

### Type Casting

- Casting types is unidirectional. You can’t make a Float into a Long. Well, I guess there will be some other method that you can make it into. 

- Be careful when you cast the values!

### Nothing and Null

- Nothing is a subtype of ‘all’ types. This lets you signal a non-termination of a program. Like an infinite loop, program exit, throwing an exception, etc. 

- Null, should not be used at all in Scala. It’s just pretty much a way to cooperate with other JVM languages. We’ll get a way to express null values later on.

## Classes

### Defining a class

- Dang, didn’t know classes can contain methods, values, variables, types, objects, traits, and classes! It can even have traits inside of them! I wonder why they gave that much freedom. Is it really necessary? Don’t really know.

- Dang ... So the minimum of a class can be just `class User` and then you can just initiate it? Well if you don’t put any constructors in it, you can just make a new instance without putting the parenthesis.

### Constructors

- Woah, I knew Scala would have default values! I wonder that’s the same with methods and functions. Default values! Anyways, let’s check it out.

- This is how you define constructors! `class Point(var x: Int = 0, var y: Int = 0) { // Block! }

- Also, you can name the parameter! Like (x=2, y=2)! Hmm same thing with Python and stuff. This is way better than Java making a ton load of constructor methods lol.

- Oh yeah, the documentation says it’s better to use named parameters instead of injecting the parameter values in ‘order’. Because of clarity. The people who use the method can just know what the parameter does and what it actually needs. I think that’s pretty much the right way to think about it. I get it.

### Private Members and Getter/Setter Syntax

- Okay, this part is pretty hard because I’ve never seen any language make getter/setter syntax for them! Well, I should make a good example over here.

- Okay, first things first. People normally won’t define private variables or values inside the class. They give it as constructor values. Okay, we two ways of putting in values with the constructor.

	- `class Point(val/var x: Int, val/var y: Int) { // Block }` -> This way, the parameters are public.

	- `class Point(x: Int, y: Int) { // Block }` -> This way, the parameters are private. And they’re not variables. They’re ‘values’. You have to know the differences and stuff.

	- The problem is, how do you put in protected variables and stuff? We’ll get to that in the future I hope.

- Okay, finally, for the getter/setter syntax.  // Remember, the _x is the private variable! And of course, only variables can have setters because they are immutable. `def x = _x` -> Getter syntax `def x_= (newValue: Int): Unit = { // Block }` -> Setter syntax

## Traits

## Class Composition with Mixins

## Higher-order Functions

## Nested Methods

## Multiple Parameter Lists (Currying)

## Case Classes

## Pattern Matching

## Singleton Objects

## Regular Expression Patterns

## Extractor Objects

## For Comprehensions

## Generic Classes

## Variances

## Upper Type Bounds

## Lower Type Bounds

## Inner Classes

## Compound Types

## Self-type

## Implicit Parameters

## Implicit Conversions

## Polymorphic Methods

## Type Inference

## Operators

## By-name Parameters

## Annotations

## Default Parameter Values

## Named Arguments

## Packages and Imports

