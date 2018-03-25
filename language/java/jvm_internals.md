# JVM Internals


## Welcome!

### Course Overview

- Mostly talking about what we will cover in this course. Of course, because it’s the overview. We also need to know that the courses are small. That means we can get to know the materials a bit better since it’s small. Our concentration can get over all of that.

- The things that people cover when they go into a java interview is: Java Fundamentals, JVM, Arrays, Collections, Iterators, Maps, Programming Puzzles. 

## Installation

### Java Installation

- Well I already know this and I usually use the Java version manager ‘jenv’ to do this kind of stuff.

### Eclipse Installation

- Don’t use this anymore and I only use intellij.

### Learning Material Installation

## Fundamental Java Question

### Understanding String Pool

- So there’s a place called ‘heap’ that contains all the created objects. I guess the heap memory just contains it? And the GC manages the object’s lifecycles? That’s just my guess.

- Well anyway, there’s a thing called ‘String Pool’ inside the heap. There are two ways of instantiating a String object. With the new keyword, and just the String literal. 

	- If you use the ‘new’ keyword, it’ll just create a new object with a new hash code with the value. 

	- If you just instantiate it as a literal, I don’t know what, but something searches the String Pool and gets the reference of that string object if the value is the same! 

	- Question: I wonder what happens if you have two String objects that have the same value in the heap. And then if I make a String literal with the same value, which one does it get referenced to? Is it by random? Or something else?

		- Did an experiment and I think it gets the firstly made object with the same string.

### What is String.intern()?

- Didn’t know Strings don’t get garbage collected. The only strings that get collected are String.intern() strings. These are the only things that get collected. 

	- If the string that you are manipulating only needs to be used once, then you use string.intern(), if not, use literal or new String(). 

	- I think I should get to know of new String and literal.

	- If you use intern on the new String(“”); -> then it’ll get the string from the String pool. I think people call the string pool identical to string constant pool.

		- [String Pool vs Constant Pool](https://stackoverflow.com/questions/23252767/string-pool-vs-constant-pool)

		- Yep, they are different things. Not identical!

### What are Immutable Objects?

- Immutable. Something that cannot but changed. Once created, the object can never be changed. To accomplish this in Java, you make the class final and the member variables final. That way, they can’t get changed.

	- I want to know the most common reason about immutability. But I thought about it on my own and all the other stuff that people said about this. If the object is immutable, it cannot be changed once initialized. If someone or some program changed the object in a bad manner, or a manner that the program isn’t recognized with, there will be a bug! Or maybe some bigger bad things. For this, we can use these objects for safety and we will also be confident using these kind of objects.

	- [Why do people keep creating mutable objects?](https://softwareengineering.stackexchange.com/questions/151733/if-immutable-objects-are-good-why-do-people-keep-creating-mutable-objects)

	- [Why do we need immutable class?](https://stackoverflow.com/questions/3769607/why-do-we-need-immutable-class)

### Can You Create an Immutable Object?

- To create an immutable object, we should ensure that the class is defined final, which then we can’t extend the class.  Define all the fields as private final, so people can’t access it on the outside and even change it if they could.  Don’t provide any methods that can modify the object’s state.

### Protect Your Immutable Object with Copy Constructor

- You can use the copy constructor to create a new object. If you use this one, you have to beware with the encapsulation principle. Otherwise, you’ll have to change all the arguments where the object is used.

- Copy constructors are used to copy my object values to another instance of my object.

### Immutable Quiz

- I got wrong with the String.intern() thing. Gotta get another look when I finish the lesson.

- [String Interning](https://stackoverflow.com/questions/10578984/what-is-string-interning)

- String interning is a method of storing only one copy of each distinct String value , which must be immutable. It can be used to return string from pool memory, if it is created by new keyword.

	- Did a experiment, and saw that if a string is made with the new keyword, and it is new, then I use intern and it’ll go into the string pool! This is s cool.

### Copy with Cloneable

- Well to actually copy an object with the clone() method, you need to implement the interface Cloneable to the objects you have. 

	- There are two ways to copy an object. A shallow copy, and a deep copy.

	- Shallow copy: This is the way where you just copy all the fields. Which means, the primitives will be the same, but also, the reference addresses will be the same. If you try to change the reference in one of the cloned objects, all of them will change.

	- Deep copy: This time, there references won’t be copied. They’ll actually be created to an absolutely new object. So they won’t have anything in common, but all the primitive fields. All of the primitive fields will be the same, and the references will all not be the same.

### Clonable Demo

- I got to know how the clone able interface was implemented. All you need to do is just implement the clone able class and implement the clone method. Catch the CloneNotSupportedException and you’re done. 

	- Override the method or not, I’m not sure why you don’t need to specify the override annotation. Should go and search for this.

### What is Marker Interface?

- A marker interface is something that has no fields or methods. So it’s rather acts like metadata to the compiler or JVM. Examples are: Cloneable, Serializable, etc. 

	- There are way better alternatives for metadata. Annotations. Annotations can give great and rich metadata to the compiler or JVM. The marker interface is something old, but I’m not sure they’re not used anymore. I’m sure there’ll be better use for them rather than annotations.

	- Oh yes, I think you use get a broader understanding of metadata and get to know how to use it.

		- [Metadata](https://en.wikipedia.org/wiki/Metadata)

	- [Are marker interfaces dead?](https://dzone.com/articles/are-marker-interfaces-dead)

### Quiz 2: Cloneable Quiz

- Got nothing wrong, and I actually got the knowledge inside my head pretty nicely this time. 

## Java Virtual Machine

### Java Virtual Machine Intro

- What is the Java Virtual Machine? What is it for? Why did it come out?

- Write once, run everywhere. Because of this, cross platform was a thing!

- Memory allocation, memory acceptation, etc.

	- This is also called Memory Management.

- Garbage Collection

	- Stop the world!

- Object Finalisation finally() method

- Class loader! I just wonder what this is.

### Memory Management

- [Java 8 went from PermGen to Metaspace ](https://dzone.com/articles/java-8-permgen-metaspace)

	- [Woah, so from now(Java 8) on, the PermGen space is removed!](https://www.infoq.com/articles/Java-PERMGEN-Removed)

- [Difference between PermGen and Metaspace](https://stackoverflow.com/questions/27131165/what-is-the-difference-between-permgen-and-metaspace)

	- The difference I’ve got from the course is that PermGen has a fixed size of memory and Metaspace can change space if the OS allows it.

	- What is dynamic class(un)loading?

		- Nowadays, classes may be loaded and unloaded during the lifespan of the JVM. I heard that once the class was loaded to the JVM, it could not get unloaded. Which means it’s permanent.

	- What is the point of both PermGen and Metaspace having the java.lang.Class instances?

- The heap memory is where all the object are? And those objects get garbage collected by the garbage collector with I think that the JVM manages.

	- For this part, if the GC can’t collect enough memory that the system needs, the JVM or GC will raise the OutOfMemory Exception. 

		- That’s why we need to try to make as less objects possible. If we use the ‘new’ keyword, that created object will go into the heap memory. 

	- The thing is, the GC doesn’t always collect the objects inside the heap. There’s a allocation order. I think a collect order will be more appropriate. 

	- 1. Young Generation 2. Old Generation 3. Permanent Generation(Dude, this is PermGem lol) => Metaspace or PermGen? In Java 8, there will be no PermGen, and meatspace will replace that memory space.

		- If the objects don’t get collected, the objects will eventually go the permeant generation. If they get collected in the early stage, that’ll be good since the memory will be free.

		- I think I need to know what we should put in each stage. Try not to make our objects go to the permanent generation since that’ll get all of our memory.

### How Can You Control the Memory?

- Well for the best thing, is to make the smallest amount of objects and make the objects weight very light. That’s the best way to make the heap memory not clog full of useless objects.

	- We also have a way to actually set the memory capacity for all the steps on GC. The allocation order, PermGen, metadata, and even all the other stages.

	- [JVM memory parameters from Stack Overflow](https://stackoverflow.com/questions/14763079/what-are-the-xms-and-xmx-parameters-when-starting-jvms)

### Quiz 3: Java Virtual Machine - Memory - Quiz

- How is memory allocated in Java? I got this wrong. I should go on the internet and see whether there’s anymore ‘exact’ flowcharts out there.

### Garbage Collection Questions

- When does an object becomes edible for GC?

	- When the program does not reference that specific object. Even the objects that use each other, will eventually get unreferenced if the program at some time doesn’t use them anymore.

- When does the GC process run?

	- When the JVM starts. I think I should put more search into over here and see whether how the JVM manages the life cycle of the GC. I think that GC cannot get destroyed in the JVM, if it does, JVM will crash anyway because the program won’t be able to get some memory.

- What is the finalize() method?

	- This is the method that the GC calls to actually finalize the object. Designate whether it’s going to get garbage collected or not.

- You can ‘request’ to the GC to do a gc with System.gc(). Remember, it won’t do it right away since it’s only a request.

### Can I Tell the JVM to Collect My Garbage?

- Yes, we can ‘request’ to the JVM with the System.gc() method.

	- Remember, it won’t ‘always’ and run right away since it’s only a request.

### What is Stop-the-world?

- When the GC does a GC, all the threads running on the program get paused. That will result to a pause on the program which isn’t a good user experience.

	- The Stop-the-world method is actually easy to implement and fast. But to make the program not stop, there are other GC methods like incremental and concurrent methods.

	- Incremental method is a phase where the GC does some specific GC and takes a lot of steps. It takes long, but doesn’t stops everything.

	- Concurrent method is a phase that does the GC, but doesn’t stop the program.

	- Well there’s not much information in this course about this topic. Guess I should go and search more.

### Quiz 4: Java Virtual Machine - GC - Quiz

- When is the GC process running? 

	- I got this wrong, but I think the quality of the quizzes really suck in this Udemy course. I mean, does CPU matter in GC? GC only checks the heap ‘memory’, which doesn’t really go care about CPU usage. Well if it does, then I’d be having a great time actually getting to know that.

### What is Object Finalization?

- Saw an example over here and what it did was, implement the finalize method and called the System.gc(). 

	- You’ll see that the GC calls the finalize() method.

- Didn’t know but like System.gc, you can do System.runFinalization().

### Finalize or Finally?

- Finally, is actually the try block thing. When you open a resource like a file writer, connection, or something like that, you need to close it. 

	- I’m really not sure why we can’t just use it right away. Why do we ‘have to’ close it. Will it cause some errors? I think I should ask this.

	- Freeing up resources. The close() method does that stuff for you I guess.

	- Then we not everything have a close() method then?!

### Quiz 5: Finalization Quiz

- Got two wrong but they were really ridiculous. The developer must write the finalize method for resource handling objects and stuff. That’s all.

### What is Class Loader?

- A class loader gets the .class files and put them into the JVM memory. So that the JVM can use it and execute the byte code. 

- The class loader has 3 types. Bootstrap, Extension, and Application(System). They go by order.

	- Bootstrap: It gets the stuff from JAVA_HOME I think. The essential classes in the JDK.

	- Extension: It gets the classes in the JDK, but the ext directory.

	- Application: The actual classes that we put in the ‘classpath’. The class loader lastly gets the classes of our applications over here.

### What are the Class Loader Principles?

- Since we can implement our own class loader, there are some principles that we must know and apply. 

	- Delegation Principle

		- If a particular class is not loaded already, the class loaders delegate the request to load that class to their parent class loaders. It passes on to the top!

	- Visibility Principle

		- The Parent can’t know the classes that the child class loaders loaded but the child can know the classes that the parent class loaders loaded.

	- Uniqueness Principle

		- Only one class can get loaded of that kind.

### Quiz 6: Class Loaders Quiz

- What I learned most over here was, ClassNotFoundException and NoClassDefFoundException.

	- It’s easy when we didn’t add those classes to the class path. But the problem is, these two exceptions still occur when we actually have those classes loaded! Lets search this and see if there are any solutions over here.

### Java Virtual Machine - Wrap-Up

## Arrays

### Arrays Intro

### Arrays Overview

### Arrays Demo

### How Can You Initialize An Array?

### What are Array’s Limitations?

### What is Varargs?

### Multi Dimension Arrays

### Multi Dimensional Array - Demo

### How to Remove Duplication From Array?

### Quiz 7: Array Quiz

## Collection Questions

### Collection Framework: What is it?

### List Interface

### ArrayList Theory and Interview Questions

### ArrayList Demo - Basic

### ArrayList Demo - Using Indexes

### ArrayList - Dynamic Resizing Questions

### Quiz 8: ArrayList Quiz

### ArrayList vs Vector

### LinkedList - Theory

### Demo - When Should We Use Linked Lists?

## Collections Iterators

### Why Should We Use Iterator?

### Iterator Fail Fast Principle

### Iterator Fail Safe Principle

### Iterator vs ListIterator

### Quiz 9: Iterator Quiz

## Maps

### Maps Intro

### Map Interface Overview

### Hash Map Basic Demo

### Using the Same Key and Null on HashMap - Demo

### HashMap vs HashTable

### Map Basic Interview Questions & Answers

### Quiz 10: Maps Basic Quiz

### Why equals() and hashcode() are So Important?

### HashMap Internal Implementation

### HashMap Load Factor and Capacity - Q&A

### Quiz 11: Advanced HashMap Quiz

## Java Puzzels

### Puzzle Intro

### How to Iterate 2D Array In a Spiral Way?

### How to Iterate 2D Array In a Spiral Way? - Code Demo

### How to Find Maximum Share Profit?

### How to Find Maximum Share Profit - Solution

## Interview Process - Bonus Section

### Interview Process - Intro

### Phone Interview

### Computer Interview - At Home

### Technical Written Interview - At Office

### Computer Interview - At Office

### Face to Face Interview

### Human Resource Interview

### Making a Decision!

### Interview Process Wrap-Up

## Wrap-Up

### Course Wrap Up - Thank You!

