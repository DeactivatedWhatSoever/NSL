# Software Architecture


## Week 1

### Architecture Overview and Process

- Software architecture isn’t actually the technical part. It’s where you communicate with all the humans that are in part of the project. The people who are going to benefit of the software that you’re going to build. 

- So that’s why architects mostly view things with the UML diagrams or the even higher, specs and actions. They try to solve the problems in the higher level of something. 

### Communicating Architecture

- Kruchten’s 4 + 1 Model View

	- This is actually how you view the software and how you’re going to architect it.

	- Logical View

		- Actual functions of the software.

	- Process View

		- The performance, scalability of the software.

	- Development View

		- The software components that you need to build the software, toolsets, libraries, programming languages, etc.

	- Physical View

		- Where the software is going to be executed. The actual servers, environment etc.

	- You have to think of all the views and the UML crash course will show each step how to describe the views in UML.

- UML Component Diagram

- UML Package Diagram

- UML Deployment Diagram

- UML Activity Diagram

- I’m thinking of learning the UML diagram usage some other time. I bet there will be a great book about it and when I become a software architect, I would need to draw these. But in South Korea, I never get the chance to actually use this stuff. If I ever get a chance to build a huge system from scratch, I think I would go and read a book about it and just write it down again.

## Week 2

### Language-based Systems

- Abstract Data Types and Object-Oriented

	- When you choose a language, that means you need to know what paradigm the language is following. Like C++ and Java, they follow OOP. 

	- The most important and fundamental thing in OOP is classes. Which is abstract data types. With abstract data types, you can define the data that you want and need. Also, there are way more important principles in OOP like abstraction, encapsulation, decomposition, and generalization. You can also use design patterns with these principles which are creational, structural, and behavioral. 

		- There are also a lot of principles like the SOLID stuff, but as long as you know these and know how to follow and know how to smell code and fix them, you’re mastering out OOP. Nothing can be perfect, but you can minimize all the bad stuff by following most of the principles. 

		- I just wonder whether some day there will be a contradictory when you follow all the rules. Of course they would be sort of solved when I actually find them. But most of the conflict come when you’ll make a huge application. 

- Main Program and Subroutine

	- This is the procedural programming paradigm. I think it’s mostly used in C and there’ll be a whole lot of languages that support this style. It’s mostly about functions. A subroutine can mean the following: routine, procedure and function. 

		- This means, that this paradigm is useful for computational needs. A main program just shoots up and you just use some functions like calculate this and that. Function oriented program. Just need this and that.

		- Subroutines can have another subroutine inside of them. It’s much of a hierarchy of functions than objects or classes. So inheritance isn’t easy to get supported in this style. 

		- I actually wonder how hierarchy is made in functions. Gotta take a look.

	- Anyways, this is most likely the same as functional programming. Making immutable stuff and having less local variables. It needs to have one entry and one exit to make it modular and have one responsibility.

### Repository-based Systems

- Databases

	- Okay, didn’t really get much information over here. I thought of actually getting an overview of a database’s architecture but it wasn’t. It was just about DBMS, what benefits you get from using a database and what flaws you get. That’s all. Nothing really special.

	- I think it’s best to actually go and study about the internals of the database and how it is actually made. 

### Layered Systems

- Layered Systems

	- A great thing to know. I think it’s pretty much close with the clean architecture. How it’s layered. What it means by layered is that, it just has layers. There will be a lower layer, a higher layer and it will go on. 

		- The layers can only communicate with each other which are adjacent. Which means that the most bottom layer can only communicate with  the layer that’s just above it. But if a layer is in somewhat the middle and has a layer above and down, it can only communicate with those two layers.

		- Because of this, you can separate the concerns of your software. If it had a whole big layer of it, then it should be changed by changing some parts into other layers. If something doesn’t communicate with something, it’s going to be on the lower level of the layer.

		- Because of layering systems, people don’t really have to know all the layers. They should really get to know the layer that they are developing on. This will help them not to actually spend their time on trying to understanding everything.

	- If you have a layer that communicates with too many layers and it’s not just that layer, you shouldn’t be using layered systems. But there are times when you just need one time to communicate with something. Then you can just add a notch and let them go through for that specific time. Then your layers won’t be that much destroyed and it can be a little bit flexible. 

		- Remember, the layers can be 2D and even 3D. The most important thing to remember here is that the layers can communicate too much. Then you shouldn’t use this architecture. (Try to find an alternative for layered systems)

	- A great example for layered systems is OS. The kernel on the bottom, system libraries and resources, and user applications (They call it user space).

- Client Server n-Tier

	- Well there’s not much to actually talk about here since this architecture is the one that you’ll know best. It’s the web! Client-Server! Request-Response!

		- Well actually the important thing to catch is the ’n’. If it’s 3-tier, then it’s the client, server, and the database. Then it’ll see the server as the application layer. I think you should put this in mind.

	- This has a lot of benefits of centralization. But lets take a look at how ETH can crush this paradigm.

### Interpreter-based Systems

- Interpreters

	- [Difference between compiler & interpreter](https://www.programiz.com/article/difference-compiler-interpreter)

	- Execute line by line. Not execute the whole entire binary. That’s the reason why Jupyter notebook works.

	- Why would you need an interpreter over a fully made program? Well of course when you use ruby console or python, it really is cool since it can execute all the commands like REPL. But a Java REPL doesn’t exist. Well a web-based thing is out there but still, it isn’t easy.

- State Transition Systems

	- Giving state over a behavior. Something so important in transactions, detecting deadlocks, finding out what your application state is. 

	- Transitioning to a state because of a behavior, we need to track down the state to know what are application is doing right ‘now’.

	- Because of multi threading, multicore, and these parallel computing environments, we must need to what are software state is. If another dude tries to change something that the current dude is changing, a big problems occurs. Because of state check, we can do other behavior by the state.

	- I wonder if a lot of computers are running the same line of code. And they are all running interpreters which are stateful!

### Dataflow Systems

- Pipes and Filters

	- I’ve used pipes in the command line and made filter methods a lot of the time. The filter in the tomcat servlet is also a filter. This pretty much is cool to know. 

	- The purpose of these are to represent a data ‘flow’. You get all the users from the database, and you use a method to filter out the people who’ve accessed from the last hour, filter out the users that have a username and contains r, etc. It’s just a flow, it keeps on manipulating the data and gives a result of what the user really wants to see.

	- Dataflow is pretty much a really essential thing in data analysis. Data analysts will really need to know about dataflow systems properly and need to know how to pipe, filter through the data.

		- Since filtering and piping in memory can be a heavy and slow task, it’s not a good idea to do such thing in a service. Rather try to use this architecture for mission critical use.

### Implicit Invocation Systems

- Event Based

	- The components in this architecture are event generator, consumer, and bus. Also they do implicit invocation. Which means the generators don’t actually call the consumer’s method. What they do is, the generator passes the event signal to the bus. And the bus may be doing the load balancing and passes the event to the consumer which gets invoked. So that’s why it’s implicit.

		- A great implementation of this style is the observer pattern. The observer pattern does something by a signal, like the generated event in this style. 

		- Actually, the funny thing is, the main event loop is actually the generator and the consumer. It consumes the events that come in and actually generates the events that need to go. I think this dude is the event bus? 

	- There is a great problem in event driven style because of changing the same shared data. Ordering problems. So we make an indicator called a semaphore that has a state. It’s state represents whether the shared data can be changed or not. Just like the door knob example in the lecture.

		- They call this the ‘Race Condition’

- Publish-Subscribe

	- You need to know the main difference between pub-sub and event-driven architecture.

	- In pub-sub, the publisher creates the events and the subscriber can subscribe to the publisher and get the messages. In this architecture style, a component must be one of publisher or subscriber. It cannot be both.

	- The relationship between the two components can be vary in form and closeness. But the problem is, why is it actually in this style? What kind of form and closeness? 

		- Should find out the true meaning of this.

	- In event-driven architecture, it does implicit invocation. They say it’s the same in pub-sub. But I want to know the difference. The exact difference between the two.

		- Publishers and subscribers are not explicitly connected, but what does it mean that they are loosely coupled? Are these separate objects that actually invoke each other? Then that doesn’t mean it’s implicit. 

		- Implicit, a form of callback they say. So another object will just invoke it in the last, which will be a callback.

		- [Implicit Invocation](https://en.wikipedia.org/wiki/Implicit_invocation)

		- [Explicit Invocation](https://developers.google.com/actions/discovery/explicit)

	- So the pub-sub alone is good for a small amount of subscribers per producer. But if you want to scale it, you can make a connector, which is an event bus and scale it. 

		- The most important thing to know over here is, the subscriber can only receive messages and the producer can just send messages.

### Process Control Systems

- Process Control

	- Feedback loop. Feedforward, Closed Feedback, MAPE-K System.

		- Keywords that I got in this course.

	- Not much in this but making a feedback loop looks like just making a certain set of statements. When it hits a condition it will go back to a step. 

		- You can just think this as an algorithm. But it could have a loop or just cancel, close. It’s pretty much it. 

## Week 3

### Architectural Trade-offs

- Quality Attributes

- Analyzing and Evaluating an Architecture

### Product Architecture

- Relationship to Organizational Structure

- Product Lines and Product Families

## Week 4

### Capstone

