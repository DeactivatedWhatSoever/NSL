# Hadoop: The Definitive Guide
I need to know where all it started. The ‘it’ in here is Big Data, and we get to start with Map Reduce frameworks. And the most important and knowable of them is Hadoop. I’ll get to know YARN, HDFS, and all that stuff from this. Which is mostly the base knowledge of doing big data processing. 

This book also has a lot of parts same as the Spark book. So let’s get them written down.

1. Hadoop Fundamentals
2. MapReduce
3. Hadoop Operations
4. Related Projects
5. Case Studies

As you can see, you should just look at this book until part 3. All the related projects and case studies should be read when you really need them. Let’s go!

## Meet Hadoop
It’s just the start. Let’s try and get this done and focus on administration, storage, and computing. 

### Data!
This section is just an overview of the data fledging world we are in. On the thought of that, I wondered how much data it would take to actually record all the sounds, a video of what I see actually takes up. And what could we do with that? There are so many potentials in data. The important thing is how are we going to store it, and analyze it.

### Data Storage and Analysis
In Big Data, data storage and analysis are the things that we need to do. We need to make a pipeline to stream and save all the things we need. We need to make the data clean so we can analyze the data and get some insight from it. But the thing is, we need a system that does these two things. That’s where Hadoop comes in. If we have too much data, then it won’t be easy to read it as fast as we want. But if we make the disks parallel, like the shards for each disk, then we’ll be able to read the data in parallel. This is something like RAID(You should find about this), but in Hadoop, HDFS(Hadoop Distributed File System) does this. 
 After, we need to aggregate the data, transform the data and stuff. That’s when MapReduce comes in. We map, then do this and that, and then we reduce. We’ll get a better understanding later. I kind of get the concept now.

### Querying All Your Data
Querying `all` your data and getting it in a `reasonable` time is a really important aspect. If we have to do this and do that and could never get the data we want, that’ll be so useless. We need to get the answers of a question ASAP or else we won’t be able to decide things without intuition. Or our guts to paraphrase. 

### Beyond Batch
MapReduce is fundamentally a batch processing system. It’s not suited for interactive analysis. Which means, if you want to get data you need to wait. Well anyways, HBase came out that runs on HDFS and does this and that. It’s actually a database that’s used for making applications. Also, new processing models came out because of YARN(Yet Another Resource Negotiator). It made Hadoop able to run other batch processing methods on top of HDFS!
Which are:
* Interactive SQL
* Iterative processing
* Stream processing
* Search

### Comparison with Other Systems
Didn’t know Hadoop wasn’t the first to have a distributed system and does analysis! Let’s find out

#### Relational Database Management Systems
So they both want to be alike. But Hadoop mostly adapts a lot of stuff from RDBMS. Its transactions, fast querying, all that stuff are done by projects like Hive. Oh, and I don’t know the exact reason but, it’s cool that Hadoop’s performance is actually linear. If it has a lot of machines in the cluster, the more faster you’ll get the data processed.

#### Grid Computing
MPI(Message Passing Interface), SAN(Storage Area Network), HPC(High Performance Computing) and all that stuff, but I didn’t really get this part. Not really know what these are. Need to find out.

### Volunteer Computing
Cool! SETI@home gets CPUs and resources from idle computers! That’s really really cool. I wonder how they pulled that distributed computing stuff off. Hadoop and SETI are like the opposite. I want to know how they implemented such thing. Of course the client program will be really important and performance intensive.

### A Brief History of Apache Hadoop
Hadoop is actually just a made-up name. It's actually a doll that the creator’s(Doug Cutting) daughter played with. It resembles a yellow elephant. That's why it's an elephant!
 So to say exactly, GFS(Google File System) started everything, and they needed a way to process data. So then they put `MapReduce` to the world. A distributed way to process data. 
 So `MapReduce` is actually just a specification. A great implementation is Spark, and Hadoop's `MapReduce`.

### What's in This Book?
I'm just thinking of reading Hadoop Fundamentals and MapReduce. Also some Related Projects like Spark and HBase. The components for realted projects are:
* Data Formats
* Data Ingestion
* Data Processing
* Storage
* Coordination

#### Hadoop Fundamentals
* Meet Hadoop
* MapReduce
* The Hadoop Distributed Filesystem
* YARN
* Hadoop I/O

#### MapReduce
* Developing a MapReduce Application
* How MapReduce Works
* MapReduce Types and Formats
* MapReduce Features

#reading/books