# Functional Programming, Simplified
The reason I'm reading this book is, I wanted to learn functional programming in an easy way. It's best to read it in an easy way to actually grasp the material faster. Easier the better right? Well anyways, I'm mostly going to be programming in a functional way from now one since it's pretty much the future. I want to use up the cores of my machine, and also want to speed things up, plus the modularity and code composition. Let's get this on with. Also, I want to read `Structure and Interpretation of Computer Programs`.

## Copyright
Dude, I bought this book. It's okay. And I'm just writing down my study notes, so there won't be any problems I hope. 

## Introduction(or, Why I Wrote This Book)
Let's find out how the author thinks and what his goal is. 

### My programming background
1. How can I write code faster?
2. How can I write maintainable code?

Both of those things are really important to me since I'm working alone. I have to be better that at least 5 programmers, and must be able to write and also see, maintainable code. If the code is maintainable, I bet then I'll be able to write code faster in the future. Also, with TDD, I'll be able to get more time coding instead of testing and fixing bugs. 

### Trying to learn FP with Scala
In the days when the author started, it absolutely wasn't easy for him to study Functional Programming in Scala. The articles were blah, they were very specific on one topic, and people loved talking about `functor`s and `monad`. The thing that I got over here is, since it's not really shown to the public, people who already have the grip of everything are really good at it. So they don't really need to talk about the basic stuff. 
 I think this is why it's harder to get into the verse of where it's not that popular. There's not much resources to learn, even I'm hoping in this book a lot to actually get to the level to understand stuff the people are talking in their blogs.
 But what if I'm studying something else. Something harder. Not functional programming. I'd have to go for it by myself. I totally need to find a way for this. 
* When the field is not popular, how are you going to get a grip on the material. 
* Code everything, PoC, implementation, you have to do it on your own. 

### Learning Haskell to learn FP
Yeah. You can learn functional programming with Haskell since it's a `pure` FP language. When it gets hard, you still have to turn in and use FP principles. So you'll actually be good with Haskell. But the problem is, you'll never get to use it since nobody uses it. 

### The purpose of this book
Cool. I can learn Haskell way easier with this book even if I get a chance to learn Haskell! I'm pretty sure that I won't be getting a go with Haskell since I don't really think that's the future. I might go with Elm, but I'm going to stick with programming in FP with JavaScript. Or TypeScript. 

## Who This Book is For
Yep, parallel/concurrent application development! Totally want to do that. 

### 1) Developers who want a simple introduction to FP
OOP Java -> FP Scala

### 2) Those interested in writing "better" code
Hell yeah I'm into writing better code. Because of the code that I'm going to write now are going to be exceptional. They need to be exceptional because mostly it's on for refining data, running algorithms and etc. 
 Writing better(safe, testable, less error-prone) code faster without reducing quality and maintainability. 
 Pure functions only rely on their inputs. Doesn't use stuff from up top or like that. Even if it uses stuff from up top, they're immutable. 

### 3) Parallel / concurrent developers
Most multi-threading problems are solved because of immutable data. [The Free Lunch Is Over: A Fundamental Turn Toward Concurrency in Software](http://www.gotw.ca/publications/concurrency-ddj.htm) I think I should read this article really carefully. Also, we need to write concurrent code by using some messaging/actors frameworks and try to find the best ways to write concurrent code. 

### 4) Big data app developers
No state management, just algebra like functions that give good refined data.

### 5) Upperclass college students
I think these dudes would mostly just should get a good spark with C and C++ and then get on with Functional Programming. 

### Cation: Not for FP experts
Yup, this book is for people like me. 

## Goals, Part 1: "Soft" Goals of This Book
Well, the thing that I saw in the figure.
* Semigroup
* Monad
* Currying
* Partial Application
* Applicative
* Functor
* Monoid
* Referential Transparency
* Lambda
* Type Class
* Higher-Order Functions
* Higher-Kinded Types
* First-Class Functions
* Composition
* ADT
* Combinator
* List Comprehension

There's a whole lot going on there. But, I'll get there.

### A word of caution: “The Learning Cliff”
Isn't it the learning curve? But I think it's a cliff since it's really hard dude. "Do the thing to learn the thing”
You either keep learning or fall off the cliff. This means FP is really hard. I have to keep on doing it, keep trying to think in it, and I must make all the things that I do with FP. Try to destroy imperative thinking. 

### Aside: Working hard to learn something new
Even Eienstien had a hard time learning new things. So don't worry man.

### More on Point #7: Thinking in FP
1. Data flows into the application
2. The data is transformed by some functions
3. A final output is produced

Yep, function signatures are really important things. But I don't know `why` at the moment and I would like to know the why by going through the book.

### Summary
Think in FP. That's what you have to get. Oh yeah, you have to have a question everything spirit mate. 

## Goals, Part 2: Concrete Goals
[GitHub - jdegoes/lambdaconf-2014-introgame: Online material for the Introduction to Functional Game Programming with Scala workshop.](https://github.com/jdegoes/lambdaconf-2014-introgame)
-> It's pretty cool how a person made a game with functional programming. Since games are so full of state mutation, I thought it would be so hard to implement games in FP. If I get through this book, this maybe is the thing that I'll get to understand first! 
 Scala FP libraries
* https://github.com/typelevel/cats
* https://github.com/scalaz/scalaz
Also, `LambdaConf` is something that is really inspiring the FP community. 
Oh yeah, I wanna find what `Monad` means. There's so many tutorials out there, and everyone doesn't seem to understand it. It's pretty funny how they say it like that lol.

## Goals, Part 3: A Disclaimer
Disclaimer => Responsibility.

### The "reporter" metaphor
A reporter goes into a foreign world and tries to understand the world by living in it, asking questions and takes notes about it. The notes will be written as clearly as possible and will be interpreted into plain ol' good English and Scala. 

### A reporter is not a salesman
I love this title. A reporter isn't here to sell, which means that it won't just tell us about the good stuff about FP. It'll also tell us about the bad stuff, when it’s not good and what's good for that. I hope this really is here.

### A personal experience
I wish to move to this new land of FP. It is pretty much the future, as long as there's a new theory coming out, or I could make it for parallel and distributed computing, I just hope I'm going the right track. But as I feel it, I think I'm going the write track. Theoretically cool FP is. 

## Question Everything
“Why is this FP approach better than what I do in my OOP code?”
-> I think this is an excellent question. I want to find out what’s better and what’s bad code smell. 

### What is FP?
“FP applications consist of only immutable values and pure functions.”
So it’s actually that the pure functions that give immutability. You also need to make constants all the way or else there will be mutation. -> FP elevator pitch(easy way to tell a concept)

### What questions come to mind?
These are the author’s first questions, so let’s jot them down, and make your own questions.
* How can possibly write an application without reading input or writing output?
* Regarding I/O
	* How do I write database code?
	* How do I write RESTful code?
	* How do I write GUI code?
	* How do I write file manipulation code?
* If all variables are immutable, how do I handle changes in my code?
	* For instance, if I’m writing an order-entry system for a pizza store, what do I do when the customer wants to change their pizza crust or toppings in the middle of entering an order?
* Why is recursion better? Is it really better? Why can’t I just use `var` fields inside my functions, as long as I don’t share those `var`s outside the function scope?
* Is “Functional I/O” really better than “Traditional I/O”
* Are there certain applications where the FP approach is better or worse?
* In what points does it vary with OOP? 
	* Does FP need access modifiers?
	* How does FP make a value that needs custom defined data structures?

### Decide for yourself what’s better
“Is the approach I’m looking at better or worse than other options? If so, why?”
-> This dude sure has a lot of great quotes on thinking about something. But does he really think like that all the time? I’m not sure. But still, don’t suspect, and just go for it.

### The best idea wins
Don’t blindly listen to people. You should put your critical thinking hat on and make your own decisions.

### A quick aside: Imperative programming
So imperative programming is all about thinking how the computer works. The computer will just execute the program line by line by changing its variables with statements. It’s all about state manipulation.

### A critical thinking exercise
Questions for an imperative way and functional(recursive) way of a sum function implementation.
* What’s wrong with the imperative approach? Who cares if I use a var field in a for loop inside a function? How does that affect anything else?
* Will the recursive function blow the stack with large lists?
* Is one approach faster or slower than the other?
* Thinking in the long term, is one approach more maintainable than the other?
* What if I want to write a “parallel” version of a sum algorithm (to take advantage of multiple cores); is one approach better than the other?

### We write what we want, not how to do it
What we want -> just nice execution?
How to do it -> instructions?

“In FP we don’t tell the computer `how` to do things, we just tell it `what` we want.”

I still haven’t understand this but, just giving statements, which is the most lowest command is `how` to do things, and just using functions, which means you just believe the implementations of them is `what` we want. 
 I think it means, give the computer some space! He’ll do the things that he can! All we need to do is just tell `what` to do! Not always bother him and tell him him `how` to do all that stuff.

### What’s next?
A few rules will be announced that’ll help me learn functional programming.

## Rules for Programming in this Book
Just remove the things that you learned from OOP in your head. It will be way easier to shift paradigms. Just actually, don't try to question the opposite, or equivalent structure. Just think of, "is it better than OOP? If it is? Why?"

### The rules
1. There will be no `null` values in this book. We'll intentionally forget that there is even a `null` keyword in Scala.
2. Only `pure functions` will be used in this book. I'll define pure functions more thoroughly soon, but simply stated, (a) a pure function must always return the same output given the same input, and (b) calling the function must not have any side effects, including reading input, writing output, or modifying any sort of hidden state.
3. This book will only use immutable values (`val`) for all fields. There are not `var` fields in pure FP code, so I won't use any variables(`var`) in this book, unless I'm trying to explain a point.
4. Whenever you use an `if`, you must always use an `else`. Functional programming uses only `expressions`, not `statements`.
5. We won't create "classes" that encapsulate data and behavior. Instead we'll create data structures and write pure functions that operate on those data structures. 

### The rules are for your benefit (really)
I get it. there are five rules, and it's just using pure functions, no null, values, if else expressions, and data structures. Repeat!
* Not Null
* Pure functions
* Immutable Values
* If, else expressions
* Data Structures
	* Which means the classes won't have data and behavior. 

Just think about the five rules when you start to write mutable code. 

### Not a rule, but a note: using ???
`def createWorldPeace = ???`
-> The definition of the function is TBD.

### What's next
Let's get a better functional programming description.

## One Rule for Reading this Book
“If you already understand the material in a lesson, move on to the next lesson.”

## What is Functional Programming?
Come to think of it, I really want to know the important stuff about OOP and FP. How they’re both related, differentiated, or whatever. They’re not a replacement for each other. But as the developer I know said, structure the classes, which are blueprints with OO, and write the logic with FP. I’m sure that there’s going to be stuff like OO inside FP at the architecting level. I’m not sure how far this thing will go but, I hope to get an answer. 

### Defining Functional Programming
1. FP is about writing software applications using only pure functions
2. When writing FP code you only use immutable values—val fields in Scala.
-> Functional programming is a way of writing software applications using only pure functions and immutable values.

So pure functions and immutability are the most important things, that makes functional programming, functional programming.

### A working definition of pure function
1. Only computes with its inputs or/and has an internal algorithm
2. No side effects -> No outside world stuff.
	1. How the hell are you supposed to manage state and get some stuff from the outside world in the first place?
3. Consistency.

### Note 1: Higher-Order Functions are a great FP language feature
So higher-order functions are actually just a language feature to aid FP. Being able to treat functions as values, that’s the important thing. But still, it doesn’t mean that you can’t make pure functions. But it sure wouldn’t be easy. 

### Note 2: Recursion is a by-product
It’s not really important, that means. You can do FP without recursion. So you can use for loops still? Well, I think that this doesn’t really mean anything over here. 

### Proof: Wikipedia’s FP definition
It’s pretty cool that mathematical functions are the same as pure functions in programming. 

### Proof: A wonderful quote from Mary Rose Cook
I guess, all that functional programming stuff that are just programming techniques aren’t really functional programming. It’s whether you write code that has no side-effects.

Pure functions & Immutable values.

### That’s great … but why immutable values?
I guess we’ll find out why we need to have immutable values.

#### The best FP code is like algebra
“The best FP code is like algebra, and in algebra you never re-use variables. And not re-using variables has many benefits.”

Aren’t variables out there to get reused? I thought of this for a second and constants are mostly great to be reused. So variables, they’re actually there to get changed. Things that can be changed should be variables. But that means re-use. What are the benefits?

If you want to substitute, you have to make sure that value is immutable. If that value is mutable, that means you can’t have the same results, and that won’t be algebra. Substitution, you have to know that the value will always give you what you expected. Which means immutable values and immutable results, which are generated by pure functions.

#### FP code is easier to reason about
I think I need to learn algebra properly. Since FP is based on maths, I think it would be a good chance for you to learn maths in English. Since you learned all that stuff in Korean, it’s not easy for me to actually get to know what this and that means in English. 
 The reason FP code is easier to reason about is, once you have a value you get to forget the fact that “this variable could get reassigned somewhere else!”. Yes, since values are values, which are not mutable, you don’t need to worry whether to values will change.

#### Another good reason to use immutable values
I’m just not sure how the hell other threads can change the variables on that other thread. Of course if the thread has a huge scope and can change the variable other threads have, isn’t that full of shit? I haven’t actually got the chance to experience that part. I want to have a go and experience the flaws of multithreading.
 Anyways, since other threads can’t change values, that means concurrency, parallelism can be benefits.

### Summary
Just remember, writing software with pure functions. Then you’ll only have immutable values. And HOF and recursion and all that stuff are only language features.

### See also
See the book and read the links when you have time.

## What is this Lambda You Speak Of?
Lambdas. All I get to think they are just anonymous functions. Also, we need them to pass around behavior easily. It’s just syntax sugar. But what kind of things can we do with these? That’s pretty much a good thing to know. Let’s go.

### Goals
The main goal of this section is to know about what the hell is lambda? 

### The short story
I don’t like history, so lets strap in.

#### Lambda
Lambda is a greek symbol that `Alonzo Church` chose to actually explain the concept of a function.

Modern functional programming: lambda === anonymous function.

#### The term lambda calculus
Calculus: a formal system.
Lambda calculus: a formal way to think about functions.

Most of the terms over here are about functions and their evaluations. The definition of functions, and how they are evaluated.

### The Longer Story (History)
Okay, I don’t really like history and don’t really want to get to know about it. I would like to go on when I really need to think about it. So lets just skip it for now. 
 I’ll just give you the pointers so you can have a big picture of it. Well if you ever get to read it though lol.

#### The 1950s and Lisp

#### John Backus, FORTRAN, and FP

#### Erlang

#### Haskell

#### Martin Odersky and Scala

#### Today

### One Last Point
It’s actually a really huge point. Things haven’t actually been considered when the concept of lambda calculus came out.
1. Maintaining state over long periods of time.
2. Interacting with files
3. Networking 
There were not such things as files or networking. Because of that, we need to find out how to solve those problems with FP.

So the result comes to: pure functional programs can’t have states and are immutable. Which means they can’t have I/O. Also, there was a 62 year gap between the invention of lambda calculus and monads. Monads are actually the solver of I/O. I don’t know what monads are, but I hope to get a good understanding of it. I only got a hint of it as lazy evaluation.

### If you like history …
[The Innovators: How a Group of Hackers, Geniuses, and Geeks Created the Digital Revolution: Walter Isaacson: 9781476708706: Amazon.com: Books](https://www.amazon.com/Innovators-Hackers-Geniuses-Created-Revolution/dp/1476708703/ref=as_li_ss_tl?s=books&ie=UTF8&qid=1471034437&sr=1-3&keywords=walter+isaacson&linkCode=sl1&tag=devdaily-20&linkId=6cf7a95f04552678b8e78436fa48aeb6)
Maybe I should read this book and get a grasp of computer history. At least know about it so you can learn how to study history yourself. Since it’s history about stuff that you actually care about, I think you could get a big picture of why people did this and why people made that and stuff. 
 
### See also
See the links in the book. 

## The Benefits of Functional Programming
There are general benefits for functional programming, and also specific benefits of functional programming when you use Scala. I guess the biggest benefit that’s on top of my mind would be less bugs, less side-effects. But I guess most of those comes from I/O.

### Benefits of functional programming in general
These are the things that you should keep in mind while you read this section.
1. Pure functions are easier to reason about
2. Testing is easier, and pure functions lend themselves well to techniques like property-based testing
3. Debugging is easier
4. Programs are more bulletproof
5. Programs are written at a higher level, and are therefore easier to comprehend
6. Function signatures are more meaningful
7. Parallel/concurrent programming is easier

### Benefits of functional programming in Scala
Scala/FP’s additional benefits:
1. Being able to treat functions as values and use anonymous functions makes code more concise, and still readable
2. Scala syntax generally makes function signatures easy to read
3. The Scala collections’ classes have a very functional API
4. Scala runs on the JVM, so you can still use the wealth of JVM-based libraries and tools with your Scala/FP applications

### 1) Pure functions are easier to reason about
Brain-to-code gap. It’s a pretty good saying. Higher-level code. The reason pure functions are easier to reason is, you only need to look at the function signatures. What it inputs, and what it outputs. The scope of the function is only that block. You don’t have to care about the outside world that much. But when you have to care about the outside world, you only need to see the thin layer. In Haskell, there’s an architecture where the core has only pure functions. But there’s a thin layer for impure functions that does I/O and all that bad(?) stuff.

### 2) Testing is easier, and pure functions lend themselves well to techniques like property-based testing
In imperative coding, you mostly define `private void changeState` kind of methods. I did that a lot when I developed android applications. Those methods don’t really do anything but change global state and return nothing. Now those make the side effects. I get it now. 

#### Proofs
FP is like algebra. Which means the functions will only calculate stuff with the inputs that it’s given and will return something. Because of that, we can write tests that test obvious stuff. I’m not sure of the `property-based` whatever thing atm. [ScalaTest](http://www.scalatest.org/user_guide/property_based_testing) -> It’s about property-based testing. I think it’ll test absolute every input that there is. Which is plausible over in FP. 

### 3) Debugging is easier
Since the stack trace of a program spits out the part in a pure function, all you need to check is the input that made the exception. That’s actually really cool. All you need to know is the inputs to that function. And the thing is, you really don’t need a debugger, and it’s way easier to write a test. Things like `QuickCheck` in Haskell is really good for checking the properties of a function. You only need to look at one place, the input, and the function that threw the exception. Debugging complete.

### 4) Programs are more bulletproof
States are passed around as values. So this means, no static global state. State is changed into a new state and you won’t need to think of the old state. State changing -> New values. 
 Because we have pure functions, they really are bullet proof. Small pieces of code that don’t have side effects. Pure functions is actually everything for functional programming. States are changed somewhere else, no open world global shitty things. All you have is a scope of your function and the inputs from the outside world that you manipulate in your small world.

### 5) Programs are written at a higher level, and are therefore easier to comprehend
Readability features of functional programming:
* The ability to treat functions as values
* The ability to pass those values into other functions
* Being able to write small snippets of code as anonymous functions
* Not having to create deep hierarchies of classes (that sometimes feel “artificial”)
* Most FP languages are “low ceremony” languages, meaning that they require less boilerplate code then other languages

### 6) Pure function signatures are meaningful
Pure functions tell mostly everything. The name describes what it does, the parameter types and names tell us what we’re manipulating with, and what it returns tells us where we can use it. Because of this, the signatures are really meaningful compared to non-pure functions. Those functions have void return and void parameters. Which means we only have the function name, and we can’t really guess what it really does. All we can do is believe that the function will do what we want. 

### 7) Parallel programming
Worrying about `deadlocks` and `race conditions`? Think again in FP! Because we don’t have states, we can just spin up multiple threads. Nothing special! Parallel computing leads us to concurrent computing!

#### Deterministic algorithms and concurrency
Deterministic algorithm === Same as the definition of a pure function.
* Concurrent = Two queues and one coffee machine
* Parallel = Two queues and two coffee machines

### 9) Scala/FP benefit: Syntax makes functions signatures easy to read
The syntax can be explicit and implicit. But most of the time, it’s really readable. In Java, the return type is in the front and the parameters are at the back. In Scala, they’re the opposite. Which means we put in this and we get that, it makes sense. Also for generic parameters, it’s way easier to know which one is which.

### 10) Scala/FP benefit: The collections classes have a functional API
Immutable collections I guess. No custom for loops. That’s great since we can delete explicit statements in our code. Which statements can’t make our programs parallel.

### 11) Scala/FP benefit: Code runs on the JVM
Is it really? Dunno atm. It’s actually just about the Java libraries that you can use. That’s all. 

### One more thing … 
People said that TDD is dead. And it went to something else. They said it’s good, but they need another way to actually test. But FP, people didn’t look back. Once they went from imperative to FP, they just kept on saying good stuff about FP. That’s on for like a few decades. Let’s go for it.

### Summary
1. Pure functions are easier to reason about
2. Testing is easier, and pure functions lend themselves well to techniques like property-based testing
3. Debugging is easier
4. Programs are more bulletproof
5. Programs are written in a higher level, and are therefore easier to comprehend
6. Function signatures are more meaningful
7. Parallel/concurrent programming is easier

Plus, the benefits of Scala FP!
1. Being able to treat functions as values and use anonymous functions makes code more concise, and still readable
2. Scala syntax generally makes function signatures easy to read
3. The Scala collections’ classes have a very functional API
4. Scala runs on the JVM, so you can still use the wealth of JVM-based libraries and tools with your Scala/FP applications

### What’s next
Let’s find out the potential drawbacks and disadvantages of FP. We need to know this really well. We can’t just know the good parts and use it in that way. We need to know the bad parts and try to make it better by making the bad parts good.

### See Also
Have a read! All the links are in the book. 

## Disadvantages of Functional Programming
General FP drawbacks
1. Writing pure functions is easy, but combining them into a complete application is where things get hard.
2. The advanced math terminology (monad, monoid, functor, etc.) makes FP intimidating
3. For many people, recursion doesn’t feel natural
4. Because you can’t mutate existing data, you instead use a pattern that I call, “Update as you copy.”
5. Pure functions and I/O don’t really mix.
6. Using only immutable values and recursion can potentially lead to performance problems, including RAM use and speed.

Scala FP drawbacks
1. You can mix FP and OOP styles
2. Scala doesn’t have a standard FP library

### 1) Writing pure functions is easy, but combining them into a complete application is where things get hard
Writing pure functions is easy. It’s because you just get some data in, transform the data in the way you want, in other words, applying an algorithm, and output the data. 
 But the hardest thing over here is, when you start to combine those pure functions and making it into a running application. 

### 2) Advanced math terminology makes FP intimidating
Not a problem with me though.

### 3) For many people, recursion doesn’t feel natural
Because of recursion doesn’t feel natural, you want to use for loops all the time. It’s much easier, and much … comfortable. But the only way to recursion isn’t actually recursion. You can use for expressions, collection functions like map, and then you can go with recursion. 
 The most important thing to catch over here is, `Recursive Thinking, Recursive Mindset`.

### 4) Because you can’t mutate existing data, you instead use a pattern that I call, “Update as you copy”
Yep, case classes come in. Copy and just change the variables that you need to change, and update as you copy. When you write code like this in the first time, you’ll be using a hell lot of intermediate values. But we’ll learn how to get rid of them after!

#### “Update as you copy” gets worse with nested objects
Yep … If there is a case class, but has some properties which are objects … That’ll be a really hard run. Well luckily, these problems are solved and we’ll know soon!

### 5) Pure functions and I/O don’t really mix
Doing any sort of I/O is going to be impure. So, all the other things will be written in pure functions, but with I/O, that’s just going to be one peal of the onion. An impure outer layer is going to do that for us. `The Scala cookbook` -> This book has a lot of implementations for this.

#### Pure and impure functions
In Scala, we wrap those IO stuff with the IO[] class. This wrapper indicates this function is impure! Because, you don’t know what will be returned.

#### The benefit of Haskell’s IO type
Yep, it just gives me the indicator that a function is impure. We’ll get more information about GUI/UI stuff at “Should I use FP everywhere?” -> Dang I sure want to know about that!

### 6) Using only immutable values and recursion can lead to performance problems, including RAM use and speed
Dang … 660MB of RAM sorting 10 million integers. Okay, with FP, everything is `possible`, JUST possible. Now, we’ll get a look of this at FP performance.

### 7) Scala/FP drawback: You can mix FP and OOP styles
All you need is house rules. Whether you’re going to use this or that, just agree with your contributors. After that, when you think again, FP + OOP could be a real benefit. People are trying to find a way to actually make the combined. I’m pretty much waiting to see what happens next.

### 8) Scala/FP drawback: Scala doesn’t have a standard FP library
So, Scala doesn’t have a built-in standard FP library. Which is pretty much bad at the moment. We’ll only have this and that custom libraries. I thought Scala was a functional language! Wrong! It’s just a multi paradigm language! Dang! Why did they do that! Well anyways, let’s find out what we can do about this rather than just finding what libraries to use. `Scalaz` and `Cats`. 

### “Should I use FP everywhere?”
Let’s think about the drawbacks and how we can get them to not be that kind of drawbacks anymore.

#### 1a) GUIs and Pure FP are not a good fit
Daaaang, the words “update” and “mutate” don’t exist in the FP vocabulary. The reason it’s not a good fit is, screens should be refreshed when the pixels are changed. If it’s FP, you have to refresh the whole screen when a change really is necessary. In imperative programming, you only need to change a few pixels instead of the whole screen. 
 Also, all the GUI frameworks are OOP. Are there any FP GUI frameworks? So you have to write OOP for changing the UI state, but all the other logic should be written in FP.

#### 1b) Caveats to what I just wrote
Functional Reactive Programming (FRP) is the way for functional programming in GUI applications. You can use observables to do IO, and observe them for events and invoke functional built-ins on them. 

### 2) Pragmatism (the best tool for the job)
Just be pragmatic instead of pure.

### Summary
It’s the same at the top point. But the thing that I got over here is, performance, thinking recursive, and IO stuff. I want to know how to architect that thin layer of IO! Impure stuff!

### What’s next
Breaking through the great FP terminology barrier.

### See also
See the list!

#reading/books