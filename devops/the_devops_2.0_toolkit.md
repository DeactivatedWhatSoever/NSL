# The DevOps 2.0 Toolkit
The reason I'm reading this book first is because it's practical. I was going to read `Continuous Delivery`, but I thought it'd be way better for me to actually get my hands dirty because I'm actually doing some CI/CD stuff at work and trying to make it better. I really want to make a good development environment for my team mates and let them develop way easier than ever. I want them to say: “Because of working with Robin, I could only focus on the business model and got the job done really fast and got to rest faster! Thanks and I would really love to work with an environment with Robin."
 Yup, an environment with me will establish a great development environment. Also, a great production environment :) Anyways, this book is actually a series and I think it'll be best for me to read them all since I think this author cares a hell lot about DevOps and the tools we need. If I get to know everything about DevOps, I want need to think about infrastructure stuff when I make my own products. I'll make my own development environment! Let's go!

## The DevOps Ideal
The author said he mostly failed on improving the systems that he tried to improve. I understand that too. Mostly, it'll be failures. And from those failures you'll learn, and you'll get to make a great success in some time when you really need it. If you have a lot of experience, it'll get much easier for you to this and that. It's pretty much hard for me to get everything right over here too. I really want to let everyone make their workflow better. Anyways, let's actually try to make the ideal, and really implement the ideal in real life. There'll be problems when you apply the ideals to the real world, but the thing is, you just have to keep on improving the disadvantages and you'll get to a point where everyone's pretty much in a great routine.

### Continuous Integration, Delivery, and Deployment
To make continuous integration happen, all we need to do is think about the developers who are actually making the product. But the thing is, I don't know how to think when we have backend developers and frontend developers. Of course integration tests can be done with databases and stuff, but how are we going to think about functional tests? Aren't API tests part of integration? It's actually the integration between the backend business logic and the database or whatever other API the server is calling. What about the frontend? So the frontend will have its own unit tests, integration tests. I'm not sure whether they need functional tests since they're integrating with the server. To make functional tests, we need to actually make a user story and that'll be actually the scope for frontend developers. Basically, the backend is integrating with a client, which can be abstracted since we don't need to know what is calling it. All we need to do is give the right data for that request. If you really want a functional test, we need to make test codes that involve both the frontend and the backend. It'll actually be a huge integration test, but that's what they call functional tests. Anyways, for that to happen, we need to have both the environments setup and it must be immutable and reproducible. Also, who are going to write tests for that kind of functional testing? Dunno if the DevOps team will do that stuff. But anyways, DevOps, is actually starting to be like a culture. 
 From delivery and deployment, the other people of other departments need to be inside the loop hole. We can't leave them out since we need to tell them how we're going to deploy our work to the real world. They must be ready, they must get ready, and all that stuff. So it's pretty much really cool how Instagram pulled off like 150 deployments each day. I want to make a company that can do that. Agility is a really important aspect. Anyways, let's improve the system, not just change it.

### Architecture
How to actually do something when the application is so monolithic that it’s hard to test and hard to split something up. You could do a big bang, or keep on changing the monolithic thing one by one. 
 So microservices was the answer to this thing but the problem was, there were a lot of other things that came with it. Deployment, which you had to deploy everything at once, libraries that coupled the services again, well, it was a disaster for the author. But the thing is, he wanted to solve the deployment problem first. For agility.

### Deployments
In the old days, we mostly had a lot of servers and those servers were like real pets. The system engineers cared for them. But now, they shouldn't be seen like precious things. They are just a one time thing. The thing that we have to consider special, is actually the CI/CD pipeline. So VMs and containers came out to make immutable infrastructure and actual deployments weren't just jar files or outputs like that, it was actually a running server that had everything in it. So we could just copy the infrastructure and make a testing, staging, development environment so easily. 

### Orchestration
So orchestration, I still really don't know the true meaning of this word. It's something like doing this and doing that. Puppet and Chef came out in this section. They' configuration management tools. So, we had a lot of the things that we did manually, are now programmable. We programmed all the configurations, and because of that, we were able to make immutable infrastructure. The problem was, there were too many, and it blew up into a pile of shit. Those are the pros and cons. Since Kubernetes is a container orchestration tool, now I start to get it. The servers that you need only need a Kubernetes client and just connect to the Kubernetes master. All they do is run the containers that the master coordinates. The resource manager should do all that stuff. I think `etcd` does that. 

### The Light at the End of the Deployment pipeline
Yep, it's all because of Docker. We finally got a way to actually make immutable infrastructure and make deploying infrastructure plausible. Let's take the red pill and see how this rabbit-hole goes. 

## The Implementation Breakthrough - Continuous Deployment, Microservices, and Containers
With CD(Continuous Deployment), microservices, and containers, we can implement a whole new world combined. Let's find out.

### Continuous Integration
I already know the benefits of CI and I'm trying to adopt it to my team. The real prerequisite over here is actually tests. We need to find out whether our new code works or not, and it goes well with the rest of the code. We have to integrate ASAP, and always. Also, the sooner we know the code cracks, the sooner we'll get to fix it. 

The real things we need in CI:
* Pushing to the code repository
* Static analysis
* Pre-deployment testing
* Packaging and deployment to the test environment
* Post-deployment testing

### Pushing to the Code Repository
When a push or PR goes to the code repository, then there'll be a CI trigger. The CI pipeline will proceed and the developer who made the changes will get the notification when it fails. Because of not giving everyone the notification, it'll be best for the person who actually made the changes to look it up. That'll be really fast. So it'll be best to give a private message which will make the people most responsive.
 Push, commit vs PR. I'm not sure whether it's right to actually just do that stuff. They'll need reviews right? Or if they don't need reviews, it'll be code like real small or actually viewable stuff? But I don't think coding works out like that. There'll be people who want to review the code or want to get it reviewed when they're part of the job is done. How continuous is actually something we need to define and match the consensus with the team. 
 Anyways, most of the CI pipelines start with a static analysis of the code. Let's get to it.

### Static analysis
So, a CI tool is actually responsible for detecting whether the code has changed or not. And then execute the pipeline. So I think it'll be good for you to try and find a nice tool that does that. 
 Anyways, the opposite of static analysis is obviously dynamic analysis, and dynamic analysis is actually some sort of code that executes and analyzes the code dynamically. Really, I don't know what that really means but I hope to find out.
 Static analysis is really easy to apply and it mostly get rids out all the code reviews most people will do. Which is pretty cool. Like lint, white spaces, or matching coding conventions and all of that. Love it. 
 There's a picture in the book and it really is a good picture. I'd love to put it in over here but It'll be better to just have a nice address over here for mental reminders.

### Pre-Deployment testing
Mostly things like unit tests and functional tests come over in here. These are really critical things and must have them in this part. They are the most easy and fast things to actually do over here. 
 Didn't know integration and performance tests don't have a lot of code coverage. But duh, code coverage mostly is done by unit tests and functional tests. Anyways, that's it!

### Packaging and Deployment to the Test environment
Package your code! Make it into a JAR or whatever thing that you do in your programming language, or make a Docker container with just the runtime for your code and the libraries that you need to execute your code. That's done like that!

### Post-Deployment testing
Now, functional, integration and performance tests are run over here. The tests that need to get tested when actually deployed!
 BDD for functional tests, and Gatling for performance? Gotta get to know what Gatling is.
 Well this is mostly the finish line for integration. You could also put in some metrics for measuring code coverage for tests. I think that should be great when we actually need it. 

### Continuous Delivery and Deployment
The most important thing about CD is, the pipeline must have confidence about `no need of manual testing`. It's then, that we can actually deploy the code to production with confidence and actually automate it. If we need manual testing, then we can't really deploy it. 
 To actually make continuous deployment, we can't actually do that if there are politics involved. Like marketing, the business people, they want to deploy it at some time or some place. That actually needs us to have confidence. So certain products or services won't be able to do deployment, but most of them will be able to do delivery. Some teams which actually need manual testing, a QA team, will only be able to have a CI environment.
 We need proxies that determine which release is actually deployed or not. Also, we need to make the integrated software like databases, need to actually work in both versions.
 Since no business decisions or whatever are in continuous deployment, we need a way to actually make sense of the code that are visible to the users. That's where feature flags come in. With these, we can toggle which feature should be on or not. 

### Microservices
Micro means less code to package, test, and deploy. This will also let us run these pipelines in parallel and make a whole system deployment much faster. The thing is, I'm keeping on thinking that this actually is the future. I know that if you have too many applications up when you're app is small, it's not really cost effective. But it'll be great in the future. I'm just thinking, when the app is small, just write it small in monolithic. But when it gets bigger, start splitting them up.

### Containers
Isolation and immutable are the keywords that we must swallow in to understand containers. Because of containers, we could ship our applications in an isolated environment that doesn't change. That's why we can actually have operating systems that have nothing except a runtime of containers. Really, this is the god damn future. I love it. A whole cloud infrastructure could actually run on a container cluster. 
 Hypervisors vs Ixc is the next topic you should go study about. Well anyways, containers are obviously winning.

### The Three Musketeers - Synergy of Continuous Deployment, Microservices, and Containers
Let's get into it. I think the introductory is done now. But the thing is, if we want continuous deployment, we need to make our apps in a microservice fashion, and put them in isolated and immutable environments like containers. 
 `Knowing is not enough; we must apply. Willing is not enought; we must do.`

#reading/books