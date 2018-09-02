# Functional Programming Principles in Scala
The reason I’m taking this course is because of the knowledge that I need to program with a functional mindset. I need to know how to calculate and compute stuff in lambda, passing and returning behavior around, all that stuff. Trying to make everything immutable etc. 
 The next course to take is `Functional Program Design in Scala`. It’ll help me get to know how to design functional programs. How to build from top and how to actually design code that is functional. I should go and learn how to write tests while doing this. If I don’t I think I’ll keep on not doing that stuff. 

## Week 1
In this week, I think it’s just the basics. Like just getting all the development environment setup and having a go with the Coursera LMS and stuff. I think it’ll be easy, but the second section of week 1 isn’t going to be easy since there’s a lot of lectures and stuff are out there. The `Getting Started` part also has a lot of stuff to do. Especially the reading materials. There’s tons of them! Better get started with this!

### Getting Started
Just getting started by installing `sbt`, which is the Scala build tool. I’ve used it, but it’s extremely slow compared to Maven and Gradle. Well, Gradle  isn’t that fast either but still, it’s slower than Gradle! After that, I need to have a go by importing a Scala project in IntelliJ and write some code and some tests! Great. Well I want to do this, but I have had too much power on finishing the Scala Official Documentation. I’ll start soon, but I have to recharge by studying some things that I actually want. See yeh later. I’ll BRB(Actually I’m going to study some network, which is the real dope thing that tinkers by curiosity, so yeah, I need to get some rest dude! By studying the things that I want!)!

#### Cheat sheet
[progfun-wiki/CheatSheet.md at gh-pages · lampepfl/progfun-wiki · GitHub](https://github.com/lampepfl/progfun-wiki/blob/gh-pages/CheatSheet.md)
-> Yep, just a cheat sheet that will help me get along with Scala!

Why doesn’t Scala have static members?
-> Gotta go find out! Maybe because of singleton Object’s in Scala?

Packages in Scala
* Yeah, I figured. Java can only import classes, but Scala can important `anything`
* Which means, it’s like Python. But how should I utilize this feature in a good way? How to make code readable? I’m not sure. There’s too much freedom.

Entry point of Scala
* Do I have to write this down? Well I don’t think I need to write the code down. 
* The entry point of Scala must be an object, and it must extends the `App` class or define a `main` function with `args: Array[String]` as an argument. 

How does Scala guarantee an object to be single?
-> Well couldn’t find a good explanation so I’ll leave this for another day of research.

#### Source Files, Class files and the JVM
“Typically Scala programmers create one source file for each class, or one source file for a class hierarchy: In fact, Scala allows multiple classes and objects to be defined in the same source file.”
-> Thought about this statement. Yes, Java can only have one parent class in one file. But Scala can have a lot. Like a whole program in one file. But is that a good thing? I don’t know. You can actually put in a whole hierarchy of a class inside one file. Well I pretty much agree on this one. You don’t need to create a whole bunch of files to make a hierarchy. And when you make a hierarchy, you know that class should be used like that. Not just extends anything. 

An important thing to know here is, how Scala works with the JVM. The Scala compiler will make the *.scala files into *.class files. The class files will be stored into a directory, and that directory is called a `classpath`. Where all the classes are stored in it’s packaged form. The JVM will execute the class files stored in the `classpath`. 

#### Scala Styles
[Scalastyle - Scala style checker](http://www.scalastyle.org/)
-> I think I should go and say two things. Try to make GItHub master branch really clean. Also, Scala style! 

### Functions & Evaluation
I think it’ll be best for me to know what functions exactly are, what they’re capable of, how to make them pure, and what evaluation is. Lazy evaluation and eager evaluation, how to actually know when to use what.

#### Programming Paradigms
The thing that I got to know about this part is, OOP vs FP. Imperative or Expressive? I don’t know why OOP is imperative though, it feels as if the `if` and `for` `statements` are something to be known properly. Since they are `statements`, it’s something that are declared explicitly. Manipulating data mostly means mutating data and not creating immutable data. Mutated data are mostly made with statements. Statements don’t return anything, which means they are not functions. Statements do a certain thing and they don’t return anything. It’s something explicitly commanded. What does it mean to have an assignment in maths? Assignments vs not declaring things. Only use arguments that are passed to the function? What else? What is the opposite of assignment? Just not assigning and doing something? Manipulating stuff without assigning means, only one scope? There sure are a lot of questions to ask. 

* How can we make FP hardware friendly?
	* Since the CPU and stuff will actually do everything imperative. It’s just a style of coding? How would it be manipulated in C? 
	* Use memory and release ASAP vs mutate data and keep in for a while.
* How does FP enhance concurrency?
	* Is it just because of how it handles parallelism?

FP, focusing on the function. The actual function of the program is actually writing down the function? 
`Structure and Interporation of Computer Programs` book. Read it! It’s a great one about FP.

Immutability: creating new objects all the time. But it will give no side effects from mutation and state. Always a new object, stateless. 
* Hard to code
	* Why is it hard to code? Is it because of the thought process? Or is it actually hard to actually create new objects all the time.
* Too much memory consumption

#### Elements of Programming
* Primitives
* Operations
* Abstraction

What does it mean by “yielding the results”?
-> Actually saving the states for a function. If you yield a variable, it’ll just save the state of that variable and when you call it again, it’ll do the evaluation for the next turn. To do parallel for comprehensions, this will absolutely be needed.

Evaluation -> Substitution Model: Expressions to a value.
Everything doesn’t get reduced to a value. Returning functions, conditions, etc. 

* Call by value
	* Evaluate first
* Call by name
	* Evaluate last

Reduce, but how many steps of evaluation? Termination I guess.

Evaluation strategies & Termination

For loops are imperative, for evaluation and recursive is functional. 

Recursive functions need explicit return types. If it doesn’t know, we’ll never know what to return inside a function. 

Nested functions mean private methods if you see it in an OOP view. With lexical scope, we can make nested functions reuse the parent parameters! It’ll refactor the functions real nicely. 

What is tail recursion? There’s a special annotation in Scala.
-> [Tail-Recursive Algorithms in Scala | alvinalexander.com](https://alvinalexander.com/scala/fp-book/tail-recursive-algorithms)

## Week 2

## Week 3

## Week 4

## Week 5

## Week 6

#mooc