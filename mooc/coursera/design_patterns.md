# Design Patterns


## Week 1

### What is a Design Pattern?

- It’s a conceptual way to represent repeated code that solves software problems in structure. For example, if we need to use an object all over the codebase, we should use the singleton pattern. These kinds of software problems are solved by design patterns that other software engineers created first.

- It’s pretty awesome that all these patterns have a particular name and they are pretty nicely represented. But still, we need to find out what they are and know what they are. When to use to solve a particular design or systems problem.

### Gang of Four Pattern Catalog

- I pretty much got the idea that these 4 authors created a hell lot of gratitude to the software engineering community. They made a lot of people’s code better and better.

- The design patterns are categorized by their functions. Creational, Structural, and Behavioral Patterns. 

- Creational, Structural, and Behavioral Patterns

	- Creational Patterns

		- These patterns are all about creating objects. How to instantiate the objects and how to manage them. I bet singleton, factory, these kinds of patterns are involved in this.

	- Structural Patterns

		- These patterns are related heavily with the four design principles. Abstraction, encapsulation, decomposition, generalization. These structural patterns help the code base meet the standards of nicely designed structures.

	- Behavioral Patterns

		- All about how the object behaves and what it needs to do. 

### Creational Patterns

- Singleton Pattern

	- I think you should create code examples from now on to make your design pattern knowledge more concrete.

	- The singleton pattern is used when you need an object that can be accessed globally and not instantiate it all the time when you use it. This is mostly used in utilities. 

	- Remember, the most important part of the singleton pattern is, no one cannot instantiate it in the outside, so it must have a private constructor. That’s why there’s a getInstance method which creates the object just once. (It always check whether the object is null and if it is, it’ll create it lazy!)

- Factory Method Pattern

	- Sometimes we need to instantiate an object by the new keyword a lot. Creating subclasses by their type etc. If you encounter this kind of situation, you need to create a method that does the object creation.

	- Factory Object

		- An object that helps you create objects.

	- Factory Method

		- An abstract method that helps you create objects.

	- A store should have a factory, or any concept that is like a store. If you have a place that needs to have object creation, you can use the factory object or method.

### Structural Patterns

- Facade Pattern

	- The Facade pattern indicates a ‘wrapper’ class. The client can’t interact with a complex subsystem. It won’t be easy for them to use the things they actually need. That’s why there’s a wrapper class for the bitcoin core! A bitcoin-cli for the bitcoin-core. Like so, the intension of this pattern is, to make the client communicate with a simpler subsystem.

	- This uses information hiding, separation of concern as key. To do this, the actual methods for the subsystem is not public. They are mostly private and we implement the methods that the client exactly needs in an easy way. 

	- It’s just a wrapper class! -> I think this is the best way to remember this pattern.

- Adapter Pattern

	- Since facade and adapters are both ‘wrappers’ you can get confused. The facade is for hiding the complex implementations of the subsystems and making the client use the subsystem easier by hiding the complex stuff and exposing the usable and easy stuff.

		- To get further, the adapter pattern is really an adapter. It’s goal is to make 3rd party libraries or legacy system’s compatible with the system that you are using. AppCompat for example lol.

	- So you make an interface for the target adapter and implement it. You pass the old implementation into the adapter and use the methods in there and implement the new methods to make it compatible between the two.

- Composite Pattern

	- Unifying the behavior. It’s main goal is this. Unifying the behaviors of the leaves and composite objects. It wants to make a tree-like structure and unify the behaviors of all of that. 

	- How can we get a unified behavior? Of course this is where we use polymorphism. We don’t need to check the types because it all implements or extends the class that we want. 

		- A composite object has the leaves. The leaves have the behavior which implement and extend. We need a parent class, and that parent class has the children that implements the behavior. The parent class is called the composite class.

		- Remember, the composite class needs to implement the component to give unified tasks!

- Proxy Pattern

	- Finally, I got to know what the word proxy means straight through my brain. A proxy object can do something for the real subject. Of course it will need to implement the same interface with the real subject. The proxy object will have the real subject inside the object and will delegate the things that the proxy can’t handle and do the things that it can.

		- Remember NGINX? It actually serves the resources by itself and delegates the things that it can’t do to the server when it’s a ‘proxy’ server! I still wonder what the hell a reverse proxy is. 

- Decorator Pattern

	- The reason this came out is when you need to create new behaviors dynamically at runtime. Since java is a static language and you need to class load the classes at compile time, you can’t exactly add them dynamically like python or ruby.

	- The important thing here is using the super keyword. The behavior of the superclass is getting ‘decorated’ dynamically by adding in some other code while still using the superclass’s original method.

		- First you implement a interface, and you implement a simple class. Which would be actually the parent. Then you create other classes that need dynamic behavior and implement the interface. Then you inject in the parent class to the decorator classes. Then wallah, you’re done.

## Week 2

### Behavioral Patterns

- Template Method Pattern

- Chain of Responsibility Pattern

- State Pattern

- Undo/Redo As a Pattern

- Command Pattern

- Mediator Pattern

- Observer Pattern

## Week 3

### Model-View-Controller Pattern

- MVC Pattern

### Design Principles Underlying Design Patterns

- Liskov Subsitution Principle

- Open/Closed Principle

- Dependency Inversion Principle

- Composing Objects Principle

- Interface Segregation Principle

- Principle of Least Knowledge

### Anto-Patterns & Code Smells

- Stories of Bad Coding

- Code Smells - 1

- Code Smells - 2

## Week 4

### Capstone

