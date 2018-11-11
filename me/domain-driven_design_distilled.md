# Domain-Driven Design Distilled
Since I’m in the JVM ecosystem, and I need it at work, I’m going to study domain-driven design and hope to get some insights on architecting software. 

## Preface
The author wants to take DDD to the outside world and let everyone know about it. So this is a design tactic, and it involves not only software engineers, but everyone else who is in the agile team. Tactile, auditory, visual learners. They all have their own way in DDD. But it’s mostly all together. Which means, you have to communicate with your teammates and make a `ubiquitous language` and model your design visually with `context maps` and modeling business processes with `event storming`. This way, you get all three ways, and you get a cool software model, design.

## Who Is This Book For?
Anyone who’s in R&D or IT. Well, It’s for me!

## What This Book Covers
* Chapter 1
	* What DDD can do for me and a detailed overview of the book!
* Chapter 2
	* DDD strategic design with bounded contexts and ubiquitous language.
* Chapter 3
	* Subdomains, you get to learn integrating with legacy software.
* Chapter 4
	* Context mapping, actually feels like people gather and talk about the contexts they have, and we map them with each other and see what we can do!
* Chapter 5 & 6
	* You get to do Tactical design with a modeling tactic called Aggregates and Domain Events
* Chapter 7
	* PM tools to leverage DDD more. 

## DDD for Me
Bringing DDD with its strategic and tactic tools. DDD is actually a tool for modeling software. Remember, it’s a tool.

### Will DDD Hurt?
There’s a 3 day workshop, but I don’t know if it’s online or not. Well this book is surely a great one for distilling DDD. After this, I’m going to read the red book(Implementing DDD). 

### Good, Bad, and Effective Design
So DDD can solve business problems too. But if the business culture is really fixed, it won’t be easy to get the business problems solved by DDD. 
* Developers mostly are too technical. They don’t think about design, procedure. They mostly think about what kind of new tech will solve that problem. Give a think first, design, and then find your technical stuff.
* The database is given too much priority. So business processes and operations could be a better solution, but people tend to think with databases and data models. 
* Developers don’t tend to give a long thought about naming objects and operations according to the business purpose. Yeah, if you’re designing something, you should go and find the business people and see whether what they call this or that and make a ubiquitous language!
* Don’t collaborate poorly. If you don’t collaborate, you can’t make a language that everyone will follow.
* Project estimates. Estimating how long a project will take is one of the hardest things I’ve done. Well anyways, I don’t know what the author means of thoughtful design and “task-board shuffle”. If we just shuffle the task board and give anyone this and that vs thoughtful design, how are we going to design those tasks? I’m pretty not sure. Everyone will actually do a design, or at least think of a design when they try to implement something right?
* Business logic in user interface components(controllers?), persistence components(Rails & Django?). Persistence operations in business logic. Well, those are really bad you know …
* Broken, slow, and locking database queries.
* WRONG ABSTRACTIONS. I really want to know a real good example of this. I’ve saw some of them, but I don’t really get it intuitively. Overly generalizing stuff!
* Strongly coupled services. A service calls a service and does this and that. That service should only be used in a controller. A reusable controller! Well anyways, a Facade could be useable … but I don’t know.

Effective design. That’s the thing that we are going to do from now on. The alternative of good design is bad design. The worst is of course, no design. 

### Strategic Design
Strategic design is a forest tool that first gathers business strategy information and connects it with the technical forest design view and how to integrate with it!
 So, when you design something, you’ll have bounded contexts. And in that context, there’ll be a ubiquitous language which is only used in that bounded context.
 A bounded context, but there are going to be things called `subdomains` that are legacy systems. Some things that don’t go into the bounded context. You’ll also need to know how to integrate with multiple bounded contexts! That would be `context mapping`. Context maps contain both team relationships and technical mechanisms that exist between two integrating bounded contexts.

### Tactical Design
So this designing tactic is for building trees! After all, we need trees to have a forest lol. Well anyways, this is where we design the domain models specifically, and value objects, and aggregate them into a right-sized cluster. 
 DDD is all about modeling your domains as explicit as possible. Using domain events will let help you share what has occurred within your model!

### The Learning Process and Refining Knowledge
Just collaborate!

### Let’s Get Started!
Next up is, Strategic design with bounded contexts and the ubiquitous language!

#reading/books