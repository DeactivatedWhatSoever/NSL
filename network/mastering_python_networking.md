# Mastering Python Networking
The reason I’m reading this book is, I want to know networking. But Python is a really good language to actually do some utility stuff. So that’s why I picked this book. I get to work with Ansbile, get to know about actually fiddling with networking equipment. Create a VM and actually fiddle with SDN’s and all that kind of networking stuff. From this, I think I could actually get to know the socket layers and tinkle with all that stuff. If I get to know that, I bet that I’ll get a whole new understanding of networking. 
 If I don’t get enough, I bet my next book will be that huge networking book in Korea. That CISCO thingy or whatever lol.

## TCP/IP Protocol & Reviewing Python
What do you think you’ll learn in this chapter?
-> I think I’ll just learn about the TCP/IP Protocol and some Python syntax. But I’ll sure learn a lot about the network layers. To actually get to know the TCP/IP Protocol, we actually need to know what it is and how it got needed. So we’ll definitely get on with the 7 OSI layers. Hope I get this right. 

The things that I must understand in this chapter:
* How the internet works
* OSI & Client-Server Model
* TCP/IP, UDP, Protocol Suite
* Python Basics: syntax, types, operators, loops
* Python Advanced: functions, classes, packages

Nothing much about Python, but I must try and get better with understanding network. How the internet works and stuff. 

How does a router route to the opposite side of the world?
-> Layer 3, IP protocol will answer this stuff. It’s in the IP routing thingy. 

### What is the internet?
ISP = Internet Service Provider	
Source Edge node -> Core Network -> Destination Edge Node
Host -> Network Components -> Server
Network Components: things such as routers, switches, cables, etc.

Data Centers
* Main Distribution Frame, MDF
* Intermediate Distribution Frame, IDF
These dudes actually are interconnected. 

The next sort of data centers are cloud data centers.
Cloud data centers need a lot of resource to make them going. So mostly, these kind of data centers try to get as close as to electric generators like dams, and stuff. The closer, the more power.

Edge data centers are for making another edge, or what you call access point in networking? Another access point will give you less calls to the main data center. That’s why we have multiple regions in AWS!

### OSI Model
OSI = Open System Interconnection.
Damn it’s hard to remember this lol. It’s a standard for all interconnection devices? Like how things should do this and that. I see. The thing that I really got is, how the routers communicate with each other. So only 1,2,3 layers of communication right? Well I need to get some more information about this.

* TCP = Transmission Control Protocol
* Client-Server Model

### Networking Protocol Suite
Before I go over here, we need to know some history. Early days in the network protocol era, all the companies didn’t use the standard TCP protocol. They all used their own. Which made it hard to actually make some networks for all people to use. So they could only make LANs. 

LAN = Local Area Network

The internet is built on top of TCP, UDP, IP protocol!

#### TCP
Functions & Characteristics
* Connects with Datagram socket or Port
* OS does heavy lifting like establishing a socket connection and destroying it.

TCP Messages & Data Transmission
* TCP guarantees data flow by using its algorithm 3-way handshake.
	* SYN -> SYN-ACK -> ACK
You should read a book about TCP/IP. See how it sends all the information for src, dest, checksum, what headers there are, how the 3-way handshake work, how the data comes in serial and can actually guarantee the data and stuff. Also, try to find a great implementation of TCP/IP

#### UDP
User Datagram Protocol
Header has only 32 bits compared to TCP which has 128 bits.
This means, it’s best for speed and UDP drops data! It doesn’t guarantee data. Which means, it’s used for multimedia data that could actually lose data and still be comprehended. 

Want to know more examples of UDP!

#### Internet Protocol (IP)
Yup, this is in layer 3 and the network engineers live in here.

IP NAT & Security
NAT = Network Address Translation
It’s all about boundary! Like 255.255.255.0 -> 255.255.0.0 and all that stuff. Translation between other addresses using the gateway and subnet. Also version transfer for IPv4 and IPv6. This translation also keeps on going for security. We’ll cover this stuff in a book about TCP/IP I hope.

IP Routing
* Okay, this is the part that I’m really interested about.
* How does routers route? Also to switches. All that network component middle stuff. 
* So they don’t repeat the OSI layer connection?

### Python Summary

Pretty funny that I didn’t get anything over here. I already knew all the basic syntax. All I got to learn is about the `#!` -> Shebang! lol. 

I also got this question again:
* Dynamic Typing vs Type inference
* Interpreters -> cross platform

#books