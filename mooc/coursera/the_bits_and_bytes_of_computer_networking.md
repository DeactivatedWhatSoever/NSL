# The Bits and Bytes of Computer Networking
What this course? 
-> I saw all the network introductory books. They had a lot of OSI model and TCP/IP stuff, but really didn’t made my mind in it. I think it would be way better to just visualize the networking flow. Which would be in a course. I know there would be diagrams in the book as well, but courses are way better since their videos and have a lot of interaction. Also, Google made this. Let’s trust Google. 
* Getting to know how the internet works
* Understanding the flow of the OSI model
	* Of course I got to know that it goes up and down the layer
	* The devices do some networking in their layer, but I wonder how they get all the data for the other protocols? This is my next question
* How to troubleshoot networking issues

## Week 1
Introduction to networking.
Computer networking -> The fool scope of a computer communication. Communicating with computers. That’s what networking is. In real life, networking is also communicating with other people, except it has some more differences. But anyways, let’s get on with learning what networking is.

* TCP/IP 5 Layer Model
	* Application
	* Tranmission
	* Networking
	* Datalink 
	* Physical 
* OSI 7 Layer Model
	* Application
	* Presentation 
	* Session 
	* Transmission 
	* Networking 
	* Datalink 
	* Physical 

These are the main models, and these are the layers that they have. I do have less understanding for the session and presentation layer for the OSI 7 model. But, we’ll get there.

### Cables
There’s two types of cables. Oh yeah, the cables which are actually the physical layer, pass in electrical signals. Those signals are actually bits and bytes. Binary. But the thing is, how are they represented? This is where the `voltage` comes in. Voltage of some sort actually represents a binary number. If the voltage is low, I bet it’ll be just 1. If there’s nothing, no connection. I think you should go learn physics on this part. You need to know at least those kinds of stuff man. At least the electronics part. 

The things that the cables have for performance is, transfer rate and length. So how far can it go, and how much data can it send without loss. So these cables have a structure called Cat5, Cat6 Cat5e and stuff. 
* Copper
	* Length is low but it’s pretty strong.
* Fiber
	* Length is high but pretty fragile.

Remember about cross talk. It’s the thing that makes circuit transmission stuff bad and stuff. 

### Hubs & Switches
I’ve always sort of had a curiosity for these two. But didn’t know hubs were actually in the physical layer lol. So the hub just connects other devices with Ethernet cables. On the other hand, switches communicate on the datalink layer. Which means, it saves all the MAC addresses of the devices that are connected and communicates. 
 But the thing is, hubs are now like … deprecated because of its data collision. Data collision is something when a lot of computers try to communicate on the same time. But the data gets collided and some weird things happen. But switches solve this problem.

### Routers
Routers, the most important part of the internet. The thing that you have to know really importantly is, routers communicate between independent networks. That’s why it can go over seas and stuff. These have routing technologies such as BGP(Border Gateway Protocol), it’s a protocol that sends data to the right place. 

### Servers & Clients
Anything can become a server or a client. So you have to know the difference between the two. A client requests, a server responds. 

### The Physical Layer
Hmm, I think I’ll learn this in signal and systems? I guess. How the cables send bits! That’s the main thing. So varying the voltage is called modulation. And that thing is transformed with line coding. 
 The cables inside are created with twisted pair cabling. And the communication strategy has two, duplex and simplex. Duplex is a bidirectional flow and simplex is a unidirectional flow. Also, there’s something called half-duplex. It can communicate bidirectionally, but it’s not a flow. One communication at a time.

It’s pretty cool how network ports work. Most of them have two lights. One of them indicate the link, and the other, network activity. 

### The Data Link Layer
This layer is pretty much a very interesting layer. Also, it’s pretty much the start of software. In this part, it abstracts the physical layer. It’s actually the kernel of network. Well anyways, the protocol over here is ethernet. The ethernet protocol is called CSMA/CO. It tries to prevent data collision. Also it carries data with MAC addresses. Media Access Content. 2^48 unique possibilities. There’s a lot of information in the 48 bits. Have a go at them some time. 

* Unicast, Multicast, Broadcast.
* Address Resolution Protocol(ARP)
	* This actually does the resolution of MAC addresses.

### Discussing an Ethernet Frame
Well there’s mostly a huge stuff of information over here. But still there’s some keywords that I need to know. A data packet is binary data in the `network` part. So in the Ethernet level, it’s called an Ethernet frame.

Ethernet Frame
* Preamble
* Destination Address
* Source Address
* Toy
* Ether Type Field
* Payload
* FCS (Frame Check Sequence) -> Checksum
	* This is for data integrity. A very important thing. 
* CRC (Cyclical Redundancy Check)

Reference: [Ethernet frame - Wikipedia](https://en.wikipedia.org/wiki/Ethernet_frame)

## Week 2
The network layer.
There’s like not much that I learned over here. It was mostly about datagrams, IP headers, some protocols, and about binary numbers! Hex, octets and all that stuff. That’s what I mostly saw.

### IP Address
IPv4 -> 4 octets
IP addresses actually represent independent networks. 

There’s two ways to give an IP address. DHCP and static.
Dynamic Host Configuration Protocol, which is just a dude that gives IP addresses dynamically. And the static IP thing is just literally the word, static. The IP doesn’t change.

So packets in the IP layer are called IP datagrams. It’s pretty cool that they encapsulate the data of the above layer in the payload section. So in the datalink datagram, there’s a payload section. That payload actually has the information of the IP layer. So encapsulation goes like that. Eventually, the data is transferred in packages, but they still have all the data. It’s pretty cool to know. 

### IP Headers
[IP Protocol Header](https://www.thegeekstuff.com/2012/03/ip-protocol-header/)
The above blog really has a good explanation of the headers. The headers that Google pointed out was the TTL. Time To Live. Since routers can infinitely route to each other, we needed a way to avoid these kinds of things. So the TTL is actually, how many times an IP datagram can hop. Remember, hop is a scale to know how many times a router communicated with another router. The TTL gets decremented until to 0. It’ll get dropped when it hits 0.

### IP Adress Classes
Class A, B, C
0-126, 16M
128-191 64K
192-223 254

IP Addresses have two elements, the network part, and the node part.

Class A    network, node, node, node
Class B    network, network, node, node 
Class C    network, network, network, node

The above classes are the most common ones. D, and E are also available but they’re not really relevant. 

An Address Resolution Protocol(ARP), finds the corresponding IP address with the MAC address. So it broadcasts to the network and gets an ARP response. That’ll search the ARP table and get the MAC address, and it’ll send the data to that host. 

### Subnets
Subnetting vs Subnet masks vs CIDR
These are the things that we’ll cover over here. What subnets are, how to do understand subnet masks and CIDR.

[Subnetting and Subnet Masks Explained](http://www.steves-internet-guide.com/subnetting-subnet-masks-explained/) -> A real well written blog.

Subnetting: Dividing IPv4 networks into smaller networks.

Making networks to smaller networks.

network, subnet, subnet, node
network, subnet, node, node

But I don’t know how all the & operating thing works. I need to get a know how of this.

CIDR(Classless Inter-Domain Routing)

I think I should go and find a way to understand the subnet calculus. I heard there’s a lot of stuff in the CCNA stuff. Let’s do it!

### Routing

* Routing Protocols
* Routing Tables
* RFC

A routing table. It’s a table of router informations. It has the destination ‘network’ and the number of hops. That’s the actual thing you’ll need for a router to router to another network. They Also need to be updated for the best routes!

#### Interior / Exterior Gateway Protocols
Interior -> Link State Protocol, Distant-Vector Protocol
Remember, in programming, vectors and lists.

Exterior -> TBD …

Routing Protocol Examples
* RIP
* EIGRP
* OSPF
* BGP

Find out about IP address allocation.

Non-Routable Address Space: Remember all those starting ip addresses. 192.168.0.0 and all that stuff. 
RFC: Request for Comments
NAT: Network Address Transformation

## Week 3
The transport and application layers.

## Week 4
Networking services.

## Week 5
Connecting to the internet.

## Week 6
Troubleshooting and the future of networking.

#mooc