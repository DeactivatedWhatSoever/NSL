# HBase: The Definitive Guide
Since I’m using HBase, I don’t really understand the code that I’m trying to manipulate with. I’ll try and get the essence of what HBase is existing for, and how we can use it and see the data that’s in it and etc. 

# Introduction
What problems couldn’t the relational model fix?

## The Dawn of Big Data
Most RDBMSes strive to implement the `Codd’s 12 rules`. That’s why all the databases are starting to look the same. 

**Column-Oriented Databases**
RDBMs -> Row-oriented databases. A database that saves columns separately. But still, HBase isn’t a column-oriented database. But it utilizes an on-disk column storage format. It has a column storage. But it doesn’t mean it’s a column-oriented database. HBase is good at providing key-based access to a specific cell of data or a sequential range of cells. Key -> cell(data).
 Column-oriented databases are great for their compression rate. Because of the orientation of columns instead of rows, the data type is consistent. Consistent data types make the user to look at predictable data. Which means compression will be easy.
 Analytical data doesn’t need much structure. It’s more of the aggregation and calculation that the people want to analyze!

## The Problem with Relational Database Systems
It’s all about scalability. RDBMSes can’t scale that easily. It’s also really hard to manage. From read replicas, and then you have to scale up your masters, your replicas can’t follow your masters speed and you have to scale up all your replicas, then your database can’t seem to select the data you want, you start to tune your queries and they can’t use composite indexes and only primary key indexes, before doing that you need to denormalize your data, and then last comes in sharding. It’s a management nightmare. But still it scales until this time for the larger companies. RDBMSes actually get the job done, it’s just that it’s really hard to scale and manage.

## Nonrelational Database Systems, Not-Only SQL or NoSQL?
The catchword `NoSQL` just came out to categorize whether the database you’re pointing at is relational or not. It’s mostly relational vs the others lol. That’s the word’s origin!
 What I got more is, whatever is not relational, it’s NoSQL. I think the 12 rules is the best differentiator. Even memcached is inside the NoSQL category. A NoSQL database can have aspects of SQL databases. So if it’s not fully a RDBMS, then it’s NoSQL.
 I think the other sections of this chapter is about the components of a database.

**Consistency Models**
Consistency models is something really important in databases. The thing that I got is, whether it’s atomic or not atomic, and how fast the speed of the persistence. 
 Strict -> Sequential -> Casual -> Eventual -> Weak. This is how the atomic and speed goes. Atomic and fast to not atomic and slow. 
 The CAP theory in distributed systems is really important to fall in. Consistency, availability and partition tolerance. You can only pick two of the three. It’s just like cheap, fast, and quality. 

### Dimensions
The dimensions that a database has. There’s going to be a huge list up ahead, and by seeing whether the list-item is checked or not, is an impedance check. 
* Data Model: What kind of data model the database uses. Column-oriented, document, or key/value pairs.
* Storage Model: In-memory or permanent.
* Consistency Model: Strict or eventual.
* Physical Model: Distributed or single.
* Read/Write Performance: Read > Write, Read < Write, Read = Write. Which one, and find what’s optimal.
* Secondary Indexes: Remember how when you have to destroy secondary indexes. It’s either have it, and get the benefits of ordering and accessing data plus to the primary key, or get benefits of range scans and random access.
* Failure handling: How to recover machine failure. The cloud cannot solve all of this. There is … the inevitable.
* Load Balancing: Typical. From time, when to balance read or write.
* Atomic read-then-write: It’s all about the consistency model over here. Whether you’re going to do it in the application and do it yourself, or give it to the database.
* Latency, waits, and deadlocks: How are you going to fix multiple clients going for the same thing. Contention. Too much contention can be saved with locks. What locking model are you going to apply?

### Scalability
The main sentence that I got over here was, give up relational features permanently and switch them with performance. Denormalization leads to less waits and deadlocks. Locks will sure be lesser than relational data. Because there’s no relations, and no relations mean just one record at a time. Horizontal scalability, does this mean linear? Anyways, because of that we don’t need partitioning. That leads to fault tolerance and data availability. It’s a great triangle, and that’s what HBase gives us. 

### Database (De-)Normalization
Denormalization really does give read and write performance. It’s all about destroying the relations. The row keys are actually the relationships between the tables. You need the foreign keys, and you add them up and they’ll be the key of the row of the table that’s related. It’s actually cool. Then  the read and write performance will go straight up. But it won’t be easy to see how the data is related right away. It won’t be actually an ERD lol. 
 I think it’s going to be a really hard journey on making educated decisions. Relational modeling is actually pretty easy. Which is, normalization. But denormalization isn’t going to be easy at first, and you have to defeat your normalizing attitude. So it’s better to start at a blank start. But that doesn’t mean you have to destroy your relational modeling thinking. There are times you’re going to need it. 
 HBase gives you analytical performance. A lot of data, and query the data you want at ad-hoc. But service related data is pretty much different from that. You still need to learn the relational modeling techniques, and learn about modeling denormalization techniques when you really need them. 

## Building Blocks
This section might be the most important. It tells me how HBase is implemented in the high level, and how the data model looks like, and what kind of persistence APIs are out there. 

### Backdrop
So it was all about Google trying to scale their whole index. I get it. And they also wanted to do analytics. They wanted to do something with their huge database. Then wanted to store, process, and serve. 
1. The Google File System
2. MapReduce: Simplified Data Processing on Large Clusters
3. BigTable: A Distributed Storage System for Structured Data

### Tables, Rows, Columns, and Cells
I don’t really understand the real thing but, the row has a row key, and the columns have a family. The columns have cells which gives you a revision. I think I got the picture, but I need to understand it more deeply. 
 The access of a row is atomic. Because of the time stamping, race conditions will actually be prevented because a dude will read the new one, and if it hasn’t been updated, they’ll read the latest revision. I wonder how HBase locks for contention. It’ll just use the revision right?

Access to HBase: (Table, RowKey, Family, Column, Timestamp) -> Value

**The Webtable**
The real application of HBase and BigTable. You can put in the URLs as the row key, which is reversed(I don’t know why it’s reversed. Why?) and there will be a contents family, meta family, inbound and outbound link family, and maybe language. With revisions for each families, you can check how often the HTML changes. Which is really good for analytics.

### Auto-Sharding
Some HBase master will keep on monitoring the data size of the region. The region is the autoscaling unit. More regions on each server, and you add servers so the regions go there too. It’s like a region is a process. More processes inside a server, and you need more, just add a server. 
 I want to know how actually does the scaling. How the regions will spread between servers?

### Storage API
The reason this has just an API is, it doesn’t have a DSL like SQL. But still, we have the ability to create, delete tables and column families. Also update the metadata like block sizes and compression algorithms. 
 Scan is the most important thing that we need to know. Writing is easy, but reading is the most crucial thing in storage. There’s going to be a lot of ways like filtering and stuff, but since there’s no joins, I think there’s only going to be arithmetic comparisons on the table. 
 Read-and-modify is available since HBase gives single row transactions. It doesn’t give cross-row or cross-table transactions, or else that’ll be a RDBMS. And that means it provides joins. 

### Summary
Table scans run in linear time and row key lookups can be looked up in logarithmic or even constant time with bloom filters. NULLs are free, edit conflicts can be resolved with history revision. 

### Implementation
The implementation of Hadoop in the big picture would be, the storage layer is HDFS, and the service discovery, region health checking is done by ZooKeeper. HBase has three major components. The Master, Region, and Client API. 
 Let’s start with how the data is saved. The HFile is the data unit. It’s an immutable log-formatted map. But before HBase writes it to disk(which is an HFile), there’s a memstore as a middleman. New data is written to the memstore, and when the memstore is too big, it flushes. Then the memstore writes an HFile of the old data. This is why HBase can write fast. 
 When there’s too many files, HBase does something called, compaction. There are two types, minor and major. First, when there’s a lot of files, we need to merge them into one. A lot of small files -> One big file. After that, all those big files will be merged into one big file inside a region. That’s a major compaction. 
 That’s the big picture implementation. So you can just think HBase as a log-structured sort-and-merged-map!
 I also forgot about delete. Deleting just marks a row as deleted, and the client filters it. Once major compaction is done, the rows are actually deleted. Remember, the reason that it’s not deleted is, the maps(HFile) are immutable!

## HBase: The Hadoop Database
The open source implementation of Google’s BigTable.

### History
It was prototyped from a year when Google’s BigTable’s white paper was released. A company called Powerset which was a natural language search engine that was acquired by Microsoft started the project. And then it went to Apache. Done!

### Nomenclature
Naming between the components of HBase and BigTable

* HBase vs BigTable
* Region vs Tablet
* RegionServer vs Tablet server
* Flush vs Minor compaction
* Minor compaction vs Merging compaction
* Major compaction vs Major compaction
* Write-ahead log vs Commit log
* HDFS vs GFS
* Hadoop MapReduce vs MapReduce
* MemStore vs memtable
* HFile vs SSTable
* ZooKeeper vs Chubby

### Summary
HBase offers optimal read/write performance, storage efficiency by its pluggable compression algorithms, does autosharding, extends single index to composite indexes, row transactions and strict consistency. 
 
#reading/books