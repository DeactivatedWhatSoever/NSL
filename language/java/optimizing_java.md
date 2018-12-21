# Optimizing Java
Practical techniques for improving JVM application performance. I’ve always wanted to know what we could actually optimize. If we know all of this, then we could use this knowledge to actually optimize Scala, Kotlin, and other JVM based languages. Well, the most important thing is to actually ace the interview. So I need to read this really carefully, and try to understand it as best as possible. 

# Optimization and Performance Defined
Performance is defined by people. We need to experiment whether that metric's value is really optimal or not. It could be very psychological. It's about how the end users and stakeholders `feel` about that certain number. 
 I think a good example would be animation in web or mobile. If a transition occurs more than 300ms, people tend do think it's very slow. Or a request that takes more than a second. It'll sure make them think that the server is slow or whatever. 

## Java Performance - The Wrong Way
Most of the people got some bad advice from highly ranked performance blogs. Of course this book's advice will change through time. It'll change of how the JVM evolves. So we need to get some skills like:
* Performance methodology within the overall software lifecycle
* Theory of testing as applied to performance
* Measurement, statistics, and tooling
* Analysis skills (both systems and data)
* Underlying technology and mechanisms

Misconceptions about performance:
* No magic “go faster" switches for the JVM
* No "tips and tricks" to make Java run faster
* No secret algorithms that have been hidden from you

If there were, people would try to let everyone know and there'll be so many best practices blogs everywhere writing about this. 

## Java Performance Overview
Managed subsystems: JVM, GC
This leads to runtime complexity. But it's for developer performance.
 Statistics have its flaws and we have to think about that before we apply all the assumptions about performance in JVM applications. We also need to have caution about the quantum theory of measuring performance. 

## Performance as an Experimental Science
The reason performance measuring is experimental science:
* Defining the desired outcome
* Measuring the existing system
* Determining what is to be done to achieve the requirement
* Undertaking an improvement exercise
* Retesting
* Determining whether the goal has been achieved

Since it's experimental, we need to get a grasp on statistics real quick. I can't believe all the things that I'm studying are screaming out “JUST STUDY STATISTICS ALREADY!” lol. I'd better go start ...

## A Taxonomy for Performance
Basic performance metrics:
* Throughput
* Latency
* Capacity
* Utilization
* Efficiency
* Scalability
* Degradation

### Throughput
Represents the rate of work a system or subsystem can perform. As an example, TPS, QPS, etc. 
 To make throughput performance tests to be meaningful, it needs to be consistent. The environment that you're running the tests on, the units of work you're trying to use, all of that must be consistent to actually get a meaningful throughput performance test.

### Latency
The time taken to process a single transaction and see a result. Normally: end-to-end time. 
 Latency will be dependent of workload. If the workload is high, which means high contention and so much stuff to process(concurrent), the latency will obviously be slow. So it'll be good to test it with a nice throughput right? They're both in this together!

### Capacity
It's related to throughput and latency. It'll be trying to find the maximum throughput, a decent latency(psychological), and the maximum of both would be the capacity of the system.

### Utilization
This is about achieving effective usage of system's resources. Optimizing the thread size for CPU or IO bound computations.

### Efficiency
Dividing the throughput of a system by the utilized resource gives the measure of the overall efficiency of the system.

throughput / utilized resource = efficiency
This much resources gives this much throughput. That'll tell you  how efficient the system is.

### Scalability
The throughput or capacity of a system depends upon the resources available for processing. The means by scale is, whether if you add the desired amount of resources, the system will perform as that much. 
 The holy grail is achieving linear scalability. It's like the Hadoop cluster that actually got it. That's our goal! 

### Degradation
This is really related to utilization. If we give more traffic, we'll obviously get degraded throughput and high latency. This is degradation.

### Connections Between the Observables
There are a lot of connections between the above metrics. We should draw a map of it!

## Reading Performance Graphs
* Performance elbow
* Near-linear scaling
	* Amdahl's Law
* Degrading latency under higher load

## Summary
* What Java performance is and is not.
* Experimental science and metrics.
* How to read performance graphs.

#reading/books