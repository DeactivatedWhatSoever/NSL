# Domain-Driven Design Distilled
Since I’m in the JVM ecosystem, and I need it at work, I’m going to study domain-driven design and hope to get some insights on architecting software. 

## Preface
The author wants to take DDD to the outside world and let everyone know about it. So this is a design tactic, and it involves not only software engineers, but everyone else who is in the agile team. Tactile, auditory, visual learners. They all have their own way in DDD. But it’s mostly all together. Which means, you have to communicate with your teammates and make a `ubiquitous language` and model your design visually with `context maps` and modeling business processes with `event storming`. This way, you get all three ways, and you get a cool software model, design.

## Who Is This Book For?
Anyone who’s in R&D or IT. Well, It’s for me!

## What This Book Covers
* Chapter 1
	* What DDD can do for me and a detailed overview of the book!
* Chapter 2
	* DDD strategic design with bounded contexts and ubiquitous language.
* Chapter 3
	* Subdomains, you get to learn integrating with legacy software.
* Chapter 4
	* Context mapping, actually feels like people gather and talk about the contexts they have, and we map them with each other and see what we can do!
* Chapter 5 & 6
	* You get to do Tactical design with a modeling tactic called Aggregates and Domain Events
* Chapter 7
	* PM tools to leverage DDD more. 

## DDD for Me
Bringing DDD with its strategic and tactic tools. DDD is actually a tool for modeling software. Remember, it’s a tool.

### Will DDD Hurt?
There’s a 3 day workshop, but I don’t know if it’s online or not. Well this book is surely a great one for distilling DDD. After this, I’m going to read the red book(Implementing DDD). 

### Good, Bad, and Effective Design
So DDD can solve business problems too. But if the business culture is really fixed, it won’t be easy to get the business problems solved by DDD. 
* Developers mostly are too technical. They don’t think about design, procedure. They mostly think about what kind of new tech will solve that problem. Give a think first, design, and then find your technical stuff.
* The database is given too much priority. So business processes and operations could be a better solution, but people tend to think with databases and data models. 
* Developers don’t tend to give a long thought about naming objects and operations according to the business purpose. Yeah, if you’re designing something, you should go and find the business people and see whether what they call this or that and make a ubiquitous language!
* Don’t collaborate poorly. If you don’t collaborate, you can’t make a language that everyone will follow.
* Project estimates. Estimating how long a project will take is one of the hardest things I’ve done. Well anyways, I don’t know what the author means of thoughtful design and “task-board shuffle”. If we just shuffle the task board and give anyone this and that vs thoughtful design, how are we going to design those tasks? I’m pretty not sure. Everyone will actually do a design, or at least think of a design when they try to implement something right?
* Business logic in user interface components(controllers?), persistence components(Rails & Django?). Persistence operations in business logic. Well, those are really bad you know …
* Broken, slow, and locking database queries.
* WRONG ABSTRACTIONS. I really want to know a real good example of this. I’ve saw some of them, but I don’t really get it intuitively. Overly generalizing stuff!
* Strongly coupled services. A service calls a service and does this and that. That service should only be used in a controller. A reusable controller! Well anyways, a Facade could be useable … but I don’t know.

Effective design. That’s the thing that we are going to do from now on. The alternative of good design is bad design. The worst is of course, no design. 

### Strategic Design
Strategic design is a forest tool that first gathers business strategy information and connects it with the technical forest design view and how to integrate with it!
 So, when you design something, you’ll have bounded contexts. And in that context, there’ll be a ubiquitous language which is only used in that bounded context.
 A bounded context, but there are going to be things called `subdomains` that are legacy systems. Some things that don’t go into the bounded context. You’ll also need to know how to integrate with multiple bounded contexts! That would be `context mapping`. Context maps contain both team relationships and technical mechanisms that exist between two integrating bounded contexts.

### Tactical Design
So this designing tactic is for building trees! After all, we need trees to have a forest lol. Well anyways, this is where we design the domain models specifically, and value objects, and aggregate them into a right-sized cluster. 
 DDD is all about modeling your domains as explicit as possible. Using domain events will let help you share what has occurred within your model!

### The Learning Process and Refining Knowledge
Just collaborate!

### Let’s Get Started!
Next up is, Strategic design with bounded contexts and the ubiquitous language!

## Strategic Design with Bounded Contexts and the Ubiquitous Language
In short, DDD is primarily about modeling a `Ubiquitous Language` in an explicitly `Bounded Context`. -> That’s the most concise explanation that I can get. But let’s see exactly how a bounded context is actually bounded. 
 At first, your bounded context will be in the problem space, and when you start modeling it, it’ll become your solution space. Because of this, the bounded context is where your implementations are going to be. And you’ll have separate software artifacts for each bounded context. 
 So what do you mean by separate software artifacts? Does that mean I have to make another project for each context? Or just another package? I’m not sure. I need to get a better understanding of the `scope` of a bounded context. 
 The problem space is where you model your software in a high level. Drawing diagrams, getting all the specifications and writing it all down, see what the constraints are, all that stuff. The book says this is where `Context Maps` work the best, and sometimes `Bounded Contexts` can come into the problem space. It’s because there’s sometimes you need to know the implementation to actually understand the interface. 
 And the solution space is where all the implementation goes! If that bounded context is a key of your strategy, it is your `Core Domain`. 
 When you get to implement your bounded context, you write your implementation, test code, and integration tests with other bounded contexts! It already feels like the micro service architecture lol.
 One team can develop with one bounded context, or multiple bounded contexts, but multiple teams shouldn’t work with one bounded contexts. Once the company scales, the bounded context will get bigger and the teams will need to have work for their own. 
 If we don’t have bounded contexts, we’ll eventually result with a big ball of mud which is just monolith. Too many concepts will result in a huge inheritance tree and it’ll be so hard to develop on it. People will start to make new trees inside it, and yes, monolith again. 

### Domain Experts and Business Drivers
The business drivers and domain experts need to work together and make a bounded context for each word. For example, if we have the word policy, it has a lot of meanings. But if we just actually make a context for each policy function, we can jus give it out to the development team and just manage the policies for its own function. {function} context -> And there’s a class called `Policy`. Then, we’ll have no need to actually name those classes like `ClaimPolicy`. 

### Case Study
Woah, this case study is really great. It’s about making an agile scrum software, and the people who are designing it keeps on making it bigger and bigger. People don’t know when to stop! Of course there are great ideas and lots of things to add, talk about, but if they keep on ‘adding’ it to the project, it’ll become a big ball of mud in no time. So, I think in the next paragraph, we’ll see how to actually design it with bounded contexts.

### Fundamental Strategic Design Needed
So it’s all about finding the core of the application. The `Core Domain` is what we need to find, and then wrap around it with other bounded contexts. It’s about finding the core problem that we are trying to solve. In result, the tools we need to use are ubiquitous language and bounded contexts. Split it up before it goes to monolith. But I still don’t get the `scope` of it. It’s so intuitive. There’s no rules. I know that there’s no rules to some kind of architecture methodology. I’ll have to know when to split it up or not. I’ll learn by trail right? 
 We really get a lot of testing benefits when we design with strategic design. Since all the bounded contexts have their own world, it’s way easier to test. We’ll also have a few more benefits, but the book will say it soon! I want to experience this stuff ASAP.
 How do we know whether this is the `Core Domain` or not? This is where we find people who are domain experts. Developers don’t tend to listen to the domain exports and they tend to just think about their technical complexity. You have to listen to them first, and see what the problems really are. The business complexity will show what to solve, and it’ll sure show how much your technology should be complex or not. It’s all about communicating until you get the real thing. The `Core Domain`. 

### Challenge and Unify
“What is core?” -> This question should be answered here! Splitting the domains up into `Scrum Core Domain`, `Collaboration Bounded Context`, it’s actually really cool to do it like that. I’m pretty touched! So the next question that I had was, “How the hell do we integrate between the bounded contexts?”, “Also, how to model the interfaces between the bounded contexts?”. Well, we’ll find out later by using the almighty `Context Mapping`!

### Developing a Ubiquitous Language
The domain names can actually be verbs, adverbs, nouns, all that stuff. If it explains the thing that you’re trying to do, then it’s applicable. Also, people tend to just draw the model and not develop it. If we get inside the user scenario too long, it’ll be really hard for us to actually implement it. Also, it’ll be really hard to keep on with the documentation updating and stuff. 
 To make a user scenario, you have to think of `who` does `what`. So keep on making the scenarios of who does what and who needs to be notified, which is what anyway.

#### Putting Scenarios to Work
Specification by example -> Behavior-Driven Development. The language that is used for writing specifications is cucumber. `given/when/then` approach. 

#### What about the Long Haul?
People think innovation stops once the product is done. Maintenance isn’t really the factor they think about. But the thing is, it’s actually the biggest part. Make the product feel alive, making it breath, all that. If it doesn’t do that, who will use it after the creation of it? 

#### Architecture
* Input Adapter
	* Security
	* User Interface
	* Representations
* Application Service
	* Security
	* Transactions
	* Task Coordination
	* Use Case Controller
* Domain Model
	* Entities
	* Business Logic
	* Domain Events
* Output Adapter
	* Repositories
	* Documents
	* Cache
	* Messaging

So, this is how all the things are split up into. So we need to see IDDD to actually get the best of this. 
 You can architect the app with other than `Adapter` and `Port` patterns.
* Event-Driven Architecture; Event Sourcing
* CQRS
* Reactive and Actor Model
* REST
* SOA
* Microservices -> Yep, DDD bounded contexts are actually the same with this!
* Coud computing
Microservices could be much more smaller, but it still represents a domain model of the bounded context. It’s just inside another deployment. That’s all. So I think if you do DDD, micro services is just right there. That’s why everyone talked about DDD then. Well anyways, for microservice architecture, I think the important thing is communication, between the micro services, the gateway, log aggregation, etc. 

### Summary
* Some of the major pitfalls of putting too much into one model and creating a Big Ball of Mud
* The application of DDD strategic design
* The use of Bounded Context and Ubiquitous Language
* How to challenge your assumptions and unify mental models
* How to develop a Ubiquitous Language
* About the architectural components found inside a Bounded Context
* That DDD is not too difficult to put into practice yourself!

## Strategic Design with Subdomains
If you find a DDD project, you’ll find multiple bounded contexts. One of them will be a Core Domain, and the others will be Subdomains. Mostly, a Subdomain is mapped 1:1 with a Bounded Context. There will be times when multiple Subdomains go in a Bounded Context which is not a optimal approach. So we can understand the Core Domain is a clean Subdomain?

### What Is a Subdomain?
It’s just a subpart of your entire business domain. You can’t just understand a huge business domain without splitting it up into parts. So I think this will be way better used in the problem space since it lets you split the business domain into subdomains. And then, we use bounded context to actually implement the subdomains. 

### Types of Subdomains
There are three primary Subdomains in a DDD project.
* Core Domain
	* Perhaps the most important part of DDD and subdomains. This is where the key, the identity of your companies domain comes in. If you don't separate your other things with this, you're company will struggle with a big ball of mud. Well anyways, There's only one of these in your products, and of course there will become more when you make other huge projects. 
* Supporting Subdomain
	* It's just a supporting dude. Which actually supports your Core Domain, or whatever. There's no off-the-book solution for implementing supporting subdomains. So you have to decide whether this is really needed, and will it aid your other bounded contexts. Also, this part can be outsourced to others!
* Generic Subdomain
	* These kinds do have off-the-book solutions since they're generic. So this isn't the actual part that companies should invest in unless they really need it. Most of the elite developers go inside he Core Domain. So I bet this part would be like, some internal tools and whatever. 

### Dealing with Complexity
The first thing you have to do when you see something monolithic, you must separate them into bounded contexts. You have to start seeing whether it makes sense with the legacy system, and the system you are building. If the legacy is too big, it is an unbounded context, still, you have to try and separate the interests in to subdomains. Then you find a way to actually integrate with the unbounded context. 
 When you want to add a domain model inside a Core Domain, or Subdomain, you have to make another package for it. Then it'll know that it's a core or sub. 
 I think I should use `seggregate` more than `separate` lol. Well anyways, this type of thing you're doing is usually done in the solution space. Where the actual implementation is. 

### Summary
* What Subdomains are and how they are used, both in the problem and solution space.
* The difference between a Core Domain, a Supporting Subdomain, and a Generic Subdomain.
* How you can make use of Subdomains while reasoning about integration with a Big Ball of Mud legacy system
* The importance of aligning your DDD Bounded Context one-to-one with a single Subdomain. -> Bounded Context : Subdomain = 1:1
* How you should segregate a Supporting Subdomain model from your Core Domain model using a DDD Module when it is impractical to separate the two in different Bounded Contexts. 

## Strategic Design with Context Mapping
The integration between bounded contexts is called `Context Mapping`. Okay, so when you two or more bounded contexts to integrate with each other, remember that most of them are other teams. Just on first thought, you’d might have to know their language, how their team operates, and all that other stuff. How to actually integrate with code? 
 And then, the solution of all this is actually, there’re different kinds of mappings. So we’ll solve it with those mappings!

### Kinds of Mappings
Integration or relationships!

#### Partnership
If there’s a partnership between two teams, the line is very thick. Since you guys have to synchronize each others work, do CI together, and even participate in conferences together. This partnership will last if they’re both beneficial. If not, the teams must get split up and seek another bounded context to get mapped with.

#### Shared Kernel
Woah, this is pretty dependent between the two bounded contexts. They share a kernel, which will actually share a domain model and repository, etc. But, the shared kernel must be maintained by one of the bounded contexts. If they both do it, it’ll be a disaster. So one team shall take the leadership, and the other should just use it and just give opinions or try to integrate with each other when they really need to.

#### Customer-Supplier
Well it’s just upstream(supplier) and downstream(customer) style. It’s actually just a typical team relationship. The customer comes and tells what they need, and the supplier gives it out when and what they want. Done.

#### Conformist
Well this is when there’s an upstream and a downstream team, but the upstream team can’t help or give the things that the downstream team needs or wants. It’s because it’ll possibly be a hardened domain and can’t actually change it. 

#### Anticorruption Layer
This is a very defensive context mapping relationship. The downstream team creates an anticorruption layer and translates the communication between the upstream. So the upstream does nothing and the downstream does all the work! 

#### Open Host Service
A team will just create an Open API for other teams to just use. I think this is a really good solution since there’s not much to do for the other people. Well, still they’ll need to create an anticorruption layer, and the open host service will change! They’ll have to do a lot of work to actually do maintenance. 

#### Published Language
Well this is actually stuff like giving data as JSON, XML, etc. So an API could be in ways like giving an SDK, or things like that. But if it’s some kind of unified language, a published language like JSON, people would really easily use your bounded context!

#### Separate Ways
I don’t think this is a good practice, but there are times that you’ll have to do things without integrating. You’ll just have to make your own. 

#### Big Ball of Mud
MONOLITHIC ALERT! 
Whatever you do, don’t speak that language! Just make an anticorruption layer against the legacy system. That’s how you integrate with big balls of mud. 

### Making Good Use of Context Mapping
So it’s HTTP, RPC with JSON, XML, SOAP, RESTful interfaces -> Messaging Interface using queues, pubsub, and the worst, database or file system integration. If you have to integrate with a database, you should make an anticorruption layer to isolate your consuming model. 
 Next, we’ll look at the three most trustworthy integration types. Least to most robust! 

#### RPC with SOAP
Remote Procedure Calls and Simple Object Access Protocol. With these two, it feels good to just use them. The client will really love to use it since it’ll be as easy of just using a function. But the thing is, even though the upstream implements an open host service and with a published language, that doesn’t mean the client should do nothing and just use it and make it get coupled with that bounded context. You need to make an anticorruption layer to protect the things that will happen when the RPC doesn’t work. If it has to go through the network, no matter what that means there’s a chance of something to go wrong. 

#### RESTful HTTP
Everything’s the same with RPC with SOAP but the different thing about this is, the domain model and resource that the RESTful interface is giving will change everything if you want to change the resource. 
 A dude that uses the RESTful HTTP bounded context will mostly be a conformist type of mapper. It’s because, that when you change something, you have to let everyone know, and you can’t really just do everything for all the other bounded contexts want you to do. 

#### Messaging
I didn’t know that this way of messaging would be a really robust way. Since the things you are doing are going to be even-driven and non-blocking, it’s actually less coupling. You don’t have to ‘wait’ for the other or another to finish or give a response. All you need to do is just throw it, and the dude that’s subscribing will get the message and process it. 

#### Going Asynchronous with REST
I wonder if polling is really the way. If we keep on polling, that won’t actually make it robust. It has to be event-driven to actually meet the robustness we want. The author says it’s better stated in IDDD, so let’s read it and see how the author does it.

#### Avoid Integration Train Wrecks
This means, if all the clients and services request in a synchronous way, and if it needs that data and gets all the data synchronously, there will be a train wreck. This train wreck means, when one of the synchronous requests doesn’t work, the other dudes won’t work either. It’s just done and needs to do another request! So this is solved by using asynchronous messaging. 
 I sure need to find out whether what a `Domain Event` is. I need to know what this does and how it’s implemented to actually know pub-sub messaging. Also, need to find out what an `Aggregate` does in the bounded context.

#### Are Domain Event Consumers Conformists?
A `Published Language` is a schema? Just a language like JSON? That’s all? Okay, if you want to make your bounded contexts integrate without being a conformist, it’ll depend heavily on the quality of the chosen messaging mechanism. The messaging mechanism should support `At-Least-Once Delivery`. So this is a type of eventual consistency right? 
 The bounded context subscribing, must be implemented as an `Indempotent Receiver`. It’s a reactive pattern I guess. You can learn it from here: [Reactive Messaging Patterns with the Actor Model: Applications and Integration in Scala and Akka: Vaughn Vernon: 9780133846836: Amazon.com: Books](https://www.amazon.com/Reactive-Messaging-Patterns-Actor-Model/dp/0133846830/ref=sr_1_1?ie=UTF8&qid=1543549715&sr=8-1&keywords=reactive+messaging+patterns+with+the+actor+model)

### An Example in Context Mapping
If you make an object from a bounded context, the subscribers of that could get the message and add a new one in their database. Which is pretty cool since they get the message when something changes. Instead of actually crawling that stuff right? This isn’t bad!
 
#### Enrichment versus Query-Back Trade-offs
Enrichment of the domain event could lead to a huge layer of domain events. It’s good to keep the domain events thin and actually give a query-back option. Sometimes you’ll need to balance both. 

We’ll go look at `Domain Event` design details in Chapter 6!

### Summary
* About the various kinds of `Context Mapping` relationships, such as `Partnership`, `Customer-Supplier`, and `Anticorruption Layer`.
* How to use `Context Mapping` integration with RPC, with RESTful HTTP, and with messaging
* How `Domain Events` work with messaging
* A foundation on which you can build your `Context Mapping` experience.

## Tactical Design with Aggregates
We’ve covered all the things we need for strategic design. Bounded Contexts, Subdomains, Context Mapping, etc. 
 Now, we have to get deeper and see the solution space. The solution space inside the bounded context, which is `Aggregates`.

### Why Used
The picture in the book shows you a bounded context with some red circles. The marked circles are Aggregates, and the ones that aren’t are Value Objects. So I’ll have to know what an Aggregate and a Value Object is, and what actually defines them.

#### What Is an Entity?
An Entity, is something unique. Something that you can’t find from the others. This is the actual source of what you’re trying to represent. Nothing other than an Entity. The entity will be mutable at most times, but it can be immutable. 

Anyways, what is an Aggregate? It can have multiple entities and some value objects. An aggregate must have a root aggregate. Which is an entity. 

#### What Is a Value Object?
A value object covers the quantity or measure of an entity. It’s just an object that represents a value. It’s supposed to be immutable, and it doesn’t have a unique identity. 

I’m thinking, an aggregate has all the entities, and itself is an entity, it’ll have mappings like many-to-many, one-to-many, one-to-one right? Also, there’ll be some value objects that actually help represent some of the values, but it’s not an entity. But, does the entities always have to be mapped by the root aggregate? If it doesn’t fit in and it has to be its own entity, does it have to be another aggregate? 
 Transactional consistency. That’s the whole thing! So that’s how you model your models. That’s how DDD goes. Dang, this sure really is a great way to architect software, it makes sense how I made all that stuff! User inside user, now I get it. This also can be used in any language and anywhere. Atomic transaction consistency is the key of how you’re going to define the root aggregates and all the entities that go below it.

#### Broader Meaning of Transaction
A transaction doesn’t always mean a database transaction. The transaction can be atomic, or it can’t if you use the Actor model because it’s event sourcing. In event sourcing, you can’t make strong consistency. It’s eventual consistency. So in a broader meaning, it’s about a root and its entities doing a transaction, whether it’s strong or eventual consistency. 
 An aggregate’s transaction is mostly thought out of a business action. If a business action was executed, then it most be done absolutely, or else it’ll fail. Plus, there are times when you need to get separate transactions done together, or done after a transaction, like needs to react to events. We’ll get along with that in a later chapter.

### Aggregate Rules of Thumb
Basics rules of aggregate design:
1. Protect business invariants inside Aggregate boundaries
2. Design small Aggregates
3. Reference other Aggregates by identity only
4. Update other Aggregates using eventual consistency

I need to study how to handle errors in eventual consistency. Also by identity means, only the PK? Just referencing other aggregates by their PK. I think that makes sense since you don’t need to have anything else of their information. If you know something else, that’s actually something wrong with the data modeling. 

#### Rule 1: Protect Business Invariants inside Aggregate Boundaries
If there’s something inside a transaction, and must be done, well, it’ll mostly be just a business operations and those operations won’t change. Those business invariants must be protected, which means they should be atomic. That is the business logic, and that logic must be consistent, atomic, and must be done. Or else it won’t be invariant. 

#### Rule 2: Design Small Aggregates
SRP comes over here. Even though you get to see a Aggregate that might become root and king, you have to think again and see whether it’s going to get too big or not. If it becomes too big, you need to split them apart. So it’s better to thing of the aggregates to have its own root, just split them and see whether they do one thing or not. The root aggregate must do one thing. If it represents too many things by itself, then it’s not doing one thing. 

#### Rule 3: Reference Other Aggregates by Identity Only
If you just have a reference for each of the aggregates, then it’ll be way easy, more robust, low memory, faster for datastore to fetch the data. Also, you can use any kind of database. It’ll be really easy to adapt the modeling to any type of database. 
 All you need to do is, give a reference id, and done. So think of referencing with only identity. ID! 

#### Rule 4: Update Other Aggregates Using Eventual Consistency
You can use message mechanics to give Domain Events to the Aggregate you’re trying to interact with. That Aggregate will subscribe to the Domain Event and it’ll save all the things with it. But I’m not sure whether this eventual consistency thing is safe or not. 
 I think it’ll be best to think about how Domain Events work and how to implement a messaging mechanism in the red book. If I get to actually implement the stuff with that, that project will be really, really, really cool.

#### If Eventual Consistency Seems Scary
You can use one database atomic transaction between the aggregates, but you’ll soon see that’s not the way. You’ll fail more often, and it’ll be safer to use eventual consistency. It does make sense since it doesn’t do too many things with the database at once. With eventual consistency, you only do one thing at a time. 

### Modeling Aggregates
Anemic Domain Model. These are just POJOs. But I think in DDD, they’re trying not to actually use them. Getters and setters don’t really mean anything. And if they have no business behavior, that means it’s not business centric. It’s just technical jargon. We need to think of it in the business way! Then, we’ll implement it with business logic. You have to implement your business logic inside the domain model. Don’t give it to the application service, or delegate it to utility classes.

#### What about Functional Programming?
Okay, in functional programming, Anemic Domain Models are actually right. FP separates behavior and value. But OOP adds them up. It controls state and behavior at once! So that’s why only get/set dudes are bad in DDD. But if it’s in FP, it’s good. 
 I want to know how to use DDD in a functional programming manner. It’s still really cool how you can adapt FP into DDD. 
[domain driven design - Is it still valid to speak about anemic model in the context of functional programming? - Software Engineering Stack Exchange](https://softwareengineering.stackexchange.com/questions/317587/is-it-still-valid-to-speak-about-anemic-model-in-the-context-of-functional-progr)
[Domain Modeling Made Functional: Tackle Software Complexity with Domain-Driven Design and F# by Scott Wlaschin |  The Pragmatic Bookshelf](https://pragprog.com/book/swdddf/domain-modeling-made-functional)

The technical things to know when you implement an Aggregate! If it’s an entity, you need to extend it from a base entity class. Also, the references that you put in like `somethingId` are actually classes! They’re value objects that have the identifiers of that entity. That’s how JPA things might work around all that. Also, POJOs are not aloud. Remember, you can implement getters, but you must implement business logic for setting, mutating the entity. If you just put the setters around, then you’ll implement the real mutation outside the object everywhere. 

#### Choose Your Abstractions Carefully
Don’t abstract everything up. Also, you have to identify the things that you can know in the future, and not. If you keep on abstracting the stuff that you might need, it’ll become a monster and you’ll never get to finish. 
 Remember, Ubiquitous Language is the key. You have to name your models with the domain experts, and just finish it over there. Don’t try to abstract it with container, or whatever. 

#### Right-Sizing Aggregates
1. Design small Aggregates
2. Protect Business Invariants Inside Aggregate Boundaries
3. Ask the Domain Experts how much time may elapse until each of the reaction based updates may take place.
4. If the aggregates need immediate updates, then you should merge those two aggregates into one.
5. If the aggregates can be persisted in a matter of seconds/days/weeks/etc, use eventual consistency.

It’s the business that draws whether you need strong consistency, or eventual consistency. Evaluate the things that really need them. If you make a lot of stuff eventual consistent, you can make your aggregates real small, robust, and self-explaining. 

#### Testable Units
Unit testing is different from validating business specifications(acceptance tests). 

### Summary
* What the Aggregate pattern is and why you should use it
* The importance of designing with a consistency boundary in mind
* About the various parts of an Aggregate
* The four rules of thumb of effective Aggregate design
* How you can model an Aggregate’s unique identity
* The importance of Aggregate attributes and how to prevent creating a n Anemic Domain Model
* How to model behavior on an Aggregate
* To always adhere to the Ubiquitous Language within a Bounded Context
* The importance of selecting the proper level of abstraction for your designs
* A technique for right-sizing your Aggregate compositions, and how that includes designing for testability

#reading/books