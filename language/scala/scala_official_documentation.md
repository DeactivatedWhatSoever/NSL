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

### Defining a trait

- You need to know what a trait really is. It’s mostly the same with Java 8 interfaces. You can declare fields and abstract/default methods. Remember, since these can’t be instantiated, you can’t give them parameters.

- Define! `trait Iterator[A] { //Block }` -> The thing that you have to focus on is the brackets. The brackets mean of the type, I mean, ‘generic’ type.

### Using traits

- When you use a trait, you have to use the ‘extends’ keyword. That means, you can’t extend an abstract class and a trait right? I think I’ll have to put this in my mind and see whether it’s possible or not. Only traits are aloud to get extended multiply?

- Oh yeah, the main thing to remember is, you use traits with the ‘extends’ keyword, and you use the ‘override’ keyword to implement abstract members. 

### Subtyping

- Well this is just an example of polymorphism. Where you can put in subtypes of the trait inside a array list and that kind of stuff lol.

- Not to worry on this bit, because it’s pretty much obvious and you can see it from everywhere.

## Class Composition with Mixins

### Mixins are traits which are used to compose a class. Okay, I really don’t get the word ‘composite’ or, compose, or whatever. I only get the word compose as making music or that stuff lol.

- Composite -> This says that it’s a fusion of something. So mixins are used for adding up classes? Right? Made up of various parts or elements. A class can be one class, but it can have way more parts! I get what compose, composition, composite means now.

### So a class can only have one super type. But it can have many mixins which are traits. `extends A with B, C, D` etc.

### Dang, there can be so much syntax sugar inside Scala. It will take a long road to get use to all of this. This is why I didn’t like Ruby lol. I liked Python because it didn’t have ‘too’ much syntax sugar. 

### So traits can extend abstract classes, and all of that stuff. A class can extend from an abstract class, another class, and with the ‘with’ keyword, you can add more traits. 

- If it’s like this, I bet the diamond problem will occur if you just put in this and that. Like everyone said, the evil ‘extends’ keyword that doesn’t try to keep the Liskov’s substitution principle will fall.

## Higher-order Functions

### So exactly, what is a higher order function? Well In my memory, I know them as, functions that can return, pass as a parameter. Functions that return, and can get injected by a function. Those are higher-order functions.

- For this to happen, the language must make functions as first-class values. Which means, values like Int, Long, all that stuff, they are on the same level, the same hierarchy. Then they’ll be able to be passed and returned around I guess.

### I saw something cool in Scala. The `_` dude. The underline can sure do a lot of things. It can represent a variable name inside a function. It can just make the function arguments disappear! 

- For an example, lets get it! // x => x * 2, the type can get inferred because of the salaries list.  
  val newSalaries = salaries.map(x => x * 2) // Well, since we only expect only one variable, then we can just use the `_` operator to just do all of the fuss for us.  
  val newSalaries = salaries.map(_ * 2)

### Coercing methods into functions

- Coercing == Forcing methods into functions. Hmm ... How to make methods to functions? Lets find out.

- This means, methods can be passed as parameters of just functions. I bet they can get returned eh? Well anyways, you just pass in a method as a higher-order function’s parameter! And you’re done.

### Functions that accept functions

- Well, you can destroy redundant behavior since functions can accept functions. We’ve seen a lot of examples, all you need to do is do it yourself :)

### Functions that return functions

- I’ll give you an example of how to return a function in Scala! 

	- `def urlBuilder(ssl: Boolean, doman: String): (String, String) => String = { // Block, last line: (endpoint: String, query: String) => // blah blah blah }

- It’s cool that you can just return lambdas like this. I love it that I’m understanding functional programming.

## Nested Methods

### You can nest methods! Which means you can define functions inside a function. Well, to be more precise, methods in methods. 

### For an example `def factorial(x: Int): Int = { def fact(x: Int): Int = { } }

### Nothing really special, just the same old thang lol.

## Multiple Parameter Lists (Currying)

### Currying, I didn’t really get it but, I heard that this is splitting up arguments into one. 

- [In mathematics and computer science, currying is the technique of translating the evaluation of a function that takes multiple arguments (or a tuple of arguments) into evaluating a sequence of functions, each with a single argument. Currying is related to, but not the same as, partial application.](https://en.wikipedia.org/wiki/Currying)

### So, Scala lets you do currying by giving the ability to make multiple parameter lists.

- I think a parameter list is a tuple.

### Okay, I totally don’t get a lot of the material over here. Which is pretty sad man! Well anyways, I don’t really get the foldRight or foldLeft thing. And Scala has a special operator `:/` which is foldLeft, and `:\` which is foldRight. Dang, this sure ain’t easy to understand.

- [You can get some information over here](https://www.scala-lang.org/api/2.12.1/scala/collection/TraversableOnce.html)

### You can define implicit parameters with the `implicit` keyword. For example, `def execute(arg: Int)(implicit ec: ExecutionContext)`

## Case Classes

### Defining a case class

- Defining a case class is easy. `case class Book` and you’re done. Case classes are best for pattern matching by ‘type’. You’ll see this on the Pattern Matching section.

- Case classes don’t need a new keyword. When you instantiate it, a method called `apply` gets called and will do the object construction for you.

- Don’t forget, the constructor variables you put in will be a public value.

- Oh, you can use var for a constructor variable, but this is discouraged since we want ‘immutable’ cases.

### Comparison

- Case classes don’t compare them by reference. They are compared by value. So if all the values of the constructors variables are the same, then it’s true!

### Copying

- There’s a shallow copy method called `copy`. If you want to copy the values just use it!

## Pattern Matching

### Pattern matching is a mechanism for checking a value against a pattern.

- Yep, a powerful `switch` statement!

### Syntax

- {variable} match {     case {variableCase} => “return”     case _ => “other cases” }  It’s pretty much it. And also, it always returns the cases. Remember that the `_` is like a default in a switch case and an else in an if/else clause.

### Matching on case classes

- It’s cool that you can use ‘types’ with cases! In java it wouldn’t work with the old switch!

- This is where ‘case classes’ come in. You make an abstract class and extend all of them with the case classes. Then you’ll be able to match the pattern by type. Which is so cool! I think I’ll get to love this, but I’ll have to find some great use cases for it lol.

### Pattern guards

- If the variable that you want to match has a case, you can also give an if clause! Now this is pretty pretty cool. So you can put in extra guarding and stuff.

### Matching on type only

- You can match with type only.  For example, `device match { case p: Phone => p.screenOff }` -> etc.

### Sealed classes

- Sealed classes. All subtypes must be declared in the same file. This assures that all subtypes are Known. 

- Hmm, I think this will come useful when there’s classes that should be only in this local context.

### Notes

- It’s cool that there’s an opposite to the apply method. The apply method sets the arguments passed, but the unapply method passes back the arguments. So it’s great for pattern matching.

- [Read about Extractor Objects](https://docs.scala-lang.org/tour/extractor-objects.html)

## Singleton Objects

### Defining a singleton object

- These objects are really cool. They’re singleton! The objects guarantee to be exactly one. I wonder whether if a lot of threads create the singleton object at once ... Anyways, the object is instantiated lazily.

- `object logger` -> That’s all

### Companion objects

- So a singleton class, a normal class, and a case class can have same names. I’m not sure whether when or where to use these kind of objects. These so called companion objects.

- Oh yes, if you want to use this sort of class, you must define the classes in the same file. Which would have the same name for each and all classes.

### Notes for Java programmers

- `static` members in Java are modeled as ordinary members of a companion object in Scala.

## Regular Expression Patterns

### Well Scala has a built in thing for regex! Which is pretty cool for me because I didn’t really get to see this stuff in Java. Well I did see it in Ruby though! 

### Anyways, to make a regex, it’s really easy and intuitive.  `val numberPattern: Regex = “[0-9]”.r` -> Remember, the `.r` is what that defines the regex!

## Extractor Objects

### Mostly objects just have an `apply` method. This method is for object creation. On the other hand, there’s some objects that have a method called `unapply`. These are called `Extractor Objects`. The `unapply` method gives back the arguments.

- These types of objects are mostly used in pattern matching and partial functions.

- Haven’t heard of partial functions yet, but I hope this tutorial gives the ideas!

### `val name = CustomerID.unapply(customer2ID).get` -> This is a way to assign a value. But why ... Why this way?

### By the way, when you want to return values inside the `unapply` method, use either a boolean value when checking, but if you want to return an object of some sort, then give it as an optional!

## For Comprehensions

### For comprehensions eh ... Which means, that I have to ‘know’ some stuff to actually understand how a for loop works in Scala. Well let’s get it!

### So for loops in Scala actually does the iteration and you can just add a filter to it. Which is pretty cool since you don’t need to make an if statement and add a continue or what not. 

### For loop example: `val twentySomethings = for (user <- userBase if (user.age >=20 && user.age < 30))  
    yield user.name  // i.e. add this to a list` As you can see, it yields the user.name. This means a for loop is a generator of some sort. Pretty cool. 

- The thing is, you don’t know what generators are in nature. What they are used for. Well I think that it’s used for putting in items one by one. Well, isn’t that actually the iterator method? Okay dude, I get your point. I don’t know germinators, so I’ll go study them.

## Generic Classes

### Hmm. I wish to know the actual basics of why to use a generic class. Well it was really got for collections. I can know since I’ve used them all in Java. But still, what other usages? What is it really good for?

### Defining a generic class

- Well there’s nothing to it. Just add a bracket with a letter next to the class definition like this: `class Robin[A] {}`

- There’s nothing much to the definition except for the letter A. It’s a common convention to use A for one generic feature. For a map, or two generic values, it would be K(Key) and V(Value). If there’s more, I don’t know, I think we’ll be using it the wrong way then ... 

### Usage

- Just instantiate the variable with the bracket of the type you want. `Stack[Int]` just like that. 

- Also, the type in the bracket also supports polymorphism. Which means, if class B and C inherit for A, the stack can have type B and C values. 

## Variances

### OOOOOOkay, I really don’t get any of this at the moment. Well it’s pretty much something to do with generics. Let’s dig into it.

### Variance = Correlation of sub typing relationships of complex types & sub typing relationships of their component types

- Okay, I still don’t get it.

- class Foo[+A] // A covariant class  
  class Bar[-A] // A contravariant class  
  class Baz[A]  // An invariant class

- I think this is actually something that helps people to not use some generics and stuff. So complex stuff doesn’t get more complex or whatever.

### Covariance

- So something that’s covariant, is something that can be just used as polymorphism in generics. Nothing much. But isn’t this the same as invariant?

- I get it. So covariance means that class `A` and class `B`, if they’re subtypes, they can be interchangeable. This is absolutely the Liskov’s substitution principle. So the `+A` annotation will just let all classes that have a relationship be able to be used as a generic parameter.

### Contravariance

- It’s the opposite of Covariance. As you can see, if a class Animal and Cat exist, the Animal class can print out an animal and a cat. But the Cat can’t print out an animal. So methods that are overridden, will need the `-A` annotation for generics. Or that maybe break the Liskov?

### Invariance

- So this means, everything is treated differently. Container[Cat] and Container[Animal] are not the same thing!

### Other Examples

- I think you should get another example by yourself in the future. Actually use generics and use the variance feature of Scala.

### Comparison With Other Languages

- In Java, it’s called use-site variance? Gotta get to know about this!

- [https://medium.com/@sinisalouc/variance-in-java-and-scala-63af925d21dc](https://medium.com/@sinisalouc/variance-in-java-and-scala-63af925d21dc)  And I get it! The `>` operator up on the generics! I get it.

## Upper Type Bounds

### What the hell is a type bound? Let’s find out what a bound is first. Something like a type group eh? Types that are bound to each other. By getting extended, or implemented, well anyways, Scala can extend abstract, regular, traits. Multi inheritance only goes with traits with the `with` keyword. 

### So upper type bounds. Let’s see what they really are. Also, I think it has a lot in common with variances.   Upper Type Bound: `T<: A`. What does that mean ... 

- Type variable `T` refers to a subtype of type `A`.

- Ahh I get it. The `T <: A` is the same thing in Java 8 generics, `T < A`. It’s just that Scala has the colon in there. 

- Like the words, type `T` refers to a subtype of type `A`. So only subtypes of `T` can come into the parameter. 

## Lower Type Bounds

### Opposite of upper type bounds, obviously. The syntax is: `B >: A`. So this dude declares a super type of that type. `B` must be a more super type than `A`.

### Oh yeah, `Nil` comes out of this document. It says it’s actually an empty list. Don’t really get it ... Why did they name this Nil? Isn’t this actually the same thing as null? 

## Inner Classes

### The documentation says it’s possible for Scala, but it’s the same as Java. Java can also have inner classes. Don’t know why they said it like that but, come to think of it, the context is actually different. In all the languages, Scala, does this and that. Yep, the context was actually global. Sorry for the complaint!

### It’s just the same. Just declare a class in a class, and you’re in. You can also use that class as a member variable right away. 

### A graph data structure is a very good example for implementing inner classes. That class would be a `Node` in a `Graph` class.

- The cool thing is, when you declare multiple `Graph`s, they are the same. But, the `Node` class inside the `Graph` classes are not the same! I repeat! They are not the same! If you try to join or connect other inner classes, the compiler will get angry!

- But, there’s actually a way to make these `Node` classes get connected to each other. We need to imperatively say that the `Node` class in `Graph` are all the same! Like this: `[Graph#Node]` when you actually make something inside the inner class. Remember, the inner class needs to know its parent. Or else it will just think as if it’s the only type out there.

### Okay, there’s some syntax looking like `::`. I don’t know what this is, and I should go find out about it. There’s so much stuff over here! You can declare so much of these overall operators! This is why people said Scala should only be used by one person lol.

## Abstract Types

### Dunno what the differences between generics are with these. Well I think it also helps things for reflection. Creating objects, actual class byte code in runtime.

### So you can declare `abstract types` in your class or trait. You can declare them like: `type T` and use that to make real generic stuff. Damn, how can you make this much generic stuff? Ahh ... I guess it’s the rule of maths. Only this and that can come in, and those types, well, those types can be anything. 

- Most of the stuff like Int, Double, and all that stuff come from maths. For functional programming, I must get to know how maths work with this. How they want to actually show functional programming in maths. 

- This sure ain’t going to be an easy journey, but let’s try and get it!

## Compound Types

### I think I should go and learn what the actual word `compound` means first.

### `A with B with C ... { refinement }` -> That’s the general form of compound types. The reason it’s like that is, when the parameter needs to have various methods and those methods are in different types, you can let the parameter be compound to other types. 

- This is actually a really cool feature in a language. I’ve never seen something like this. But the thing is, when I see these kinds of things, doesn’t the odds of making a program more dependent and complicated? It looks as if code can get harder. I know there would be a lot of things that this kind of feature will solve but, I’m not really sure. People sure will make programs more messy if these kinds of things get out more and more in the world.

- For another opinion, we’ll have to learn how to use these properly, and get some use cases in our heads.

## Self-type

### ``` trait Tweeter {  
    this: User =>  // reassign this  
    def tweet(tweetText: String) = println(s"$username: $tweetText")  
  } ```

### Okay, I totally don’t get this. When the hell should we need this stuff? Man! Scala! You’d better show some respect to the new people! lol. I think I should get a course on this or actually find a way to use this and make a great example of it. 

- Maybe you could make a Scala tutorial with more use cases of the features that you didn’t really know. It’s not just knowing the syntax that make you fluent in Scala. Knowing the syntax is a must, and you have to speak fluently. So that means, you need to know a lot of use cases and have used all the syntax in many cases and refactored code in a Scala way!

- Okay, I got this, but first, let’s try and get to understand the `Self-tye` in a shallow manner.

### Ahh, so self types are for making a trait to mix in another trait without using an import statement. So, in one sentence, implicitly mix in a trait in force.

- I totally got this shallowly! 

### `someIdentifier: SomeOtherTrait =>` -> General form. So it doesn’t have to be `this`? It actually can be something else eh?

## Implicit Parameters

### Implicit eh, something that really needs to be, implicit. Something that actually comes out. I mean, it’s there, really. That’s what implicit, wait. The opposite is explicit! If it’s explicit, then it’s just there, showing us everything. But if it’s implicit, then it’s not just right there, it’s something that we have to think to actually get it out.

### So, type inference is it? I think that’s the thing that it wants to talk about. If we have implicit implementations of a method, then that method will see whether it can use that type to actually execute the method. 

- In a typed language, implicit isn’t easy to actually implement. Even in Java 8, they tried to make the lambda parameter implicit! And that’s all. Everything must be explicitly noted by its types. Now I get it. For implicit stuff, Scala must sometimes need some values to have the types assigned first. That’s why the method that really needs implicit stuff, can actually reference whether it can use that implicit value or whatever.

### Scala will first look for implicit definitions and implicit parameters that can be accessed directly (without a prefix) at the point the method with the implicit parameter block is called.

- Yep, the first thing when you want to use implicit parameters, you need to define implicit values to actually use them as parameters. Scala will get them for you.

## Implicit Conversions

### An implicit conversion ... So A to B right? 

### Okay, I totally don’t get how this works. So implicitly say that `A` will get converted to `B`? Well I think that’s it but, I don’t really get how this works and how this is used. I’m really confused. I think I should go on and research about this when I’m actually taking the course. I can’t just get stuck on this. I’m just here to see what Scala has. Okay?

## Polymorphic Methods

### Oh my god, you can also make parameter generics? This language is like going fancy! It can do anything, which means more things to know and more ways to express something. The more the ways to express something, the more ... complicated stuff comes out! Lol 

### Well anyways, you can define a function like this: `def listOfDuplicates[A](x: A, length: Int): List[A] = { //block }` Yes, you just put in a type like that. Of course the type can be inferred like an int or string, but for complex objects, it may need specification when invoking the method. listOfDuplicates[Blah](blah, 1) -> etc. 

## Type Inference

### Yep, the Scala compiler can actually infer the type! And the best part, which means, you don’t need to declare the type explicitly!

### Omitting the type

- I think it can actually just infer strings, ints, and all that basic level type stuff. But not the user defined object stuff. So, you can also just go away with return types too. Well of course the compiler will know what kind of parameter will come in to the function. Duh. 

- `def fac(n: Int) = if (n == 0) 1 else n * fac(n - 1)` Yup, Scala can’t infer recursive function’s return types!

### Parameters

- Well obviously, the compiler can’t infer parameter types. Because they have no hints! But, when they can, is when they are using anonymous functions. Like map, or something like that, they can infer the type since they have the hint from the parent!

### When not to rely on type inference

- Open API’s, where people really need to know what the types are. So, I think it won’t be good to use type inference at all! Unless you’re working by yourself. God dang you Scala! Then this will make everything hard for everyone! 

- Okay, as long as your team mates are really fluent at Scala, you can just use type inference. But if they’re not, then you shouldn’t. Okay?

### Oh yeah, you should always have this question in mind. Type inference vs dynamic typing!

## Operators

## By-name Parameters

## Annotations

## Default Parameter Values

## Named Arguments

## Packages and Imports

