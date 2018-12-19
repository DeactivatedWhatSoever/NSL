# The Art of Monitoring
Finally I’m reading this book. It’s about time lol. If I don’t get this done, I’ll never be able to actually monitor an app! Or anything! Let’s find out everything we can. Remember, logging is important, but the reason we’re logging is to actually get data to ‘monitor’. So the biggest thing to get in your head is, monitoring! From now on, I’m thinking of just using <h1> headers for the title AND the chapter titles. I think that feels right. 

# Introduction
`/var/log/*.log` -> So there’s a lot of logs over here right? The reason monitoring became so important is because of the evolution of the system engineering era. Virtual machines, cloud computing, and now containers. Because of that, we need to monitor so many things. 
 Now we need to find a way to monitor these dynamic clusters of applications and physical machines.

## Welcome to the Art of Monitoring
Enabling monitoring and metrics, better fault detection and gain insights into performance. How to monitor stuff in VMs, containers, the cloud, etc. 

## What is monitoring?
Monitoring is the tools and processes by which you measure and manage your IT systems. The metrics actually give you business value. Because of the metrics generated from your applications and systems, it’ll let you know how much people really love your creation. 
 We have two customers. The business and Information Technology.

### The business as a customer
Monitoring enables the business to know whether they’re doing right or wrong. Because the metrics shows the experience of the user. Because of this, business is enabled or shut down. 

### Information Technology as a customer
Woah, without monitoring, you’re not doing your job! The first thing to know is, the state of your infrastructure. Also, use those metrics to find any faults or other issues and resolve them!

## What does monitoring actually look like?
Monitoring evolution levels:
* Manual, user-initiated, or no monitoring
* Reactive
* Proactive

### Manual, user-initiated, or no monitoring
It’s the stage where monitoring is done manually, user initiated or not done at all. This makes it really hard to create business decisions, measure the quality of the application and systems or etc. Mostly it’s just for downtime detection, or just checking whether the service is up or not. Basically the same thing, and this type of evolution is mostly done in small organizations. Where there’s limiting staff, or actually no IT staff at all!

### Reactive
Mostly automatic, and some manual or unmonitored components. The data that is provided over here has a lot of raw data. It’s not that much refined. The data that provides the important information of business value is pretty much refined reactively. When people need it, and some thing occurs, then they start making the metrics and refine it, and then visualize it. This pretty much comes in small to medium enterprises and small IT organizations inside a bigger enterprise. 

### Proactive
Monitoring is considered core to managing infrastructure and the business. This means, the business people actually do data-driven decisions! All the checks will focus on monitoring business values and application performance rather than disk and CPU. But I have a question. Doesn’t the data related people do this stuff? The operations team will need these metrics, and the metrics that actually show business outcome. It won’t be just database queries. How can we know? To know business values, we need to communicate with someone to actually define that’s a business value. Do we interact with data analysts? Or business intelligence? It’s pretty much hard to think at this state. I hope to get this answered in the book. 
 Monitoring is measuring quality of service and customer experience. This is a typical thought, but web-centric organizations and mature startups are in the proactive state. Mostly everything is done by the operations team, but the new applications can be delegated to the application developers. Products won’t be out if we don’t have monitoring!

## Model distribution
Reactive: 60%, Proactive: 10%, Manual: 20%
The reactive organizations have a stereotype of a monitoring infrastructure. A tool called `Nagios` is in the middle and monitors the hosts. It sends emails, SMS to alert when something’s wrong, and serves as the main dashboard. This model doesn’t really serve the business or the IT. It’s really just well, is the server up or down? Just that.

## Becoming Proactive
It’s just about making sure that your monitoring is giving business value. And to give business value, you need to get metrics. If the metrics are collecting, sevice is good, if not, it’s bad. 
 The most important thing that monitoring should give is state and performance. Remember, if we don’t know the state of our infrastructure, there’s no use in monitoring. We’re not doing it right. Right to the next thought of state is, whether our infrastructure is doing well. By well it means performance. By performance, it means saving costs, seeing where the problem is, giving business value. 
 From now on, we’ll make a monitoring framework throughout this book with a company called Example. Let’s get it!

## What’s in the book?
Really, just a lot ot stuff about the chapters. We’ll mostly be building a monitoring framework, get some metrics and events from a tool called Riemann, visualize it with Graphite and Graphana, collect stuff from hosts with collectd, then visualize it, then use ELK to get logs and stuff, learn how to monitor docker containers, and then adapt these skills to an example application and done. 
 The appendix just gives us some information about Clojure since that’s the configuration language in Riemann

## Tool choices
Just open source and free tools. They’re chosen by experience debates and all that stuff. You can find other tools that are great for you. Search it and just share it to the world. Or make one yourself. 

#reading/books