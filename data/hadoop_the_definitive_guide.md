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

## MapReduce
It’s a programming model for data processing. Map all the data in parallel, and then aggregate, which is reduce.

### A Weather Dataset
Okay, we’re going to make an example app with weather! Okay, but the problem is, I don’t think this chapter’s a follow around thing. It doesn’t tell us what to do actually step by step. 

#### Data Format
It’s just weather data from NCDC.

### Analyzing the Data with Unix Tools
I love unix tools :)
```sh
#!/usr/bin/env bash*
for year in all/* do
echo -ne `basename $year .gz`"\t" gunzip -c $year | \
    awk '{ temp = substr($0, 88, 5) + 0;
           q = substr($0, 93, 1);
           if (temp !=9999 && q ~ /[01459]/ && temp > max) max = temp }
         END { print max }'
done
```
That’s how it looks like!

Hard things!
1. Dividing the work into equal-size pieces
2. Combining the results from independent processes may require additional processing
3. You are limited by the processing capacity of a single machine. -> Question! What about software threads? What if you spawn 100 of them!

### Analyzing the Data with Hadoop
So, we need to convert the job above, into a MapReduce job.

#### Map and Reduce
So, there’s some key-value pairs that actually indicate map and reduce. Well I don’t really get the insides, but I’m sure MapReduce does all the things that are in the 3 things mentioned above. 

#### Java MapReduce
So the mapper, it has an input key, input value, output key, and output value. The reason for the keys are because of Hadoop to know which machine is computing what. 

The result: 
Skipped the mapper and reducer.
```java
public class MaxTemperature { 
	public static void main(String[] args) throws Exception { if (args.length != 2) { 
      System.err.println("Usage: MaxTemperature <input path> <output path>");
      System.exit(-1);
    }
Job job = **new**Job(); job.setJarByClass(MaxTemperature.class); job.setJobName("Max temperature"); 
FileInputFormat.addInputPath(job, **new**Path(args[0])); FileOutputFormat.setOutputPath(job, **new**Path(args[1])); 
    job.setMapperClass(MaxTemperatureMapper.class);
    job.setReducerClass(MaxTemperatureReducer.class);
    job.setOutputKeyClass(Text.class);
    job.setOutputValueClass(IntWritable.class);
System.exit(job.waitForCompletion(**true**) ? 0 : 1); } 
} 
```

### Scaling Out
In the last example, it was just inputting a file and outputting a file. It’s just a trivial example, but in the real world, we don’t use Hadoop like that. We put in massive input, and produce massive output. To do that, we need to store the input and output inside a file system that’s capable. That file system will let Hadoop distribute the data, and the application or jobs that are running will be managed by YARN!

#### Data Flow
Hadoop task = map task + reduce task.
 So YARN manages the resources of the Hadoop cluster. The input are split up, and they are called splits. Those splits need to find an optimal size of 128MB, or which is a size of an HDFS block, but we also need to consider the size of the splits. How many splits, and how big are the splits, we need to optimize these two things to have less overhead on managing the counts of the splits, and managing the size of each split.
 The output of the reduce is stored in HDFS for reliability. And then the data gets replicated to other servers! 
 You can have multiple reduces, and even no reduces. Just doing the jobs in parallel. 

#### Combiner Functions
It’s used on the map functions output. So, then why not just use another map function for this job? Or is it for combining a few sets of map and reducing? So that’s how you can make reduces for a few different maps right? I get it. 

**Specifying a combiner function**
Just `job.setCombinerClass` -> and then you’re done! Remember, it has to be a reducer since it actually combines, which is reducing. 

#### Running a Distributed MapReduce Job
Dang, the example on the book took 6 minutes to run on a 10-node EC2 cluster with High-CPU Extra Large instances.

### Hadoop Streaming
You can write MapReduce jobs with other languages than Java. But to use other languages, the interface is actually the Unix standard streams. So you can use any language that can read standard input and write to standard output.
 The following headers are just examples of using the Hadoop Streaming API for writing MapReduce applications.

#### Ruby
Ruby examples, check the out in the book. 

#### Python
```python
# Map function for maximum temperature in Python
import re
import sys
for line in sys.stdin:
val = line.strip()
(year, temp, q) = (val[15:19], val[87:92], val[92:93])  
if (temp != "+9999" and re.match("[01459]", q)): 
print "%s\t%s" % (year, temp)

# Reduce function for maximum temperature in Python
import sys
(last_key, max_val) = (None, -sys.maxint) for line in sys.stdin: 
(key, val) = line.strip().split("\t") if last_key  and last_key != key: 
print "%s\t%s" % (last_key, max_val) 
(last_key, max_val) = (key, int(val)) else: 
    (last_key, max_val) = (key, max(max_val, int(val)))
if last_key:
print "%s\t%s" % (last_key, max_val) 
```

**Run Tests**
```sh
cat input/ncdc/sample.txt | \ ch02-mr-intro/src/main/python/max_temperature_map.py | \
sort | ch02-mr-intro/src/main/python/max_temperature_reduce.py
```

## The Hadoop Distributed Filesystem
When we can’t put all the data inside a single machine, we need to find a way to distribute the data to multiple machines. This is where a distributed filesystem comes in. It’s connected to the net, and does this and that to distribute the data. We’ll find out about Hadoops Distributed Filesystem, HDFS. 

### The Design of HDFS
The good stuff:
* Very large files
	* Yup, petabytes. That big.
* Streaming data access
	* A write once and read multiple paradigm eh? But dude, that means it has no transactions. So just write it once, and then do that and this for just analysis? So you don’t even delete or update right? How is this streaming data access?
* Commodity hardware
	* It can run on any type of hardware. It doesn’t need to be run on like mainframe and stuff. 

The bad stuff:
* Low-latency data access
	* HDFS is optimized for delivering high throughput of data. Not good for data access. HBase is a good project for low-latency data access.
* Lots of small files
	* HDFS can’t hold onto A LOT of files since the node needs to carry around the metadata of the files. As a rule of thumb, each file, directory, and block takes about 150 bytes. You can do the math yourself. It means we need a lot of memory! So don’t put in too many files. 
* Multiple writers, arbitrary file modifications
	* Writes are made at the end of the file. It’s an append only fashion, no multiple writers. 

### HDFS Concepts
We’ll see the concepts of what HDFS has.

#### Blocks
Cool. Disk blocks are 512 bytes lol. If I ever learned about the operation system I would know about a filesystem. Anyways, an HDFS block size is 128MB. It’s huge, I know, it’s because of the seek time. If it seeks too many blocks, then it’ll be a bad thing. But if there’s a few blocks, the seek time will be less. 

Benefits of abstracting its own block in a filesystem.
1. A file can be bigger than a disk. So we can distribute it through the network. 
2. It simplifies the storage subsystem. 
3. Blocks fit well with replication for providing fault-tolerance and availability. 

#### Namenodes and Datanodes
An HDFS cluster actually uses the master-worker pattern! A namenode(master) and a number of datanodes(workers). The namenode has all the metadata of the filesystem. So if the master is lost, the worker nodes won’t know where the files are. That’ll be a disaster. So the master has to have another standby master and the metadata should be persisted in an NFS server or something. But I’m sure there’ll be other ways to make it available.

#### Block Caching
It’s cool that the blocks that get accessed a lot can be cached. It’s an explicit cache so it only gets cached in the machine. You can specify how many blocks you can cache and stuff. More to it when you actually get to configure one.

#### HDFS Federation
So the namenodes have their own problems. Which is memory. It’s hard to think how much a namenode needs how much memory to actually make the cluster available. So there’s some technique called HDFS federation which helps manage namenode memory by doing this and that. Don’t know the details, but when I get to do it, I think I’ll come cross this. 

#### HDFS High Availability
The new namenode is not able to serve requests until:
1. It loaded its namespace image into memory
2. Replayed its edit log
3. Received enough block reports from the data nodes to leave safe mode

Woah, it can actually take 30 minutes or over to start a namenode from cold. So it does some failover things and fencing right? I mean everything does that! The failover controller does the transition between the standby and the failing master. 

### Various Interfaces
From now on, it’s mostly just command-line interface and java interface exploration. It tells you have to access the file and all that stuff. But I’m not really interested in it now since I’m not going to actually use this. I only need to know the high-level internals of this. Need to know what it does, and what it is. So I’ll just skip this part and come back and read it when I really need it.

### Data Flow
I think I’ll be exploring the data flow of HDFS. How it gets loaded, read, write, all that stuff right? The anatomy!

#### Anatomy of a File Read
Pretty much the image really explains it all.
1. The HDFS client opens the Distributed Filesystem and gets the block locations from the namenode.
2. After that it reads from the Filesystem Data InputStream and closes. That simple!

#### Anatomy of a File Write
HDFS’s coherency model? Coherency, the quality of being logical and consistent.
1. The HDFS Client creates a file in the Distributed Filesystem and writes it to the namenode.
2. It then writes it to the Filesystem Data OutputStream, and the data nodes get written. The whole pipeline of course.
3. And then it closes, and says it completed the write to the namenode.

### Coherency Model
A coherency model for a filesystem describes the data visibility of reads and writes for a file. HDFS trades off some POSIX requirements for performance. 
 So, after you create a file, it’s guaranteed that it’s in the filesystem. But when you write something on it, and even if you flush it, it won’t write guaranteed!

### Parallel Copying with distcp
It’s just a utility for copying in parallel.

### Keeping an HDFS Cluster Balanced
It’s not always possible to prevent a cluster from becoming unbalanced. For this, we can use the `balancer` tool to subsequently even out the block distribution across the cluster.

## YARN
Yet Another Resource Negotiator. The resource management API is hidden from the user. The distributed computing frameworks are on the top, then YARN and HDFS. So the distributed computing frameworks such as MapReduce, Spark, etc. do communicate with YARN, but the user just uses the higher-level APIs from the application layer. 

### Anatomy of a YARN Application Run
1. The `ApplicationClient` submits a YARN application to the `ResourceManager`.
2. The `NodeManager` starts a container, and there’s an `Application` process running in the container.
3. The container then allocates resources to the `ResourceManager` (heartbeat)
4. And then the container starts another container inside another `NodeManager` when it needs to. 

#### Resource Requests
So YARN can request resources at any time. It can request it dynamically when they need them, or just request them up front. The thing that got in mind was that it spawns containers of other NodeManagers. That means it knows its geological location. So YARN will try to request resource to its nearest machine, and when there’s none, it’ll request somewhere else in the cluster. 

#### Application Lifespan
It’s not really important of a YARN application’s running time. It’s important to categorize applications in terms of how they map to the jobs that users run. 
1. One application per user job. 
	1. MapReduce. It just spawns the job and kills it when it finishes. 
2. One application per workflow or user session of jobs.
	1. Spark executors, get the containers up front and just keep on using for those kind of jobs.
3. One long-running application for several users. 
	1. Things like low-latency SQL analysis on Hadoop solutions should use this. There’ll be a master that won’t die so you won’t have to wait for YARN to spin up the applications. 

#### Building YARN Applications
You don’t really get a chance to build applications on top of YARN since stuff like Spark, Tea, and all that stuff is out. So a few examples, if you want to run DAG(Direct Acyclic Graph) jobs, Spark or Tea works. Or for stream processing, Spark, Samza, or Storm works.
 So if you want to actually build applications with YARN, then you can use Apache Twill and Apache Slider. But if you want a more raw approach, then use the distributed shell.

### YARN Compared to MapReduce 1
The world without YARN is called `MapReduce 1`. 
Comparison between the two:
**Map Reduce 1**
* Jobtracker
* Tasktracker
* Slot

**YARN**
* Resource manager, application master, timeline server
* Node manager
* Container

YARN benefits:
* Scalabiltiy
	* Cool, MapReduce 1 only scaled to 4000 nodes and 40000 tasks. While YARN scales to 10000 nodes and 1000000 tasks.
* Availability
	* MapReduce 1 had to do two things at once. That’s why it couldn’t get high availability because it had to do too many things when the master died.
* Utilization
	* In MapReduce 1 you had to designate the number of slots for map and reduce jobs. Because of this, sometimes you’ll have to wait for one of them to finish because there were no slots! Since YARN uses containers, it just abstracts out the computing resource usage!
* Multitenancy
	* Yep, because of YARN, we can make other applications than MapReduce.

### Scheduling in YARN
In an ideal world, everything will just run perfectly. Concurrency ftw! But in the real world, that doesn’t actually apply. Things need to wait. 
 So YARN provides a choice of schedulers and configurable policies. 

#### Scheduler Options
Three schedulers are available in YARN:
* FIFO
	* It’s just a queue. First in, first out. 
	* Not good for clusters since there are too many jobs to run in parallel.
	* The other two are good for large clusters.
* Capacity
	* The big jobs get to run and the little jobs get to run in priority.
* Fair Schedulers
	* It allocates the resources for big jobs and little jobs fairly so it finishes fast!

#### Capacity Scheduler Configuration
Skip! I’ll go learn it when I need to configure one.

#### Fair Scheduler Configuration
Skip! I’ll go learn it when I need to configure one.

#### Delay Scheduling
There are times that you can just wait for the jobs to finish, but there are times when you can’t wait. This is all about locality. If there’s other servers near you, the scheduler will try and allocate it over there. 

#### Dominant Resource Fairness
This actually tries to calculate the dominant resource. Like, if there are two jobs and the CPU usage or memory usage is big, it picks up one of them and try to make them fair.

### Further Reading
[Apache® Hadoop™ YARN – Moving beyond MapReduce and Batch Processing with Apache® Hadoop™ 2](https://yarn-book.com/)
This book tells you more about YARN. I think it’ll be a great thing to actually know about if you want to know stuff like Mesos, or how Kubernetes does resource allocation and stuff.

## HBase
I’m just looking at this chapter for an overview of HBase. Since it’s not going to be easy for me to actually buy a book about HBase and study it all since I’m not really using HBase heavily. So yeah, let’s just cover the basics of it. 

### HBasics
It’s a distributed column-oriented database built on top of HDFS. It’s the Hadoop application to use when you require real-time read/write random access to very large datasets. 

#### Backdrop
Cool, HBase was made before Google’s Big Table. 

### Concepts
Let’s go see the concepts of HBase, how it’s built, what it’s built upon of.

#### Whirlwind Tour of the Data Model
The table data model is in cells. Which have rows and columns. I don’t understand but the cells are actually versioned. This means, tables are actually 3 dimensional right? 
 The differences between an RDBMS would be, cells are versioned, rows are sorted, and columns can be added on the fly by the client as long as the column family they belong to preexists.
 Also HBase doesn’t let you make secondary indexes. But the books says there are ways to actually do it, but I’ll find out next time. Primary index would be the primary key, index.

All the other stuff is client related stuff. So I’ll just quit reading from here. Might as well build an app with HBase some time. Then I’ll get the idea. 

#reading/books