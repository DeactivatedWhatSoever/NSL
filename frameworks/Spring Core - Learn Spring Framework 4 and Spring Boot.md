# Spring Core Learn Spring Framework 4 and Spring Boot


## Spring Core

### Spring Beans

- POJO! Write less, this is where SRP comes in. An object should do one thing. So spring beans just represent one thing. 

	- This came out to represent an object should only have one responsibility. Shouldn’t do too many things by itself. And the most important thing is, putting out dependency of a framework or library. Just POJO!

### Dependency Injection (DI)

- The word says, injecting a dependency to an object. Objects shouldn’t know what other objects do. They should just know what they do. So, for the controller, as it needs data from the database, injects a service object and gets data from the database.

	- If DI wasn’t there, all the classes in Java would be really big. Actually, the controller in MVC would be the biggest object there could be. It would have, making the view, getting data or writing data to the database, business logic, exception throwing, etc.

### Inversion of Control (IoC)

- IoC, actually is the saying of a framework doing DI for you. So don’t get confused with that.

	- Well, DI is actually the meaning of it is. DI is a really good method to abstract code, but, how are you going to do it? This is where IoC comes in. That technology wires all the dependencies up with each other. By itself! That’s why it is made. Otherwise, we’d have to wire it by ourselves.

### Spring Context

- The Spring Context goes through all the classes and creates the environment for Spring Framework. So this would be the most top!

	- The thing is, if we have all the concepts for DI and stuff, but we don’t have the actual technology to implement it, then there’s no use. The spring context is the root of all.

### Spring Expression Language (SpEL)

- Just an expression language that makes XML or Java configuration more easy for developers. 

	- If SpEL didn’t exist, it won’t be easy to make dynamic environments. Everything will be fixed or hard coded. Because of SpEL, we can configure everything dynamically.

## JPA

### JPA Entities

- If you put the @Entity mark on the POJO, that will become a table. Which is really cool. Make sure to find about the auto generate and that stuff. 

	- This is one of the paradigm shifts for table VS OOP. JPA will do the auto generating of tables and columns if you just put the right things on the POJO.

### JPA Optimistic Locking

- Optimistic locking is for preventing concurrent updates. Which is also named as update loss. When a person has version 1 and the other person has version 1, one person updated it first. The other update later, and then the update will be lost. That other person needs to get the new updated data and then update it. To give an exception at that time, that’s when the @Version annotation comes in.

	- The reason this is here is to prevent concurrent writes. Several people updating the same column. Which is somewhat a huge problem. (Don’t know what to do with counters. Maybe just go in Redis?)

	- I think you should search more on this topic.

### JPA DAO Service

- Just a service. Using EntityManagerFactory, EntityManager, to use merge, you need to pass the version property. @PersistenceUnit -> Inject EMF. That’s it. Nothing else learned really. It’s a Hibernate independent implementation. Which is a JPA implementation.

### Bootstrap Data

- Creating test data on startup. Same as seeding in Rails. Which is a really good feature. You should put this in the project!   Implement ApplicationListener<ContextRefreshedEvent> and implement the methods. Then, you’ll be able to seed the database at a nice time. Put in about 100 records and you’ll be good to go with bootstrapping and testing. 

	- Really great for development. It’s really really hard for people to just go in with no data on the page. It’ll be like hell for them :(. We use seeds to make us developers develop well and well, have a little fun with some fake data :)

### JPA Entity Relationships

- One to One Entity Relationships - Unidirectional

- One to One Entity Relationships - Bidirectional

- Many to One Entity Relationships

- JPA Embedded Entities

- JPA Many to Many Relationships

- Above all, they are all the types that we can get. You can find all the relationship mapping and stuff in this [blog post.](https://vladmihalcea.com/2015/03/05/a-beginners-guide-to-jpa-and-hibernate-cascade-types/)

