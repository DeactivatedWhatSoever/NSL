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

## Week 3
The transport and application layers.

## Week 4
Networking services.

## Week 5
Connecting to the internet.

## Week 6
Troubleshooting and the future of networking.

#mooc