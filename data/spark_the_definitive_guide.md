# Spark: The Definitive Guide
The reason I’m doing this is because I’m going to be processing a hell lot of trading data. Also, need to get a chance to know how to do this since I’m going to participate in some `Kaggle` challenges. I’m going to make a really good computer and do stuff with that so don’t get to worry about anything. So the main reason I’m going for this is, to get work done, plus, to get everything else done. One shot and multiple kills. That’s the main way.

There’re hell of a lot of parts so you have to keep track with them.
1. Gentle Overview of Big Data and Spark
2. Structured APIs - DataFrames, SQL, and Datasets
3. Low-Level APIs
4. Production Applications
5. Streaming
6. Advanced Analytics and Machine Learning
7. Ecosystem

## What Is Apache Spark?
What is Apache Spark all about? What is the basis of it and why did it come out? Why do we need this? 
Book’s Definition: Apache Spark is a unified computing engine and a set of libraries for parallel data processing on computer clusters.
 A unified computing engine will make a cluster like one computer. And all those computers will be able to do parallel data processing. So the set of libraries will actually help what kind of data to process and transform them into some sort of data structure that Spark works well with. To process big data, I mean a hell lot of data, we’ll need to process the data as fast as possible. Which means we’ll need parallel processing ability. One at a time will not work. So a cluster of computers are actually processing one piece of data, but since the processing is parallel, we’ll need a set of libraries that will help us do with the parallel computing. Remember, the basis of this is a `computing engine`. 

* Layer 1
	* Structured Streaming
	* Advanced Analytics
	* Libraries & Ecosystem
* Layer 2
	* Structured APIs
	* Datasets
	* DataFrames
	* SQL
* Layer 3
	* Low-level APIs
	* RDDs
	* Distributed Variables

### Apache Spark’s Philosophy
**Unified**
* Spark actually lets you get data from anywhere, like files, SQL, APIs, all of that. Since it lets you do that, you can have a unified environment for processing data.
* So you can use all the libraries and build your own and process data in a unified way. 
* Since Spark has its own data structures, all the data that comes in can be unified by Spark’s own data structures. 

**Computing Engine**
* I’m not sure of this part. Spark can access various storages, but it doesn’t save data there permanently. Is it just for getting data from those? Why can’t you just put JPA on it and get it like that. Is it because it has great native interfaces for getting data from those storages is easy? Not sure. 
* Okay, since Spark does all the computing on memory, which needs to get data from certain storages, is it just for getting? Hadoop had a storage(HDFS) service and a compute service(MapReduce) but both of them couldn’t be changed. So if it were Spark, we could use HDFS but we could use a special compute engine from Spark right? 
* [amazon s3 - Can apache spark run without hadoop? - Stack Overflow](https://stackoverflow.com/questions/32022334/can-apache-spark-run-without-hadoop)
* [Do You Need Hadoop to Run Spark? - Whizlabs Blog](https://www.whizlabs.com/blog/do-you-need-hadoop-to-run-spark/)
* So Spark needs to get some data from a distributed file system to actually process that data in parallel. It’s either get data from a distributed system, or use Spark’s algorithms to get data and distribute it in parallel. So we need a place to actually store the huge unprocessed raw data. That’s the reason Spark needs a storage. Got it. 

**Libraries**
* https://spark-packages.org/
* So, it’s actually a plugin sort of thing. Like database connectors, ML algorithms, Kafka streaming, all that other types of data stuff I guess? You can process various kinds of data with the Spark libraries. I think that’s what this really means. 

### Context: The Big Data Problem
The context of this is actually about hardware. Since CPUs can’t get faster individually, hardware engineers started to make more cores. That means, we need to leverage our code to use them. Also, the cost of storage became so cheep. In 14 months, the store of 1TB of data decreases by two. Can’t believe it lol. Well anyways, since business, all the people who develop a product just lets everything to be collected. They log everything, which is a really important thing to do. Everything must be audited, and everything will get better. 

### History of Spark
UC Berkeley, 2009 project. My dream school… 
https://www.usenix.org/legacy/event/hotcloud10/tech/full_papers/Zaharia.pdf -> Thesis about Spark
Don’t like history, but I read it. The AMPLab of UC Berkeley made it and created a library thingy that lets everything go into it. So MLlib, GraphX, Spark Streaming, and all that stuff came out. 2.0 was released in 2016, and it’s keeping on going. Databricks -> I think you should go find out about this company. It’ll be a great opportunity to know such company.

### The Present and Future of Spark
Spark Streaming, that sure had a big impact for the companies. It’s for real-time data processing I guess? Instead of doing batch processing all the time, there’s a stream that lets data come in and Spark then goes up and do all the processing. Spark is also used for big data analysis. That’s why all the libraries and all that stuff are out there. I’m not sure whether that analysis is for the raw data that’s in the Spark storage. I think Spark would sort of save the processed data somewhere else.

### Running Spark
I’m thinking of creating a Spark cluster by myself. Actually make a same environment like the platform that I’m working. I flipped up some VMs, so it’ll go well I hope. 

Or, is it good to actually have a dockerized environment? I think it’ll be good to find out.

#### Running Spark in the Cloud
Databricks Community Edition -> Google it and sign up. You’ll get a full fledged environment for Spark Big Data Analysis.

#### Data Used in This Book
https://github.com/databricks/Spark-The-Definitive-Guide -> All the data and code is in here so take a look at it when you really need them.

#reading/books