# Ansible: Up & Running
I need to know a configuration management tool. Since Chef and Puppet are like out of the picture, and most of the people that I know use Ansible and Terraform, I think it’s time for me to learn both of them. Also, I need to know the history of these tools to actually know why they came out. That’ll explain why there’s so many tools for configuration management. 

# Introduction
I think I need to get sold for configuration management first since I don’t know what the hell it is. I only have the idea that it’s just something for immutable infrastructure. And I don’t know whether Ansbile will cover containers and stuff. Since containers don’t really need configuration management right? All the machines, the VMs, still, there’ll mostly be just containers going up instead of actually doing something with the VM. 

## A Note About Versions
`2.3.0.0`. An ansible is a fictional communication device that can transfer information faster than the speed of light. That’s where the name came from!

## Ansible: What Is It Good For?
Configuration management is writing some sort of state description of our servers. It checks whether the right packages are installed, expected values and permissions, right services are running and etc. 
 Oooh didn’t know Ansible could do deployment! But I’m not sure it’s good to let one tool do a lot of things. Is it best to just let Ansible do configuration management and give Fabric a chance and let it to deployment? It’s totally SRP if we do it in the latter way. I think I need more thought on this.
 `Orchestration` is actually caring about the order of how the infrastructure spins up. Yes, orchestrating is about order! You do this at that time! That’s orchestration! Oh, and Ansible is good at that. (What about Terraform?!)
 `Provisioning` is just spinning up a new virtual machine, in the way you configured!

## How Ansible Works
In ansible, a script is called a playbook. The syntax is YAML! It's cool how when you run an ansible playbook, it goes into the servers and runs in parallel. The more interesting part is how it waits for the tasks to complete one by one. It insures whether all your servers get configured at once, or none. That'll make your fleet, or cluster more immutable. I like it.

## What's So Great About Ansible?
The good part!

### Easy-to-Read Syntax
The author put it well. `Executable Documentation`. 

### Nothing to Install on the Remote Hosts
I wonder how Ansible is a push-based tool but it doesn't install anything like an agent on the hosts! I think the reason Ansible uses 2.7 is because all the Linux distributions have Python 2.7 installed. That means all you need to is just simply install a few dependencies and you're on. 

### Push Based
Pull based configuration management tools: Chef & Puppet.
Let's see the process!
1. You: make a change to a configuration management script.
2. You: push the change up to a configuration management central service.
3. Agent on server: wakes up after periodic timer fires
4. Agent on server: connects to configuration management central service.
5. Agent on server: downloads new configuration management scripts
6. Agent on server: executes configuration management scripts locally that change server state.

Basically, the agents are polling against the central server and when the central server has some changes, it'll just get it and apply the new configurations. 

In contrast with Ansible!
1. You: make a change to a playbook
2. You: run the new playbook (`ansible-playbook` command)
3. Ansible: connects to servers and executes modules, which changes server state

Pull based systems will be able to get their strengths on dynamic environments. If we spin up something, the agent will automatically do everything for us. But what about Ansible? To this push based system, the user needs to run the playbook. Can this be automated? Yes. We'll find out further in the book.

### Ansible Scales Down
It scales down. If you want to do one, you just run the script for that one. "Simple things should be simple, complex things should be possible."

### Built-in Modules
Ansible has some cool modules that actually do the installing, restarting a service, or copying files. Even making users and all that stuff. 
`Idempotent` vs `Convergence`. It's whether check before run, or run multiple times until it gets to the desired state.

### Very Thin Layer of Abstraction
Ansible doesn't have abstractions for package managers or anything like that. Some configuration management tools may have their platform specific abstractions to make the user a bit more comfortable. I think it’s pretty much a rare condition to mix a lot of operating systems. 
 With Ansible having no abstraction layers, it lets us dig in even more faster since we just need to write the playbooks for the desired operating system. 

## Is Ansible Too Simple?
It maybe simple, but it's powerful. It has everything for us to actually do the configuration. Also, Ansible makes SSH scalable with multiplexing. 

## What Do I Need to Know?
Basic system administration tasks.
* Connect to a remote machine using SSH
* Interact with the Bash command-line shell (pipes and redirection)
* Install packages
* Use the sudo command
* Check and set file permissions
* Start and stop services
* Set environment variables
* Write scripts (any language)

## What Isn't Covered
Stuff other than the basics. This book isn't an exhaustive list. It's here to let us learn about Ansible. The basics!

## Installing Ansible
`brew install ansible`. Since I'm macOS!
There are a lot of guides out there to install Ansible for other systems. Just use them when you need to install it.

## Setting Up a Server for Testing
You can set it up anywhere, but the most cost-effective way is to just make a VM in your own machine.

### Using Vagrant to Set Up a Test Server
```sh
$ vagrant init ubuntu/trusty64
$ vagrant up

# Check ssh configuration
$ vagrant ssh-config
```

### Telling Ansible About Your Test Server
```sh
# Specify the arguments to SSH
testserver ansible_host=ec2-203-0-113-120.compute-1.amazonaws.com ansible_user=ubuntu ansible_private_key_file=/path/to/keyfile.pem
```

If you're using the `ansible` command, it's for ad-hoc stuff. Don't use it all the time!
`$ ansible testserver -i hosts -m ping` -> Add `-vvvv` for debugging needs!

### Simplifying with the ansible.cfg File
We'll put some general configuration in the `ansible.cfg` file. Ansible checks the following places in order:
1. File specified by the `ANSIBLE_CONFIG` environment variable
2. `./ansible.cfg` (ansible.cfg in the current directory)
3. `~/.ansible.cfg` (home directory)
4. `/etc/ansible/ansible.cfg`

You can do so many things and also make so many modules. The modules can be basically used on command lines. It's so cool lol.
```sh
$ ansible testserver -m ping
# -m command can be ommitted. It's the default!
$ ansible testserver -m command -a uptime
# When you need spaces
$ ansible testserver -a "tail /var/log/dmesg"
# sudo!
$ ansible testserver -b -a "tail /var/log/syslog"
# Install nginx
$ ansible testserver -b -m apt -a name=nginx
```

## Moving Forward
Time to learn `playbooks` in the next chapter!

#reading/books