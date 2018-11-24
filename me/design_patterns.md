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

	- First, you need to know what a behavioral pattern is. I need to know what it really is! 

		- So the behavioral patterns actually solve how to run a behavior in software component.

	- Superclass, template methods. Template methods are the methods that has similar functionality with some other classes.

	- I think that this pattern is used when we have a main super class and subclasses that have a lot of common behavior. I think it’s just plain inheritance and the world ‘template’ explains it all. A superclass that is the template, and all the subclasses will just use the template. Nothing really special.

- Chain of Responsibility Pattern

	- Great thing is, I’ve experienced this pattern and didn’t know what it was lol. The chain of responsibility, HTTPInterceptor, and Filter. Just handling the request step by step and see if one of the handlers can actually handle it. If it can’t well then it’ll raise an exception in the end or just bypass it with no handling. 

		- The most important part of this is, if the handler has various behaviors on it, it won’t be unified and the request won’t be able to be handled in some cases. To avoid this, we use the template pattern to make the behaviors unified for all the handlers. 

- State Pattern

	- The almighty state pattern that I’ve heard of and saw. If you just think about it, it’s actually giving an object a state. A state enum and you can implement some behaviors according to the state of the object.

		- If you just use if-else clauses and do the behavior in there, it’ll be way hard to actually do something  with the desired state and when you need to add a state, it’ll be really dirty to just add an else if. 

		- To solve the problem above, we use interfaces. We make a state interface that has the behaviors of all the states. And then implement the states and inject them into the object. The object will need to be instantiated with all the states implemented by the behavior. 

- Command Pattern

	- The command pattern is used in implementing the redo/undo feature of text editing or any other software component that needs that feature. 

	- There are four components in this pattern. A Client that will ask the Invoker to do a Command and the Receiver will get the Command from the Invoker and invoke the method.

		- For an example, you can remember the restaurant example. A client calls the waiter and the client gives an order. The order will go into the chief and the chief will invoke the order.

	- A transaction system is a great example for using this pattern. Cool.

- Mediator Pattern

	- Someone in the middle. That’ll solve your problems behind someone else!

	- If you have a lot of components that are interacting be themselves and getting complicated by having chains when communicating, it’ll be best to decouple the communication to a mediator. This actually centralizes the behaviors to the mediator. 

		- I’m just thinking, we did decouple the ‘communication’ but what happens if we have too many objects that are communicating with the mediator? Well of course we’ll be able to make multiple mediators for the specific objects that actually need them. But what about mediators for mediators? It gets decoupled but I think it’s getting more dependencies for each and all.

		- Yes, my concern was accurate. But it’s a trade-off. If you want code in a centralized place, and if that code becomes real big, it won’t be easy to debug, but easy to find. Centralization and decoupling should be something that we should care about.

	- The best thing to actually use these patterns are for UI components. When I keep on seeing the examples, most of them are for UI. So I should find some examples that can be used in the server side. 

		- A dialog would be the mediator, and the buttons, checkboxes, all those UI components will be the colleagues that communicate with the mediator.

	- This pattern could also need to have the observer pattern to notify the objects to communicate.

- Observer Pattern

	- The observer pattern. The ‘observers’ are actually the guys that are just looking at the ‘subject’. The observers will need to be able to subscribe to the subject and unsubscribe. When the subject is updated, all of the observers will need to be notified.

		- The observer pattern done right in reactive programming. I wonder, but when I saw the website, it sure had a lot of functionality in the observable stuff. Subscribing to a thread, listener, etc. Since I got the understanding, I think I can now know what it exactly means.

	- The subject can have multiple observers so most of the time the subject will have a list. It should loop through the subscribed objects and update all of them when it needs to.

## Week 3

### Model-View-Controller Pattern

- MVC Pattern

	- Looking at the MVC pattern without Spring framework. Or in a perspective of an REST API. The view has the boundary objects and the objects that are relevant of the view. Like buttons, click listeners and etc. So an Activity, Fragment is actually the ‘view’ part. 

	- The Model is actually the backend of the program. It’ll have most of the logic that needs to do by manipulating the ‘control’ object. The control object mostly has the information about the application’s state and the user and etc. Entities they are. 

		- So Service will actually be the model in Spring framework. Which got to me now. They just use java beans for models, boundary objects over there, and you use models like service, repository.

	- The Controller is the guy that glues these two. Manipulating the model and view to their rightful state. Updating the model and when the model updates, the view will know since it’s observing the models. The controller will have some presentation logic if needed, but most of the time it won’t be that complex.

		- Think outside the box. Just try to understand the most simple implementation of an MVC pattern. The model is the backend, the view is the frontend, and the controller is the guy that references both and glues the result. Of course it’ll have to return the things between each other.

### Design Principles Underlying Design Patterns

- Liskov Subsitution Principle

	- This principle is the most important thing that you have to know when you do inheritance. Classes, and inheritance, one of the most important things that you need to know in OOP.

	- This principle indicates whether the use of inheritance in your code is valid. 

		- How can you know if this inheritance is valid? Well the first and most important, see if your parent class can substitute your child class. And also, check whether if your child can’t substitute your parent. If your child class can substitute your parent, that means you don’t need inheritance. You just need your parent class.

	- There are four guidelines in inheritance.

		- Your subclass should not strengthen whether it can get called or not. The child should be able to do everything of what the parent class do. If a child can’t sort of invoke a parent method, then that violates this principle.

		- The subclass cannot make the parent classes behavior weak. You can only strengthen the function of the behavior. Or specialize it.

		- Leave the things that are immutable in your parent class. If you need your own, then just declare it in your subclass.

		- The parent classes behaviors must be the same with the Childs behaviors. If the child overrides the parents method and it does some other behavior, this principle is violated. Remember, you can only strengthen the function of your parents class in your Childs class.

- Open/Closed Principle

	- This is pretty easy to understand but hard to actually apply. The open part is, that code is open to extension. The close part is, the code is closed to change. Code shouldn’t be able to be changed easily and should be easy to extend.

	- The reason why it should be closed for change is, if a working system gets changed heavily, it will be so hard to test and hard to actually deploy it. Everyone in the company won’t be able to go home for a while and a lot of problems will occur.

	- So we rather extend the program. If we want a new feature, we find a way and try to extend the program from there. If we just keep extending the program, we shouldn’t need to change the original behavior of the program. If it needs a whole new change, why not just make a new program! 

- Dependency Inversion Principle

	- Dependency must be as loose as possible. There shouldn’t be a lot of dependency in the program. But the sad thing is, dependency is essential. And it could be a good thing.

	- But the thing is, we need to manage these dependencies as best as we can. The best way to make them manageable is, making the dependents depend on high level abstraction.

		- What this means is, the dependent needs to depend on higher level abstractions because thats a way to not change code in a lot of places. Because, if we just inject a dependency that is a subclass of that abstraction, we can actually change the implementation without changing the real implementation. We just need to change the injection of the dependency and that’s it.

		- Always think and try to use the most highest level of all. If it’s too high then it won’t might have the behaviors that you really need. Then you go down the level that actually has. 

- Composing Objects Principle

	- This principle wasn’t easy to understand on the high level. But what I got is, composing over inheritance. 

		- https://en.wikipedia.org/wiki/Composition_over_inheritance

		- There are benefits when you use composition over inheritance. Sometimes writing software with using inheritance could be better. The thing is, to understand this principle more deeply, you have to know the structural design patterns a bit better. Such as composite and decorator. These make software structures better with behaviors.

	- Come back to this one when you get to know composition vs inheritance.

- Interface Segregation Principle

	- Interface segregation, to be easy, try and divide the behaviors that you need and don’t! A class can implement multiple interfaces. This is the key part of Java. If a class doesn’t need some behaviors, then it should be divided. 

	- This is a really easy one to understand and apply. You can think of the admin interfaces and just read interfaces for normal users. 

- Principle of Least Knowledge

	- You need to know about the Law of Demeter. It has about four rules. And the most important thing to remember over here is that an object should not ‘reach through’ another object. 

		- The Law of Demeter says something about local objects. 

		- An object as an instance variable.

		- An object that is returned from a method defined in the current context.

		- A method that has a parameter of an object.

		- An object that is instantiated in the method of that current context.

	- With the four rules, if an object is reaching out for an object, that means it’s violating the Law of Demeter. Try to make the object know least as possible.

### Anto-Patterns & Code Smells

- Code Smells - 1

	- The code smells in part one and obviously part two are from the book ‘Refactoring’ by Martin Fouler. 

		- Yep, you need to refactor your code when you have to change your code. If you try to refactor it when the code is completed, it won’t be easy and you won’t really have any means to actually refactor it.

	- The first one was about comments. People tend to write no comments, or write comments that actually tell you where to change. That means the design isn’t good and you have to try and find all the references the actually change.

		- For this, an example of this comment thing is from the early ages of Java. When Java didn’t have generics, people had to write a lot of the classes and needed to say where to actually change. These kinds of stuff comes from when languages don’t support some sort of design pattern or principle.

	- And here comes the most famous saying, DRY. Don’t repeat yourself. When you find code that is getting duplicated, you need to find a way to make it not duplicated. And well, then you try and refactor the code you have written.

	- God classes, god methods. This indicates of classes or methods that are so big! When your class or method starts to grow big, you have to find a way to separate the functionality and divide them into other parts.

- Code Smells - 2

	- Mostly just analogies but they must be in the ‘Refactoring’ book. I think we can find code smells over there and understand it more effectively. Also apply those! At least try and do the code smell part 1.

	- Shotgun Surgery

	- Feature Frey

	- Inappropriate Intimicity

	- Law of Demeter

	- Message Chains

	- Primitive Obsession

	- Switch Statements

	- We might need this someday

	- Refused Bequest

## Week 4

### Capstone

