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

#reading/books