# Seven Concurrency Models In Seven Weeks
## Introduction
It’s just the introduction of the concurrency models we’re going to focus on. 

### The most interesting part was, Moore’s law. Because of this, we only get more of CPU cores and not making a single core work faster.

- Because of this, we can’t just wait for hardware to get better. We need to use these multiple cores and write our code to run faster by using them.

### Concurrent or Parallel?

- Related but Different
	- Parallelism: Doing a lot of things at once.
		- I have a task that I’m doing and I have a lot of help!
	- Concurrency: Dealing with a log of things at once.
		- I have a lot of tasks to do at once!
- Beyond Sequential Programming
	- The great point of coding nowadays. Doing everything sequential, one thing after another.
	- Said something about nondeterminism. I think the meaning of this is, that when I do parallel things, the events that occur won’t be always the same? Well duh, it will be the same but it won’t finish on the same time. So you’ll have to think of that.

### Parallel Architecture

- Bit-Level Parallelism
	- So the CPU can consume some bits. The 32bit architecture would consume 32 bits for each operation. It was 8 bits in the past. So there are some limitations of just making the numbers up. We haven’t learned right now, but they say they’re going to tell us.
		- Could I do a guess? It would be harder to process too many bits for the CPU? Since the spinning speed won’t get that faster, which means it won’t be able to do all the big computations.
- Instruction-Level Parallelism
	- So in the instruction level of a CPU computation, it’s getting parallel. I don’t know how, but they’ll tell us in the memory visibility section.
- Data Parallelism
	- SIMD(Single Instruction, Multiple Data). I wonder what the algorithm is for doing parallel tasks. Like, how many threads should you create in parallel to do computation on such a size of data. This is really hard to think.
		- What would be the right number? How would that number be calculated?
- Task-Level Parallelism
	- Task-level is like, processes? I guess. Yeah, multiple processors. But the thing is, it comes with distributed computing over here. Since we have to know where the memory, and how much the memory is used.
		- Shared memory vs distributed memory. If the memory is inside just one dude, then it’ll be easy since you don’t have to think about much. But what if your program is in a lot of memory cards? Okay, that’s the thing.

### Concurrency: Beyond Multiple Cores
- Concurrency is just more than doing parallelism well. It’s more about responsive, fault tolerant, efficient, and simple software.
	- What is fault tolerant? It’s something called “UNSTOPPABLE!!!”. An unstoppable software!
- Concurrent Software for a Concurrent World
	- Everything executes at the same time. So the best way to write software, is to make it concurrent. Everyone can listen to music while tapping it and playing games and stuff. Concurrent! But to make it concurrent as possible, we need to use parallelism.
- Distributed Software for a Distributed World
	- Yep, just talking about availability zones. Multiple datacentres! Hooray!
- Resilient Software for an Unpredictable World
	- Self healing software. That’s the point!
- Simple Software in a Complex World
	- Rather making one thread so complex, why not make a lot of threads that are simple tasks?
	- The thing that I learned over here is that, there are good tools that can make a big sequential task into way faster and easy tasks!

### The Seven Models
- Threads and locks
- Functional programming
- The Clojure Way-separating identity and state
- Actors
- Communicating Sequential Processes(CSP)
- Data parallelism
- The Lambda Architecture
- Questions that you should ask when you read each chapter
	- Is this model applicable to solving concurrent problems, parallel problems, or both?
	- Which parallel architecture or architectures can this model target?
	- Does this model provide tools to help you write resilient or geographically distributed code?

## Threads and Locks
I guess this dude is the oldest and most clunky solution for concurrency after all. But it still gets the job done right?

### The Simplest Thing That Could Possibly Work
Yep, threads and locks are the simplest things that can work since every language supports it. It’s the most closest component of how a hardware works. Process and threads! So that’s the reason why it has a software abstraction for it. Well anyways, that’s the problem. Since it’s so raw, programmers tend to implement software with threads in the wrong way. And that means low maintainability. 

### Day 1: Mutual Exclusion and Memory Models
The concurrency problems with threads are: race conditions, deadlocks, and side effects of shared memory. Obviously, race conditions are described for sequential concurrency problems. Deadlocks, would be for high contention of a lock. So it’ll lock forever since there’s too much going on in the thread. If a deadlock exception occurs, it’ll just hand it to the next. That how it should go, or else it’ll never get executed and boom! 
 I think mutual state from shared memory is going to be a really huge problem. It’s because of that we lock stuff. Shared memory! 

#### Creating a Thread
```java
public class ThreadLock {
    public static void main(String[] args) throws Exception {
        Thread myThread = new Thread() {
            public void run() {
                System.out.println("Hello from new thread");
            }
        };

        myThread.start();
        Thread.yield();
        System.out.println("Hello from main thread");
        myThread.join();
    }
}
```

Yield is just giving away its authorities to someone else. Well if the thread does a yield, then it gives a hint to the scheduler that the current thread is willing to yields its current use of a processor. So it’ll give its CPU to another thread. That means `myThread` could be executed first. 

#### Our First Lock
If several threads access the same shared memory, problems start from there. So we use `mutual exclusion` via locks. Locks will make only one thread get control of that shared memory. 
 We got a race condition with the `Counter` example. Counting a number with two threads that access the same object. 
 The first solution for solving this is using the `synchronized` keyword. It’s called an `intrinsic lock`. It’s also referred as `mutex`, `monitor`, or `critical section`. It’ll solve the race condition issue since only one thread is aloud to execute the synchronized method. But what does the other thread do when it’s blocked? What kind of queue is it inside? That’s something what I want to know. Well anyways, they say there’s another huge problem.

#### Mysterious Memory
The memory I allocated sometimes might not be the value I want because of the reordering optimization? What is it reordering anyway?
* The compiler is allowed to statically optimize your code by reordering things.
* The JVM is allowed to dynamically optimize your code by reordering things.
* The hardware you’re running on is allowed to optimize performance by reordering things. 
Didn’t know shared-memory parallel computers depend heavily on the optimization behavior.
 We need something to tell us what we can and cannot rely on. The Java memory model will tell us!

#### Memory Visibility
The Java memory model gives information whether the memory was changed from thread A to other threads. So all the threads know that memory is changed by that thread. 
1. We can just use a `intrinsic lock` for all the read and write operations
2. Starting a thread, detecting that a thread is stopped with `join()`
3. Using the classes from the `java.util.concurrent` package. 

#### Multiple Locks
If we get to actually think about this, we could just use `intrinsic lock`s for everything. But of course the real world won’t be that simple, and that won’t be they way. 
 If we make too many locks, all the threads will be waiting forever. But if there are too many threads waiting, and too many locks, a deadlock will occur. Let’s take an example of a deadlock from a great academic example. 
 Which is called the `dining philosophers` problem.

“Deadlocks occur whenever a thread tries to hold more than one lock.”
Solution: Always acquire locks in a fixed, global order.

If you use an identifier for an object, you’ll be able to lock objects that are different. So you don’t get to lock the same object! Remember, deadlocks occur when it locks the same object more than once. So an object shouldn’t get locked twice! 
 Oh, and you can’t use hash codes to identify your objects. Those hash codes can be more than two sometimes, so it’s not good!

#### The Perils of Alien Methods
You can make a thread lock by calling an alien method. If you have an object inside your object, and you call that object’s alien method inside your synchronized method, there could be a thread lock inside your alien method. If that is the case, then a deadlock occurs. A thread has more than one lock! 
 To address this issue, we make a `defensive copy` of the object that has the alien method. Which is avoid calling alien methods while holding a lock.  Just synchronize copying the object, and it’ll also minimize the time of the lock. 

#### Day 1 Wrap-Up
The standard library provides alternatives for resolving these issues!

##### What We Learned in Day 1
`intrinsic locks` are built into every java object be default. That’s why you can use the `synchronized` keyword on all of them. 
 The three primary perils of threads and locks!
* Race conditions
* Deadlock
* Memory visibility
And we’ll avoid them with the following:
* Synchronize all access to shared variables
* Both the writing and the reading threads need to use synchronization
* Acquire multiple locks in a fixed, global order.
* Don’t call alien methods while holding a lock.
* Hold locks for the shortest possible amount of time.
	* Using `intrinsic locks` with just code blocks and not the whole method. 

##### Day 1 Self-Study
Read the book and do it! Write down the answers over here with the next chapter. 

### Day 2: Beyond Intrinsic Locks
Limits of `intrinsic lock`:
* There is no way to interrupt a thread that’s blocked as a result of trying to acquire an `intrinsic lock`.
* There is no way to time out while trying to acquire an `intrinsic block`. 
* There’s exactly one way to acquire an `intrinsic lock`: a synchronized block.
 This means that lock acquisition and release have to take place in the same method and have to be strictly nested. Note that declaring a method as synchronized is just syntactic sugar for surrounding the method’s body with the following: 
```java
synchronized(this) { // method body }
```

So we get to see a better way for making locks. Using `ReentrantLock`. You can explicitly code where the lock is going to lock and when to release. Of course it’s best to release the block in a `finally` block so it actually does get released always. 

#### Interruptible Locking
If we can’t interrupt a `intrinsic lock` we can’t recover from a deadlock. But, when we have ways to interrupt, or give a timeout, there won’t be deadlocks! 

**Is There Really No Way to Kill a Deadlocked Thread?**
> Yep, there’s no way to kill a deadlocked thread. All you can do is throw an `InterruptedException` or just `return` in the `run` method. There’s no other way but to kill the JVM.  

Now let’s see how we can interrupt a deadlocked thread!
```java
final ReentrantLock l1 = new ReentrantLock();
final ReentrantLock l2 = new ReentrantLock();

Thread t1 = new Thread() {
	public void run() {
		try {
			// If you call Thread.interrupt(); it'll interrupt!
			l1.lockInterruptibly();
			Thread.sleep(2000);
			l2.lockInterruptibly();
		} catch (InterruptedException e) { sout("t1 interrupted"); }
	}
};
```

#### Timeouts
`ReentrantLock` lets us make timeouts when trying to acquire a lock. The key is, giving timeouts when trying to `acquire` a lock. We can solve the `dining philosophers` in an alternative way!

In this example, we use `tryLock(time, TimeUnitType);` instead of `lock()`. This will not make deadlocks forever. But if this gets really intensive, it could make `livelocks`. Which means, since we keep on timing out, we’ll timeout forever. And if they timeout at the same time, it’ll be a deadlock again. To solve this issue, we could make some sort of formula for the timeout. Like making it wait for exponentially, and when it doesn’t work, just destroy it when it really doesn’t work. Then, we’ll get enough resources to do other important stuff. 

#### Hand-over-Hand Locking
This really is cool. It’s for data structures. We have a list for instance, we want to put in some stuff or delete or whatever to that list, but if it gets locked, we ‘ll get a deadlock on the list. So to make it concurrent, there are portions of the list that gets locked or not locked. Which means you can just lock a portion of the list! How cool is that!

[ConcurrentSortedList Implementation](http://media.pragprog.com/titles/pb7con/code/ThreadsLocks/LinkedList/src/main/java/com/paulbutcher/ConcurrentSortedList.java) -> You can see the implementation over here!

#### Condition Variables
Okay, there’s times when you need conditional variables to do this and that. But that condition is actually shared and a lot of threads could use that!
```java
ReentrantLock lock = new ReentrantLock();
Condition condition = lock.newCondition();

lock.lock();
try {
	while (!{{conditionIsTrue}})
		condition.await();
		{{useSharedResources}}
} finally { lock.unlock(); }
```

[Philosophers Dining with condition variables](http://media.pragprog.com/titles/pb7con/code/ThreadsLocks/DiningPhilosophersCondition/src/main/java/com/paulbutcher/Philosopher.java)

We have to make, checking a boolean atomic, and also the boolean being evaluated to be atomic too. So we can use the `condition.await()` function to check whether it’s changed or not. `await()` unlocks the table!

#### Atomic Variables
With `Atomic<Type>` variables, we can make an operation atomic! Which means, when the variable does some computation, that computation is done locked! So getting and increment, will be one operation. Just like a database transaction. 

**What About Volatile?**
Volatile is actually not used nowadays. It just makes the compiler not optimize the variable. That means the reads and writes to that variable will not be reordered. 
 If you ever get to use this, think again and changing it to atomic classes instead.

#### Day 2 Wrap-Up
* java.util.concurrent.locks
* java.util.concurrent.atomic

##### What We Learned in Day 2
We used the `concurrent` package to get over the limits of `intrinsic locks`.
* Be interrupted while trying to acquire a lock
* Time out while acquiring a lock
* Acquire and release locks in any order
* Use condition variables to wait for arbitrary conditions to become true
* Avoid locks entirely by using atomic variables

##### Day 2 Self-Study
Read the book and do it! Write down the answers over here with the next chapter. 

### Day 3: On the Shoulders of Giants
The `concurrent` package also has some data structures and utilities! Let’s see what there are. 

#### Thread-Creation Redux
```java
public class EchoServer {
    public static void main(String[] args) throws IOException {
        class ConnectionHandler implements Runnable {
            InputStream in;
            OutputStream out;
            ConnectionHandler(Socket socket) throws IOException {
                in = socket.getInputStream();
                out = socket.getOutputStream();
            }

            public void run() {
                try {
                    int n;
                    byte[] buffer = new byte[1024];
                    while (n = in.read(buffer) != -1) {
                        out.write(buffer, 0, n);
                        out.flush();
                    }
                } catch (IOException e) {}
            }
        }

        ServerSocket socket = new ServerSocket(4567);
        while (true) {
            Socket socket = server.accept();
            Thread handler = new Thread(new ConnectionHandler(socket));
            handler.start();
        }
    }
}
```

The thread pool comes in!!!
```java
int threadPoolSize = Runetime.getRunetime().availableProcessors() * 2;
ExecutorService executor = Executors.newFixedThreadPool(threadPoolSize);
while (true) {
		Socket socket = server.accept();
		executor.execute(new ConnectionHandler(socket));
}
```

#### Copy on Write
Remember that we did a defensive copy when we tried to write on the array list of listeners? This can be solved by `CopyOnWriteArrayList`! Dang this really is good. 

**How Large Should My Thread Pool Be?**
Dang, the process number is the thread pool number! I just thought there would be some other formula lol. Anyways, if you want to optimize your thread pool, you have to actually load test.

#### A Complete Program
A concurrent queue is ideal to be used for implementing a producer-consumer pattern. The queue will block when you have too many items, or when it has no items. 

**Why a Blocking Queue?**
`BlockingQueue`, `ArrayBlockingQueue`, `ConcurrentLinkedQueue`. If we use a `ConucrrentLinkedQueue`, it’ll be an unbounded, wait-free, and nonblocking-queue. But wait-free isn’t a good attribute when you are implementing producer-consumer patterns. If one of the producers or consumers get too fast of what they’re doing, they’ll have to wait too much or the consumer will overflow. So it’s best to make those two things have optimal numbers for each other. 

`page.isPoisonPill()` -> It detects whether the queue is empty or not. Checking when to block the queue.

I can’t believe `synchronized colletions` don’t give atomic read-modify-write methods! So we’ll have to use a faster collection and do the read-write by ourselves. Which means locking!
 Okay, we get another problem over here. If we use a lot of threads, then the contention rate will sky rocket. Too much contention will leave the hash map to always locking. Most of the operations will be waiting all the time instead of actually doing something.
 To solve this issue, we use `ConcurrentHashMap`! No matter how much contention it has, it’ll do the operations wait-free I guess? 
 Use `putIfAbsent` and `replace`. 

When you actually build a parallel computing piece of software, you have to check its performance with how many cores, and how many threads you have. It will first increase speed linearly, because that makes sense. But when it gets to a certain number of threads, it’ll get slower because of the contention of the data we’re accessing. So you have to find the optimal number. 

#### Day 3 Wrap-Up
End of threads and locks!

##### What We Learned in Day 3
The `concurrent` package lets us program concurrent programs easily, but also safer and more efficient by the following:
* Using thread pools instead of creating threads directly
* Creating simpler and more efficient listener-management code with `CopyOnWriteArrayList`
* Allowing producers and consumers to communicate efficiently with `ArrayBlockingQueue`
* Supporting highly concurrent access to a map with `ConcurrentHashMap`

##### Day 3 Self-Study
Read the book and do it! Write down the answers over here with the next chapter. 

### Wrap-Up
Since threads-and-locks are so common, it’s hard to get it right. There’s so many people who use it wrong. So let’s understand the points and get it right!

#### Strengths
Threads are actually really close to hardware. Because of that, most of the languages have it, and it’s easy to integrate it. Well, it’s actually just broad applicability. 

#### Weaknesses
* Threads don’t have direct support for parallelism. To support it, you have to make a thread pool yourself or whatever. And make shared memory operations all atomic.
* Threads and locks only support shared-memory architectures. Which means, we can’t do stuff with distributed memory and geographical distribution or resilience solutions. 
* It’s hard to program in. Also we have less help. 

##### The Elephant in the Room
Writing is hard, and god damn testing is really hard! There’s no way to see whether the two threads synchronously accessed the shared memory and had no problems with it! You could stress test it, but that doesn’t mean it’s right when the test passes. It’s just luck!
 When you saw the deadlock on the JVM, you couldn’t know. It doesn’t event spit out an exception. It just runs there forever lol. If that happens, we need to restart the server to free up the memory. In other words, we won’t know forever!

##### Maintenance
First of all, multithreaded code is hard. So we write tests that aren’t really testable. So we have to get to change the code, we don’t even know whether it works properly since the tests don’t really stand that this is right or not. So all we can do is think `too` much. This isn’t maintainable and scalable. Too much time!

**Picking Through the Wreckage**
Even if the server crashes, we have no way to debug if we have no information. So we try to investigate the dying message, and then log everything we can! And hope that we can solve it the next time when we get the same error. 

#### Other Languages
`Java Concurrency in Practice` -> The author of the `concurrent` package wrote this book lol. Let’s take a look when we want more! Or need more. 
 Memory reordering, the java memory model, I think I need to find things out about this!

#### Final Thoughts
Since it’s so close to hardware, I think threads and locks will be with us for a long time in the future. 

#reading/books