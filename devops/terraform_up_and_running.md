# Terraform: Up & Running
Trying to find out about Ansible and Terraform. See which is good for using for when. I'm pretty much new to configuration management tools, and I'm so late for using Chef or Puppet. Let's investigate!

# Why Terraform
The things we're going to look at the most:
* The rise of DevOps
* What is infrastructure as code?
* Benefits of infrastructure as code
* How terraform works
* How terraform compares to other infrastructure as code tools

## The Rise of DevOps
All of the manual stuff, hard to scale, distrust between devs and ops, etc. Lead to the DevOps movement. It's a culture, automation, measurement, and Sharing. CAMS.

## What Is Infrastructure as Code?
There are four broad categories of IaC tools:
* Ad hoc scripts
* Configuration management tools
* Server templating tools
* Server provisioning tools

### Ad Hoc Scripts
With great freedom comes great responsibility. You can use any kind of language and any kind of way to actually make these scripts. But it's hard to maintain since you could be the only one using it. Also writing it. It will have so many styles since people write scripts in the way that they are comfortable with. How could we automate this with an IaC tool?

### Configuration Management Tools
Chef, Puppet, Ansible, and SaltStack === Configuration Management Tools. 

Benefits:
* Coding conventions
* Idempotence
	* Code that works correctly no matter how many times you run it is called `idempotent code`.
	* Also could mean, a lot of if checks lol.
* Distribution

### Server Templating Tools
Docker, Packer, and Vagrant. What can a configuration management tool do for server templating tools like Docker? Basically, I'm not sure whether to even use them both together lol. I think it might be related to provisioning.
* Virtual Machines
	* Define VM images as code using tools as Packer and Vagrant
* Containers
	* A container emulates the user space of an operating system.
	* You can define container images as code using tools such as Docker and CoreOS rkt.

So you could use server templating for the servers that could run the container engine and just pull down the images on and run! Also, you can actually template Kubernetes, Docker Swarm, or any other container orchestration tool. That'll actually be great since you'll keep on adding slaves and masters when you scale. 

### Server Provisioning Tools
Terraform, CloudFormation, OpenStack Heat are responsible for creating the servers themselves. Hmm... creating RDS ... I wonder if that's really a good idea. So hard to define lol. 

## Benefits of Infrastructure as Code
* Self-service
	* The developers can do the operations stuff themselves. Which means sort of `self-service` right? If the DevOps guys automate so many things, then the developers can just pull down everything by themselves. NoOps FTW!
* Speed and safety
	* No manual operations
* Documentation
	* Acts as documentation for how the infrastructure is setup
* Version control
	* Yep, VCS!
* Validation
	* How could we test IaC? 
* Reuse
	* All the code will become modules.
* Happiness

## How Terraform Works
Oooh! It's implemented in Go!
Anyways, Terraform is perfectly suitable for cloud infrastructure. I wonder if this has on-premise providers lol. Obviously, anyways, remember, Terraform gives you the ability to provision, and also create the actual servers. 

`terraform apply` will do everything!

## How Terraform Compares to Other Infrastructure as Code Tools
Trade-offs to consider:
* Configuration management versus provisioning
* Mutable infrastructure versus immutable infrastructure
* Procedural language versus declarative language
* Master versus masterless
* Agent versus agentless
* Large community versus small community
* Mature versus cutting-edge

### Configuration Management Versus Provisioning
Both can actually do all. But it's whether you use a server-templating tool or not. If you don't use server templating, you could actually just use terraform for everything or terraform plus a configuration management tool. If you use Docker or Packer, then you could just do the provisioning with Terraform. Simple as that. 

### Mutable Infrastructure Versus Immutable Infrastructure
All the configuration management tools actually mutate the server by default. You can force them to be immutable by making them provision. 
 Mutability in any scope can give side-effects. It may work on the test server, but it may not on the production server. 
 Immutability also has its downsides. It'll take a long time to actually deploy the whole infrastructure for a small change. But if you use Docker, I don't think so! Anyways, I’m going to go with immutability.

### Procedural Language Versus Declarative Language
Procedural code only cares about the state of the start. It just does what the code says. Repeat! 
1. Procedural code does not fully capture the state of the infrastructure
2. Procedural code limits reusability

The declarative approach always represents the `last` state of the infrastructure. So just change the configuration, and you get that right away on the whole infrastructure. Because it knows it's diff! 

Does it check the difference? Yes = Terraform, No = Ansible.
Downsides would be the limits of the language. 

### Master Versus Masterless
Chef, Puppet, and SaltStack
Master drawbacks:
* Extra infrastructure
* Maintenance
* Security

### Agent Versus Agentless
Chef, Puppet, and SalStack
Agent drawbacks:
* Bootstrapping
* Maintenance
* Security

### Large Community Versus Small Community
Welp, of course picking a good community is a really important factor. But mostly, I think about the StackOverflow questions and blog posts for great tutorials and trouble shooting case studies. 

### Mature Versus Cutting Edge
So Terraform came out on 2014, and Ansible 2012. Pretty much, but I can't believe these things came out so long ago. This means Korea is really behind. The system administrators could've started using Puppet at least. Also DevOps could be thought out from then. 

## Conclusion
Headers: Source, Cloud, Type, Infrastructure, Language, Agent, Master, Community, Maturity
Ansible: Open, All, CM, Mutable, Procedural, No, No, Large, Medium
Terraform: Open, All, Provisioning, Immutable, Declarative, No, No, Medium, Low

#reading