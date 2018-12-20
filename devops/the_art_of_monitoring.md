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

# A Monitoring and Measurement Framework
The basics of basics! Data collection, metrics, aggregation, and visualization. After that, we collect application and business metrics. 
 A new architecture … ! It looks really cool. The monitoring framework is on top, and the business logic, application, operating system sends events, logs, and metrics to the event router. Then the event router stores those events, logs, and metrics to stores, graphs, and do alerting. Which is the destinations of them. It’s pretty much a one way architecture which is easy to think about. It’s unidirectional! What our framework is going to do:
* Allow us to easily visualize the state of our environment
* Be event, log, and metrics-centric
* Focus on “white box” or push-based monitoring instead of “blackbox” or pull-based monitoring. 
	* What is pull and push?
* Provide contextual and useful notifications

## Pull versus Push
A pull based system mostly represents `Nagios`. The agents generally queries the components being monitored. So it just checks the host whether it’s alive or not. The dude that’s pulling is `Nagios`. The application won’t know, only `Nagios` will. 
 With pushed based systems, the hosts are going to be the emitters. They’ll keep on sending the data and they’ll have their own distributed data over there. So the monitoring system won’t need to be central. Emitters can report when they are really available. So if the emitter spots giving us stuff, that means it’s actually dead. And also, since they’re all sateless, we don’t need to care about mutation. Plus it sends data as soon as it’s generated. Just like logging right? 
 Push based systems also have security benefits. Because they don’t have to listen to servers, that means they don’t event have to open a port. So no network attacks for that particular port. That means we just need to whitelist the url or connection that we need to emit. 
 If we ever get to use Pull based systems, we’ll be using it for just uptime checking. Health checks! That’s all!

## Blackbox and Whitebox
Blackbox monitoring is actually just hitting your service from the outside. Leaving your service, application as a blackbox. So you’ll just check its health whether it returns a 200 OK or some sort of response data and etc. On the other hand, whitebox monitoring is actually going into your server. All the business logic, application metrics, events, logs will be emitted and we’ll actually know the state of the application in a more rich way. Even those dashboards will be viewed by business people too! 
 Blackbox doesn’t always have bad stuff, they are used when 3rd party libraries or software are used. And all the things that we don’t have control of. Also, trying to check security issues is a really good way too. Because all the hackers will be hacking our server as a blackbox. If they have the whitebox, that means they’ve already hacked us. 

## Event, log, and metric-centered
* Events: We’ll generally use events to let us know about changes and occurrences in our environment.
* Logs: Logs are a subset of events. While they’re helpful for letting us know what’s happening, they’re often most useful for fault diagnosis and investigation. 
* Metrics: Of all these data sources, we’ll rely most heavily on metrics to help us understand what’s going on in our environment. Let’s take a deeper look at metrics. 

### More about metrics
Metrics. I don’t know how they look like. Is it just CPU rate? Memory rate? Or IO rate? I’m not sure. I think I’ll have to read through the book and see how it looks like, how it’s defined, and see what’s important. Check state and performance on the same time. Also, you need to keep an eye on notification architecture. It could become spam, and you will start on not looking at it. Let’s check these stuff out!

### So what’s a metric?
Metrics are measures of properties in pieces of software or hardware. It’s a measurement of something. So CPU use rate and all that is actually a metric. What about software? How many threads are running? Or how many transactions? Transaction per second? I think those kinds of things could count as metrics. 
 An observation is a value and a timestamp. Of course with its name, it will become a data point and with that all added up, it’ll be a time series of metrics. 
 It’s important to think of the time interval of saving your metrics. If you save your metrics in a low interval, you could miss out the details. On the other hand you could manage too much data. We have to find the granularity which is right for the specific metric.

### Types of metrics
Let’s see the types of metrics! If you get examples, I think it’ll be best for you to just write them down too. You need to actually get some practical stuff in your head to actually think more. 

#### Gauges
Gauges are numbers that are expected to change over time. 
* Classic CPU, memory, and disk usage. 
* How many people have been on that site.

#### Counters
Counters are numbers that increase over time and never decrease. 
* System uptime
* Number of bytes sent and received by a device.
* Number of logins
* Number of sales in a month
* Cost of sales for a time period

#### Timers
Timers track how long something took. 
* Place a timer on start of a specific method and stop it at the end. 
* Could be first byte to last byte of a request and response.

### Metric summaries
Metrics themselves will not give value to us sometimes. So we use some statistics to make value, and visualize it in a better way. 
* Count o n: We count the number of observations in a specific time interval
* Sum: We sum values from all observations in a specific time interval
* Average: The mean of all values in a specific time interval
* Median: The median is the dead center of our values. Exactly 50% of values are below it, and 50% are above it.
* Percentiles: Measure the values below which a given percentage of observations in a group of observations fall.
* Standard deviation: Standard deviation from the mean in the distribution of our metrics. This measures the variation in a data set. 
* Rates of change: Rates of change representations show the degree of change between data in a time series.
* Frequency distribution and histograms: This is a frequency distribution of a data set. You group data together, a process which is called “binning” and present the groups in a such a way that their relative sizes are visualized.

### Metric aggregation
Aggregate the metrics and you can see the metrics of your whole infrastructure in one view. That’ll let you be able to spot out global issues at a glance. A good example is putting a load balancer and the hosts that are associated to the load balancer. Sudden traffic to the load balancer will sure give the hosts a lot of traffic, and we’ll see whether those hosts can deliver availability even though the traffic rate is high. 

## Contextual and useful notifications
To build a good notification system:
* Who to tell about a problem.
* How to tell them.
* How often to tell them.
* When to stop telling them, do something else, or escalate to someone else. 

What we’re going to focus on in our framework:
* Making notifications actionable, clear, and articulate. Just the use of notifications written by humans rather than computers can make a significant difference in the clarity and utility of those notifications. 
* Adding context to notifications. We’re going to send notifications that contain additional information about the component we’re notifying on.
* Aligning our notifications with the business needs of the service being monitored so we only notify on what’s useful to the business. 

## Visualization
The ideal things of a visualization:
* Clearly show the data
* Induce the viewer to think about the substance, not the visuals
* Avoid distorting the data
* Make large data sets coherent
* Allow changing perspectives of granularity, without impacting comprehension

## So why this architecture? What’s wrong with traditional monitoring?
Traditional monitoring is centric on fault detection. The fault detection over here is done by boolean checks. Just polling objects and see whether they’re up or not. That’s how they try to find state. 
* Experience or learning-based. You implement the same checks you’ve used in the past, or acquired through cargo cult’ed monitoring checks from sources like documentation, example configurations, or blog posts
* Reactive. You implement a check or checks in response to an incident or outage that has occurred in the past.
* Boolean checking.

### Static configuration
Configuring monitoring components statically, will make the system administrator change the configuration when the infrastructure changes. This should be changed to dynamically, of course if the hosts emit it to us, we wouldn’t even need configuration. 
 Additionally, when you configure one host, you have to configure all the other hosts with the same configuration. It absolutely violates the DRY principle. 
 In time, people we know that there will be some false configuration. Because there will be mistakes! We have to change so many configurations when we really need to change something. Because of that, we could have false positives, and we’ll only have to believe that it’s working. Not cool.

### Inflexible logic and thresholds
Thresholds actually gave me a huge spark. If we have `arbitrary` thresholds, we don’t know whether that thing is a real danger, or fault. It could be just a change of infrastructure state because of high traffic. It doesn’t mean that our infrastructure is going down. Remember, `arbitrary` is the keyword in here.
 Boolean variables only let you know whether something is on or off, good or bad, and just two options. We don’t know whether it’s really dead, or whether it’s really bad. 
 That’s why we need to get things done by metrics. 

### Object-centric
You can only check about one object. Which will be a host of some sort. We can’t know about the big picture of our infrastructure, and we’ll need to remember all the hosts that are doing this and that. 
 Even if we group the hosts in some sort, we’ll need other groups and that’ll actually be just a cluster of objects. We could count that cluster as an object and the game goes on. After that, we can’t really react to dynamic stuff.

### An interlude into pets and cattle
In the past, we took care of servers as if they were pets. Sweet names, fixing them up when they get faulty, but nowadays, they’re cattle. If they break, we just kill it and spin up a new one. Make immutable infrastructure so whenever we spin up a new one, it’s the same one that actually just was running. 

### So what do we do differently?
“If a metric is measuring, an event is reporting, or a log is spooling, then the service is available. If it stops measuring or reporting then it’s likely the service is not available. 
* If the metric stops being reported
	* Something stops, that something has something wrong!
* If the value of a metric matches some criteria we’ve developed
	* How are we going to make this smarter? What are we exactly going to develop?

### Smarter thresholds inputs
* Collect frequent and high-resolution data.
* Look at windows of data not static points in time.
* Calculate smarter input data.

I don’t really understand the first two, but I understood the third one. And from now on we’re going to get deeper on the third one. It’s about calculating smarter of the data that the hosts input. Using mathematical and statistical approaches to get meaningful data. 

#### Average
An average actually tells you about the normal distribution of the value you have averaged. But there’s a really important pitfall you have to think of. There’s this old joke where you could drown in a lake that actually has an average of only 10 inches of height. You have to know where the distribution is. If the distribution is on the good side, then it’s good. If it’s on the bad side, the majority of the people are having bad experience. Of course you have to decide what’s good or bad. 

#### Median
The median is the dead center of our values: exactly 50% of values are below and above it. 

#### Standard deviation
It measures the variation or spread in a data set. 

#### Percentiles
50, 75, 99, actually plotting the percentage of the users. See the performance in percentage. Here’s a good example for measuring latency:
* The 50th percentile (or median)
* The 95th and 99th percentiles
* The max value

I think I need to get a grasp of statistics because of this. Well, statistics is used everywhere dude. I think you should just study it lol.

## Collecting data for our monitoring framework
How does spacing an agent-based thing would make it a push framework? So the agent is actually emitting the stuff for you? You call just spitting out the logs and polling those and sending those to another storage is push? I’m not really sure about this. 
* Resource information, like consumption of CPU or memory
* Performance information, like latency and application throughput
* Business and user-experience metrics, like volumes or amounts of transactions or numbers of failed logins
* Log data from hosts, services, and applications

### Overhead and the observer effect
Woah, with the overhead of collecting data, we could actually trigger the observer effect from quantum physics! 

## Summary
* Traditional monitoring
* Push vs Pull architecture
* Monitoring and metrics principles

#reading/books