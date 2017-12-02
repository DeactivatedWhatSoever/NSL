# Udemy - Database Design & Modeling


## Database Basics

### What is a database?

- A place to actually store information. In the past, everyone stored this data in paper! Now it is stored in storage solutions like hard disks and SSDs.

	- Query, Tables, etc. The most important thing is, this thing stores data! That’s it. 

### How do databases work and why are they important?

- B-trees

	- A B-tree is a self balancing tree data structure that keeps data sorted and allows searches, sequential access, insertions, and deletions in logarithmic time. It is commonly used in database and filesystems.

- B-tree and Database Indexes

	- Databases need logarithmic search time. Or else it won’t be easy to get a data over big numbers of records!

	- B-trees are used to make database indexes.

### Different Types of Databases

- RDMBS

	- Table - Row - Column

- OOBMS (Object Oriented Database)

	- Object vs Tables

	- RDBMS + ORM Vs OODBMS

		- ORM wins :)

- NoSQL (Not only Sequel)

### What is a RDBMS?

## Database Modeling and Design

### What is Database Design?

- Objectives

	- The database supports both required and ad hoc (unplanned) information retrieval

		- How can we get unplanned information? Seriously? Don’t know about that. 

		- Well it is an objective, so it says what to actually do. Maybe it means that this objective will get us extensibility.

	- The tables are constructed properly and efficiently

		- Of course, if we don’t construct tables properly, we won’t be able to data properly. Everything will feel like ...

	- Data integrity is imposed at the field, table and relationship levels.

		- integrity: No orphans, no data that has less information, etc. You should select the right space, right null condition for fields, right encoding and engine for tables, and give relations. (1:1, n:1, n:n)

	- The database should support business rules relevant to the organization it is designed

		- A database stores such domain data. So it really needs to support the business of what the company is doing. 

	- The database should lend itself to future growth and development

		- Bigger and bigger, that is one of the big things. How are we going to scale. A big question for databases.

- Benefits

	- The database structure is easy to modify and maintain

		- Like I said, extensibility. SOLID!

	- The data is easy to modify

		- Already said above

	- Information is easy to retrieve

		- Good relations

	- End-User applications are easy to develop and build

		- Since it’s easy to convert to Objects

- Process

	- 1. Determine the purpose of the database

	- 2. Find and organize the information required

	- 3. Divide the information into tables

	- 4. Turn information items into columns

	- 5. Specify primary keys

	- 6. Set up the table relationships

	- 7. Apply the normalization rules

	- 8. Refine the design

### What are the three types of Database Design?

- 3 Levels of database design

	- Conceptual

		- This is where you define the concept of your data. What kind of data you actually need. Like, when you’re making a website, you could have users, some products to display. So you specify the relationships and the actual data you need.

	- Logical

		- This is where you actually define the attributes of each entities. Well actually tables. They should have these kind of data, or whatever! 

	- Physical

		- This is where your specific database skills come in. Whether putting in a foreign key, indexing, etc.

### Database Modeling and Design Tools

- MySQL Workbench, DataGrip, etc.

## Database Design Phase 1 - Normalization

### What is Database Normalization?

- Normalization

	- Normalization is a database design technique which organizes tables in a manner that reduces redundancy and dependency of data

		- Okay, the goal of normalization is, you have to make data “ONLY ONE”. The data must represent itself, and everything. The DRY principle is used pretty heavily in here I think. Also, the data should be loosely decoupled. It shouldn’t have dependency about other data. Well, most of the data can be dependent of the user table though. I wonder if there’s a way to actually split that too!

	- Redundant Data = Useless at a = Same Data stored in more than one place

### First Normal Form

- A property of a relation(table) in a relational database. A table is in first normal form if and only if the domain of each attribute contains only atomic (indivisible) values, and the value of each attribute contains only a single value from the domain.

	- I think you should know that this is a from. The first form would be just a table filled with atomic values inside. The important thing over here is, what is atomic? Indivisible. Which is, you can’t divide it anymore. Well, not really the term division but, you can’t split the data up because it’s already split up into atoms! That’s why it’s atomic. 

	- Also, those values have to be unique. Atomic and unique, which means no where but here. (In the domain!)

- Rules: Each table cell should contain a single (“atomic”) value. Each record needs to be unique

### Second Normal Form

- A table is in 2NF if it is in 1NF and no non-prime attribute is dependent on any proper subset of any candidate key of the table. A non-prime attribute of a table is an attribute that is not a part of any candidate (for composite primary) key. 

- Put simply, a table is in 2NF if it is in 1NF and every non-key attribute of the table is dependent on the whole (every attribute of the) composite primary key. 

	- To think of this even more simply, the form of 1NF + composite keys are set! Then 2NF

### Third Normal Form

- A table is in 3NF if and only if both of the following conditions hold: The relation R (table) is in second normal form (2NF) Every non-prime attribute of R is non-transitively dependent on every key of R

	- To really make everything simple over here, all the non prime keys should be alone. And, the relationships with the tables should be formed! 

- Third Normal Form: applies that every non-prime attribute of table must be dependent on primary key, or we can say that, there should not be the case that a non-prime attribute is determined by another non-prime attribute. So this transitive functional dependency should be removed from the table and also the table must be in Second Normal Form.

## Database Design Phase 2 - Relationships

### Database Relationships. Identifying vs Non-identifying. Cardinality

- Foreign Keys: A relationship is established between two database tables when one table has a foreign key that references the primary key of another table. This is the basic concept behind the term relational database. 

- Identifying relationship

	- Tables that have a foreign key. Well, these two, a table has a parent! Which makes it identify that table.

- Non-identifying relationship

	- On this side, the parent has the child. So a parent can make a child optional. 

- Cardinality

	- The relationship types! Up ahead

### One to One Relationship

### One to Many Relationship

### Many to Many Relationship

