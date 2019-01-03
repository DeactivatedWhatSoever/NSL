# High Performance Java Persistence
This is the most important thing for a server developer to know. As a server developer, you mostly communicate with the database. You’re actually a client of the database. So you have to learn everything about database communication, and if you want to be a DBA, you’d better learn about the database too. But I don’t want to be a DBA, but I want to know all the internals of a database. So that’s the next thing I’m going to learn about after mastering communicating with the database.

# Preface
“More than half of application performance bottlenecks originate in the database”
So the repository layer will give most of the performance bottlenecks. It’s because the database is only one most of the time. And it’s hard to scale the replication of data. So you have to think whether your application is read or write intensive and stuff.

The data access skill stack
* Type-safe dynamic queries (jOOQ)
* Object-relational structural patterns
	* JPA
	* Hibernate specific features
* JDBC
* DB specific SQL enhancement
	* SQL Standard
* DB specific concurrency control
	* Transactions/ACID

The things that go down the layer will be harder see since they have too many things with them. It’s best to know the upper layers that are close to the core, or the core itself. Then we’ll get a higher understanding and will use that knowledge to understand the lower layers. 

## The database server and the connectivity layer
We need to get to know the database from the top to actually understand how to use it. If we don’t know how the database actually works, there’ll be no way for us to actually optimize our operations.
 Most of the time people try to refactor the big ball of mud in the database connection layer. Instead of moving that legacy to a new database system. 
 All the frameworks like jOOQ or Hibernate need to get through JDBC. JDBC gives us some abilities to optimize the performance of a connection with a database. Transaction response time reducing and etc. 

## The application data access layer
Great data access patterns are in the book: `Patterns of Enterprise Application Architecture`. I better read the data access section lol.
Anyways, ORM frameworks employ techniques like:
* Unit of Work
* Identity Map
* Lazy Loading
* Embedded Value
* Entity Inheritance
* Optimize and Pessimistic Locking

### The ORM framework
Didn’t know ORM framework learning curve was steep. But when I thought of SQLAlchemy, I understood right away lol. You have to know so much about the internals to actually make the performance of the connection high. 

### The native query builder framework
We can’t avoid native queries. But JPA and Hibernate can do most of the queries, but there are some times when we need native queries. That’s when jOOQ (Java Object Oriented Query) comes in. We can make real good native queries, and even protect it from SQL injections.

**About database performance benchmarks**
```
Everything is depedent. The hardware, operating system, software, so you have to think about the factors when you do benchmarks.
```

#reading