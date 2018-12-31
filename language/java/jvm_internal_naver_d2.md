# JVM Internal
[NAVER D2](https://d2.naver.com/helloworld/1230)
NAVER D2 has a lot of great articles about Java. I think it’s time to actually read them and get a grasp of the JVM and GC. I’ve left this stuff for too long. 

The thing you have to catch is, thinking about the JRE first. Since it’s the Java Runtime Environment, you need to know what it has. It has the runtime, JVM(Java Virtual Machine), and some native APIs(classes) that are needed in runtime. So when the runtime starts, the JVM loads the native APIs first.

## Virtual Machine
* Stack based virtual machine
	* Computer architectures like x86 and ARM have `register` based architectures. I wonder … Gotta go find out about Stack vs Register based!
* Symbolic reference
	* Excluding the primitive types, the VM references the objects and interfaces with symbolic references instead of memory address based references. Gotta go find about this too!
* Garbage collection
	* The users make objects, and they are destroyed by the GC.
* Platform independence of primitive types
	* C/C++ aren’t independent from the platform they’re run in. You can see it from 32bit and 64bit architectures how the primitive types range actually changes.
* Network byte order
	* Little endian, big endian. Because of platform independence, the network flow must come in with a certain number of bytes. The size of the bytes need to be static. So the little endian will be dynamic right? Gotta check this out too. 

## Java Byte Code
Getting the byte code.
* `L`: class instance
* `V`: method return type

Class files are in binary. So if you want to see the disassembled code, use `javap`. People call this `Java Assembly`.

Method invocation operation code:
* `invokeinterface`: invoke interface method
* `invokespecial`: invoke constructor, private, super class method
* `invokestatic`: invoke static method
* `invokevirtual`: invoke instance method

So the numbers of the results of `javap -c` is actually byte numbers. It can go until 256, and I don’t know that reference. Anyways, things like `aload_{number}` don’t need operands, but things that need invocation need 2 bytes of operands. That’s why the number suddenly goes up by two bytes. 

## Class File Format
65535 method length limit. But why?! 

Class file structure:
```java
ClassFile {  
u4 magic;  
u2 minor_version;  
u2 major_version;  
u2 constant_pool_count;  
cp_info constant_pool[constant_pool_count-1];  
u2 access_flags;  
u2 this_class;  
u2 super_class;  
u2 interfaces_count;  
u2 interfaces[interfaces_count];  
u2 fields_count;  
field_info fields[fields_count];  
u2 methods_count;  
method_info methods[methods_count];  
u2 attributes_count;  
attribute_info attributes[attributes_count];  
}
```

`0xCAFEBABE`: It tells the computer that this is a java class file! 

You can get a whole lot of more information from the `javap --verbose` command. 

There’s a whole lot of test cases that actually tests the implementations of the JVM specification. It’s called TCK(Technology Compatability Kit).

## JVM Structure
Java Source (.java) -> Java Compiler (javac) -> Java Byte Code (.class) -> (Inside the JVM) -> Class Loader + Execution Engine -> Runtime Data Areas

## Class Loader
Didn’t know the class loader loads classes lazily. 
* Hierarchy structure
	* The class loaders have hierarchy and the parent of them all is Bootstrap class loader.
* Delegation model
	* It delegates the hierarchy whether the hierarchy has the class or not. It keeps on going until it finds it. 
* Visibility restriction
	* The children class loaders cannot look at the parents
* Can’t unload
	* If you want to load new classes, you can delete the class loader that actually loaded the classes. And then you create a new class loader.

Hierarchy of the class loaders
1. Bootstrap Class Loader
	1. Created when the JVM first runs. This class loader is implemented in native code and it loads Object classes and Java APIs
2. Extension Class Loader
	1. Extension classes … These classes are mostly involved with security. 
3. System Class Loader
	1. So the bootstrap and extension class loaders loads the elements of JVM itself, but this dude loads the applications classes. $CLASSPATH comes in here!
4. User-Defined Class Loader
	1. Yep, user-defined stuff. But I wonder, the stuff in the class path is used defined anyways right? Gotta get to know this.
5. … -> User defined

How the class loader loads!
1. Load: Gets the class from the file and loads it on to JVM memory.
2. Verify: See whether it’s legit java code. The TCK mostly thinks about whether the JVM loaded legit classes.
3. Preparing: Prepares the memory needed, and gets the data structures to represent fields, methods, and interfaces.
4. Resolving: Converts all symbolic references to direct references.
5. Init: Initializes the class variables to an appropriate value.

## Runtime Data Areas
It’s actually the allocated memory on top of the OS to execute the JVM. 

The Runtime Data Areas have:
* Isolated Threads
	* PC Register
		* All the threads have this. It has the address of the JVM’s command.
	* JVM Stack
		* All the threads have this. It’s the famous `printStackTrace` dude.  It prints out the `stack frames`. The JVM just pushes or pops the JVM stack frames into this stack. 
		* Local Variable Array
			* This array has all the references to the local variables. 0 starts with the class instance reference, `this`. And then the parameters sent to the method, and the local variables inside the method.
		* Operand Stack
			* The actual studio of the method body. 
		* Reference to Constant Pool
	* Native Method Stack
		* All the JNI(Java Native Interface) stuff comes in here. Stuff that aren’t implemented in Java. The stuff that’s implemented in a self memory managing language, C/C++. 
* All the other threads share!
	* Heap
		* It has all the objects in here. Things that are garbage collected. The structure of the heap and GC algorithms are different from vendors. It’s the place where all the performance stuff is most attached with.
	* Method Area
		* Runtime Constant Pool
			* This dude has all the references of the interface constants, methods, and instance variables!

## Execuition Engine
1. Class loader loads the classes
2. The memory is allocated inside the runtime data areas
3. Executed by the execution engine. 

There are two types of execution:
* Interpreter
	* This just executes the code one by one. One line at a time, that’s the worst part about it. The execution time will be O(n), and all the interpreter languages have this problem. But still, isn’t it fast enough?
* JIT(Just-In-Time)
	* This just compiles all the byte code into native code. So you don’t need to interpret, you just need to execute. But of course the compile time will be a big longer than the interpreting time. If the code is only executed once, then interpreting would be better. But if the code is executed multiple times, then JIT will work better since it caches all the code too!

#reading/articles