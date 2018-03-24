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

### Memory Management

### How Can You Control the Memory?

### Quiz 3: Java Virtual Machine - Memory - Quiz

### Garbage Collection Questions

### Can I Tell the JVM to Collect My Garbage?

### What is Stop-the-world?

### Quiz 4: Java Virtual Machine - GC - Quiz

### What is Object Finalization?

### Finalize or Finally?

### Quiz 5: Finalization Quiz

### What is Class Loader?

### What are the Class Loader Principles?

### Quiz 6: Class Loaders Quiz

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

