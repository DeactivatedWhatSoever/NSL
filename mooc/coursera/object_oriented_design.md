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

### Creating Models in Design

- Models: Bridging concepts and solutions. I wonder what this really means. As I think, is that models are something that makes concepts into actual solutions. But it’s the bridge. It’s the connector. It’s not even a concept or an implementation. Design to implementation. In the middle. So it actually helps you make the design to implement it in real life.

### Languages Evolution

- Languages have been evolving through the years. The video did a example with a developer called Ted. 

- From the 1960s, computer resource was very low. Which means, we needed to use RAM, CPU power really strictly. I think that’s why the programming languages could only be written in one file and had only one global object for persisting data.

- In the 1970s, the abstraction got bigger. They wanted to make data a little bit more abstract, and then it became from making other files with header files. 

- 1980s, OOP comes in. The object is a factory, and no longer computing power is a threat. It’s the developer’s productivity that was the main threat.

### Four Design Principles

- Abstraction

	- Abstracting away something means to simplify something. Over here, we need to make a concept from the context we are within. Defining the context is the most important thing since then we can define the attributes for the concept. 

		- A class represents a concept in OOP, and we can abstract it away by defining the needed attributes that represents the current context.

- Encapsulation

	- Making data integrity, exposing and restricting. 

	- When you have something, that something should be grouped in itself. That should represent itself with that data. If it’s connected and have dependency with others, we’ll have to think all those connections as a whole. Which means low maintainability.

	- A capsule is the concept of this principle. We can access some attributes, but mostly it’s restricted from others. Only inside of the capsule can manipulate with the data inside.   We can expose data that we really want, but we can also restrict the data. 

	- As a result of this principle, we can have less error-prone designs. The data represents itself so we don’t need to think about the others.

- Decomposition

	- I think this principle really goes well with the encapsulation principle. But what I’m thinking is, to abstract everything, we need to do encapsulation. But if we need to do encapsulation, we also need to decompose. 

	- Decomposing something means to split different parts from a whole. Think about a car where all those parts make a car. Even the parts have different parts. 

		- We also need to think of the lifetime of the parts, see if the parts are stick to a certain number or dynamic. Last, we need to know whether the what part is sharing with each other. This does put a dependency with each other, but I’m sure that it’s something that’s generalized. 

- Generalization

	- I thought abstraction was generalization. But these two words are absolutely different. We absolutely need to understand both of these concepts as clear as possible.

		- Generalization is actually making the subject ‘general’. Abstraction is defining the behaviors and attributes of the subject. To make something general, we need duplication. Only when we start to see when something starts to get duplicated, we can generalize it and write one thing once. 

		- To achieve this behavior of generalizing duplication, we use a concept of inheritance. A class can have a child. The parent class gives its attributes and behaviors to the child. The child also can have its specific needs. Because of this, if we find another class that might get duplicated, we just inherit the superclass and all is well.

	- This is just a concept, but I wonder why Java created interfaces to make generalization. Would interfaces used to try generalizing behavior? Why only behavior? Lets think about this on the next lesson.

### Expressing Design Structure in Java & UML Class Diagrams

- Abstraction in Java and UML

	- We can present the concept of a program with a CRC card. Putting the class name, attributes and behaviors, and then the connections of other objects. 

	- On the other hand, on UML diagrams, we are getting closer to code. Which means we need to specify the data types, and also match the convention of that language. First, to make abstraction, we need to get the best name for the class name. Then, we start to find what attributes and behaviors it have. Remember, we need to specify the data types for thr attributes, parameters and return types for the behaviors. 

- Encapsulation in Java and UML

	- It’s cool how all of these principles come along so nicely with each other. We need to know what data should be collected inside a class. The attributes must be only used for that particular class. So, once we have decided the attributes, we need to expose or restrict them to other classes. 

	- To restrict, we can use private identifiers. If we want to expose, we use public. It’s represented - or + in UMl. 

	- We can represent restriction with setters and exposure with getters. By implementing our own rules in there, we can sure make everything encapsulated inside that class. 

- Decomposition in Java and UML

	- Somethint that we need to know the best. I’ve got a lot of insight from this principle. A whole into different parts, and different parts to a whole. We will be talking mostly about relationships over here. 

	- We have three types of relationships. Which are aggregation, composition, and association. 

		- Association is a relationship that are loosely coupled. The two objects might have each other like a many to many relationship. Both can have a lot or none. I think I need more examples of this relationship. It’s pretty hard to understand. But the best understandi g that I got was when it was explained in code. Ou can send parameters to each class. They don’t seem to have rach other in attributes. Well if they had attributes, it means they’re dependent with each other. That’s why they call it DI. Try to make dependency as low as possible. Or make it clear. Just passing around paramteres! We put 0 .. * in both sides. 

		- Aggregation is a loose has a relationship. Of course a class has a relationship in its attributes from now on. We tend to give the whole a uncolored diamond and a 0..* relation. This is pretty much easy to understand becuase it means the relationship is optional. 

		- Composition is the most coupling relationship. To indicate that it’s a composite relationship, we give a colored diamond and 1..*. The class must have an attribute of that attribute. Which means, the attribute must be set and not be null. It must habe at least one present! So this is probably used when we need an attribute always  

- Generalization with Inheritance in Java and UML

	- Inheritance in Java can be achieved in several ways. With the extends keyword, we can make objects inherit all the attributes and methods.

		- I heard that there are a lot of problems with the ‘extends’ keyword. Wonder why.

		- Remember, the ‘abstract’ keyword makes the class not instantiate. So it’s just a class that gives you the most generalized form.

	- The thing is, when you make a super class, you have to know what you’re trying to achieve. If the child class really needs to actually needs Generalization. The key is, not inheritance, but generalization. You have to know when you’re actually going to generalize your software component.

	- Now, to express inheritance in UML, all you have to do is draw an arrow standing up from the child to the parent class. 

- Generalization with Interfaces in Java and UML

	- Interfaces. These are just there for you to define behaviors only. This will let you define only behaviors, and then, it will make your object be able to do polymorphism. 

		- Polymorphism, something that can be A can be B. If classes inherit or implement the interfaces, then it will be able to run the behaviors. 

		- I think we need to know why interfaces came out and how we can understand to use them more. When to use abstract classes and when to use interfaces.

	- To express interfaces in UML, the class points to the interface with a spotted arrow(is this right?). Then it indicates that that class implements that interface.

### Assignments

### Review

## Week 3

### Design Principles

- Coupling and Cohesion

	- You need to know what the difference between coupling and cohesion.

		- Coupling is the relationship between modules.

		- Cohesion is the relationship inside the module.

	- Coupling can be distinguished by loosely and tightly coupled.

		- There’s a great metaphor with LEGO and puzzle pieces to explain coupling. It’s mostly about how it can get connected with all the other modules.

		- LEGO’s can be connected with mostly anything! Well it does sometimes have specific needs but still, mostly they’re loosely coupled.

		- On the other hand, puzzle pieces can only be connected with a specific one. So it’s tightly coupled because it can only be connected with one or a few.

	- Cohesion can be distinguished by high and low cohesion.

		- This mostly tells you about the number of responsibility that the module has.

		- If it has a single responsibility, then it has high cohesion. If it has a lot of responsibilities, and the responsibility is not clear, then it has low cohesion.

- Separation of Concerns

	- What I understood about this is, dependency injection. Encapsulating the behaviors and attributes into classes. 

		- Also, when you put in dependencies, you put in interfaces. So when you want to have a different type of attribute, all you have to do is inject the right object that has implemented the interface! 

		- All this is actually separating the right things. The concerns, which is really concerns, that must be encapsulated into their own behaviors and attributes. 

	- I think dependency injection is mostly what I could think over here. But that’s just an example in this lecture. I think there will be a broader set of examples with separation of concerns since it’s a concept. There should be more to find out. But really, the basic part of this concept is, separating the classes behavior and attributes so it represents its own purpose and responsibility.

- Information Hiding

	- It’s a really important concept in the world of encapsulation. You need to hide and reveal what you want to the users.

		- The user shouldn’t know the implementations or change it. They should just know how to use the class. Whether getting the value of the attributes, or invoking a specific behavior. 

		- To control the hide and reveal, we can use access modifiers in Java. Public, protected, default and private. They all have their own levels, and we can use them to reveal or hide the information in our classes.

- Conceptual Integrity

	- This lecture was about being consistent. All the people who are working together should have a similar concept of thinking. 

		- Having code reviews, and making coding standards would be a great way to have conceptual integrity. Data integrity. Different thing but I think you should know the differences.

	- The code that everyone writes should be consistent and they should look and feel the same as like as one person wrote the whole entire program. In that way, people who come in new, will be able to understand the code much easier. 

	- Remember, being consistent about the concept! That’s the important thing to learn in this lecture.

### Generalization Principles

- Inheritance Issues

	- The thing that I learned from cypher when I came to my new job. There, he says that “What would you like to destroy in the java language?”. And the answer is ‘extends’. People ought to use the extends keyword with no thought.

		- The though is, they use it for only refactoring out common attributes and behaviors. A superclass and a subclass, there’s that for a reason. Not for just refactoring out repeated code. Subclasses must have all the responsibilities as the super class and also has its own specific responsibility. Otherwise, you don’t need inheritance for that class.

	- The SOLID -> L -> Liscov whatever principle is in this. The mean thing about this is, you have to make your subclasses have all the responsibilities from the superclass and have its own special needs.

### Modeling Behavior

- UML Sequence Diagram

- UML State Diagram

- These two chapters are about writing sequence and state diagrams on UML. I’ve mostly read these from other people. Sequence is really as it is, if there is a certain task, the diagram will show the start to the end of the behaviors of the objects. 

	- On the other hand, state diagrams represent the state changes of the objects. Beware, the objects must have state. The state name, the activity that changes the name and etc. These are essential to represent a state and the change of the state of the object.

### Model Checking

- Model Checking

	- What I learned from here is mostly testing. Verifying what you designed is a really important thing. Before you start development, you need to make sure all the concepts and state flows are right. If you don’t get it right, then there will be a serious problem when you start development. 

	- So how do you check your model? Mostly it’s simulation and finding all the edge cases by yourself. Where you just keep testing the states and the changes of the states. See if that value of the state gets changed in a non observable way. 

		- We can use the state model to examine the validity of the model. Modeling Phase, running phase, and the analysis phase. It’s mostly just checking with the mind, actually running it, and fixing or refactoring the flaws.

## Week 4

### Capstone Challenge

