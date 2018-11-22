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

#reading/books