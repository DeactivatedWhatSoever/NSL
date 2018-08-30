# Functional Programming Principles in Scala
The reason I’m taking this course is because of the knowledge that I need to program with a functional mindset. I need to know how to calculate and compute stuff in lambda, passing and returning behavior around, all that stuff. Trying to make everything immutable etc. 
 The next course to take is `Functional Program Design in Scala`. It’ll help me get to know how to design functional programs. How to build from top and how to actually design code that is functional. I should go and learn how to write tests while doing this. If I don’t I think I’ll keep on not doing that stuff. 

## Week 1
In this week, I think it’s just the basics. Like just getting all the development environment setup and having a go with the Coursera LMS and stuff. I think it’ll be easy, but the second section of week 1 isn’t going to be easy since there’s a lot of lectures and stuff are out there. The `Getting Started` part also has a lot of stuff to do. Especially the reading materials. There’s tons of them! Better get started with this!

### Getting Started
Just getting started by installing `sbt`, which is the Scala build tool. I’ve used it, but it’s extremely slow compared to Maven and Gradle. Well, Gradle  isn’t that fast either but still, it’s slower than Gradle! After that, I need to have a go by importing a Scala project in IntelliJ and write some code and some tests! Great. Well I want to do this, but I have had too much power on finishing the Scala Official Documentation. I’ll start soon, but I have to recharge by studying some things that I actually want. See yeh later. I’ll BRB(Actually I’m going to study some network, which is the real dope thing that tinkers by curiosity, so yeah, I need to get some rest dude! By studying the things that I want!)!

#### Cheat sheet
[progfun-wiki/CheatSheet.md at gh-pages · lampepfl/progfun-wiki · GitHub](https://github.com/lampepfl/progfun-wiki/blob/gh-pages/CheatSheet.md)
-> Yep, just a cheat sheet that will help me get along with Scala!

Why doesn’t Scala have static members?
-> Gotta go find out! Maybe because of singleton Object’s in Scala?

Packages in Scala
* Yeah, I figured. Java can only import classes, but Scala can important `anything`
* Which means, it’s like Python. But how should I utilize this feature in a good way? How to make code readable? I’m not sure. There’s too much freedom.

Entry point of Scala
* Do I have to write this down? Well I don’t think I need to write the code down. 
* The entry point of Scala must be an object, and it must extends the `App` class or define a `main` function with `args: Array[String]` as an argument. 

How does Scala guarantee an object to be single?
-> Well couldn’t find a good explanation so I’ll leave this for another day of research.

#### Source Files, Class files and the JVM
“Typically Scala programmers create one source file for each class, or one source file for a class hierarchy: In fact, Scala allows multiple classes and objects to be defined in the same source file.”
-> Thought about this statement. Yes, Java can only have one parent class in one file. But Scala can have a lot. Like a whole program in one file. But is that a good thing? I don’t know. You can actually put in a whole hierarchy of a class inside one file. Well I pretty much agree on this one. You don’t need to create a whole bunch of files to make a hierarchy. And when you make a hierarchy, you know that class should be used like that. Not just extends anything. 

An important thing to know here is, how Scala works with the JVM. The Scala compiler will make the *.scala files into *.class files. The class files will be stored into a directory, and that directory is called a `classpath`. Where all the classes are stored in it’s packaged form. The JVM will execute the class files stored in the `classpath`. 

#### Scala Styles
[Scalastyle - Scala style checker](http://www.scalastyle.org/)
-> I think I should go and say two things. Try to make GItHub master branch really clean. Also, Scala style! 

### Functions & Evaluation


## Week 2

## Week 3

## Week 4

## Week 5

## Week 6

#mooc