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

#reading/books
