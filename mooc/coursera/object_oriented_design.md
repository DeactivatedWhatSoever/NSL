# Object-Oriented Design


## Week 1

### Introduction to Software Design and Architecture

- Welcome to Software Design and Architecture

	- ACM/IEEE Software Engineering Curriculum Guidelines

	- Well this lecture was mostly an overview. OOP -> Design Patterns -> Software Architecture -> SOA(Service Oriented Architecture)  Things mostly go on like this. 

- Software Architect and Design Roles in Industry

	- Software architects need to have soft skills more than implementation skills. They mostly talk with the client(business), product and engineers. These people make the technical specifications and decide whether a software can be implemented or not. The thing is, they maintain bigger and bigger systems throughout their career. 

		- They mostly live on the higher level of the software. Not inside the code level.

	- Software designers are the more technical people. They design the classes, instance variables, inheritance, and all that OOA&D stuff. They analyze the specifications from the architect and start implementing the software by designing it from the architecture.

		- They mostly live on the lower level of software. Which means they actually do stuff with code. UML pattern diagrams, etc. 

	- Didn’t know there would be a big difference between the two. But sure, architects sure have a ‘higher’ level role.

### Object-Oriented Thinking

- Have a go of thinking everything as an object. Treat them like an object(lol). Because of this, we can actually ‘define’ things. What kind of attribute they will have, how they are related. They could be related by all their methods and attributes. Or maybe just their methods. It’s getting easier to think since you know some of the main things of OOP. Inheritance, Encapsulation, Polymorphism, Abstraction. But Isn’t inheritance and abstraction the same? Well it’s just vice versa.

### Design in the Software Process

- User Stories

	- If you want to be a programmer, you have to ‘think’ before you type. So express the requirements of the system and apply object-oriented thinking to discover the objects and methods.

	- Finding out who can input and gets what output. I as a _ want to _ that _. Got a lot of stuff to do! You’ll find that most of the nouns will be represented as an object and the verbs will become the object’s method. 

- Conceptual Design

	- Getting to know the ‘requirements’ of the software. When you do conceptual design, you have to find the objects and what they do from the requirements. Who, input, output. Most important thing to catch. You usually get these things from making user stories.

- Technical Design

	- Interface. Finally got to know what this word really meant. A place where A and B communicates. I think it’s the higher level of protocol. The tools that give the way to communicate with each other.

		- Just did a search on protocol == interface, and yes, I got the answer. “In OOP, a protocol OR interface is a common means for unrelated objects to communicate with each other. From [here.](https://en.wikipedia.org/wiki/Protocol_(object-oriented_programming))

	- This is the place where you get the conceptual design into diagrams. Where you actually write down the relationships between the models, specifying the attributes, and trying to split down to even smaller objects. 

	- Entity Objects

		- Entity objects are exactly the things that we call entities. An object that represents the data itself. Just has get setters and has attribites. This one mostly will be communicating with the database. It could be called a boundary object since it’s the interface object with the database. This is only theory so don’t beleive it this way. Needs confirming. 

	- Boundary Objects

		- This object will mostly be the DTO, VO, ViewObject, etc. since it communicates with the end users. I think there should be more examples for these kind of objects but this is the only thing that I can think about. Gotta get more from the course. 

	- Control Objects

		- Well this is the most easiest to understand I think. These are actually functions in objects. You can call all the objects from design patterns control objects. It helps you control your objects. Like delegating, composite, singleton, they are actually objects that control such objects. But still I’ve never used these objects consciously. So I have to learn them way better than everyone else on this one. 

### Design for Quality Attributes

- Yep, the most hardest and not wanted part to actually know. Time to market vs code quality. The software architect needs to know how to narrow down these two. See how they can get a lot of quality and a lot faster time to market. 

	- They can’t be excelled at the same time. If you have one, then you lose the other. For code quality, I think this will be used for things like real important technology for the company. Like a core feature, something that makes the company stand out. On the other hand, if the specific software won’t be used that much and isn’t that important, maybe we could lose some quality and deliver it to market.

	- I know this isn’t an easy thing but, if you want to make time to market fast, you need to be a developer that can develop software in speed and high quality. Which means, a programmer that has implemented so many things before.

- The trade off in software inside, is going to be different. There are three things. Reusability, maintainability, and flexibility. 

	- If you want specific performance into some piece of software, then it won’t be able to have much maintainability. Because it will be so ‘specific’. That’s why Jetty won’t be that maintainable since it’s mostly used for that light-weight and fast purpose.

	- Security vs performance. If we need a lot of layers for checking, authentication, authorization, there will be performance loss. We must think whether we really do need security in some places, and where to actually be really secure.

	- Backward compatibility vs performance. If we need backward compatibility, we will be doing a lot of checks on the software. Which will make us slow and can’t make it faster. 

- I don’t want to fight in this time to market vs code quality thing. I want more quality, and to make more things in quality. Don’t want to make disasters. I’ll get faster when I know all the best practices and I’ll just have copies of all that in my head. Then it will be much faster plus which quality. 

	- That’s why I want to get into DevOps. Less coding, automation, configuration, something that I can still love if it’s actual work.

### Class Responsibility Collaborator (CRC)

- You put in the class name in the ‘Class’ section, what the class has to do, which would be methods in the responsibility section, and the classes that will be interacting into the collaborator section.

	- Class: Component Collaboration: Communication Responsibility: Responsibility

- This is usually used in the conceptual design part. Since you’ll be needing the ‘big’ components over here. Before you get into the exact things like object properties, you have to know ‘what’ we will need and the ‘responsibilities’ of ‘what’ will need. Also the connections of ‘what’ will have.

### Review

- I got nothing wrong on the first try. I think this study method is pretty good. Well the thing’s that I should know deeper would be the object types. Boundary, Control, and Entity.

## Week 2

## Week 3

## Week 4

