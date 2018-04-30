# Mastering Bitcoin


## Introduction

### What Is Bitcoin?

- The most important components that bitcoin have are: 1. A decentralized p2p network (the bitcoin protocol) 2. A public transaction ledger (the blockchain) 3. A set of rules for independent transaction validation and currency issuance (consensus rules) 4. A mechanism for reaching global decentralized consensus on the valid block (PoW algorithm) 

	- If I were to actually take another important component is, the reward from participating in the network.   So the bitcoin has a protocol that shares data with the p2p network, a ledger that can’t be tampered with, some rules of how the transaction is actually going to get recorded, and how to actually make consensus for proof!

- There were attempts to make a digital currency but they were easily destroyed since of worried governments and its centralized structure. It was nothing more than a bank and actually, more easy to get crashed. 

### History of Bitcoin

- Didn’t know Satoshi disappeared in 2011. Anyways, everyone knows this! The bitcoin thesis and all.

- I think the most important thing in the history is, that it’s short, and solved a lot of problems. 

- I think you should look up about the Byzantine Generals’ Problem a bit more. 

	- It’s the main problem in the distributed computing section.

### Bitcoin Uses, Users, and Their Stories

- I’ll just list up the use cases of the users of bitcoin and what new things came out

	- Low-value retail

	- High-value retail

	- Offshore contract services

	- Web store

	- Charitable donations

	- Import/export -> trade between countries

	- Mining for bitcoin

- There were pretty much a lot of use cases over there. But the most important thing is, it actually did some stuff. I’m sure at this point, that the bitcoin experiment has failed and can’t do its work as a currency. But still, the protocols and technical stuff will be alive.

### Getting Started

- Choosing a Bitcoin Wallet

	- Well they say the safest are hardware wallets. Also, it’s 100% our fault when we lose the private key or whatsoever. People will try to think and make a middleman for this.

- Quick Start

- Getting Your First Bitcoin

- Finding the Current Price of Bitcoin

	- [Coincap](http://coincap.io/). Thought coin market cap would be better. Got to have a go at this one!

	- [Bitcoin Average](https://bitcoinaverage.com/). Not sure what this does but it says it has the most data, and it has the price index.

- Sending and Receiving Bitcoin

	- A little thought about confirmations. I didn’t really get the confirmation about the transactions. First, when someone sends bitcoin, that transaction isn’t confirmed. But when it gets added to a block, it means some miners have mined it! After that, the block must be added to the blockchain which is added by the PoW algorithm. The question is, how do the miners mine confirmations, or so called transactions?

		- I guess we’ll be able to find out later in the book.

## How Bitcoin Works

### Transactions, Blocks, Mining, and the Blockchain

- Bitcoin Overview

	- I know that the people in the network, which are miners, have to ‘mine’ the bitcoin transactions and add a block to the blockchain. The thing that I don’t understand is, they get paid for participating in the network by confirming transactions AND making blocks to the blockchain? 

		- Confirming a transaction == Adding a block to the blockchain.  I’m not sure of this part whether it really is something or not. You should give searching a try.

		- [The link for the search is here](https://bitcoin.stackexchange.com/questions/8918/which-is-the-relation-between-transactions-and-blocks). All the miners ‘confirm’ the transaction. Which I don’t actually know what that means. But if a whole block is confirmed, that block will be broadcasted through the network. I think I need more comprehension about this topic.

- Buying a Cup of Coffee

	- Well this just gives you an example of transaction. A from B. Wallet to wallet. You can view the real transaction over here: https://blockexplorer.com/tx/  
	  0627052b6f28912f2703066a912ea577f2ce4da4caa5a5fbd8a57286c345c2f2

		- I just looked at the confirmation number and it was massively big. So when the miners make a block, I think they confirm all the blocks in the blockchain. Well this is just a thought. Not confirmed.

### Bitcoin Transactions

- Transaction Inputs and Outputs

	- If you input a value to the transaction, there will be a fee! The input will be the amount that you really will send, and the output will actually have less than your input. The difference between the input and output is the transaction fee.

- Transaction Chains

	- Even this is the high level of transactions, it isn’t easy to comprehend for me. The output of one transaction is the input of the next transaction. Do you know what this means? I don’t think so. Well this does mean a chain. If we have a new transaction and make an input, the output will be the input of the next transaction. Joe needs to have the information that he sends and Alice needs to know the information that she received. And vice-versa.

- Making Change

	- Didn’t know wallets needed to actually make changes for people. Since bitcoin can be divided all the way, didn’t know they actually need changes. I think I should search more for this one since I don’t understand that bitcoin needs to make changes. 

	- Transactions move value from transaction inputs to transaction outputs.

- Common Transaction Forms

	- If there’s ‘common’ transaction forms. That means there’s actually some other ‘forms’ of transactions. Wonder what they would look like.

	- The ‘change’ thing is coming out again. Don’t really understand why bitcoins needs to do those kind of transactions! Well that is a common transaction.  Aggregating transaction: n inputs, 1 output  Distributing transactions: 1 input, n outputs

	- I think you should find out ‘when’ and ‘how’ these transactions occur. If you don’t get through this, it won’t be easy for you to actually understand the transaction forms, I/O, chains, and etc.

### Constructing a Transaction

- Getting the Right Inputs

	- How can there be ‘unspent’ transaction outputs? I think the ‘unspent’ transaction outputs mean the ‘remaining coins’ in that wallet! That’s why bitcoin wallets need to deal with change! Because it doesn’t mean it actually just has the amount of 20! It actually means a transaction output leftovers!

		- This is pretty much a guess, so please go and find out yourself after reading the whole chapter.

- Creating the Outputs

	- This is absolutely the same as above. It’s about change. 

- Adding the Transaction to the Ledger

	- I wonder how the transaction gets sent to the network. Will it have to be connected to the internet? What about the wallets? Are they just a program? How do hardware wallets work? How do they get into the network? What protocol do they use to communicate?

		- They call the protocol, bitcoin node.

### Bitcoin Mining

- The PoW and stuff, all the stuff that we generally know. Nothing new except got the initials of ASIC. Application Specific Integrated Circuits. 

	- Still don’t know the confirmation and block making process and difference between the two. Does confirmation mean a creation of a block?!

### Mining Transactions in Blocks

- A block of transactions, the priority of the transactions are actually the highest-fee transactions first! The bigger the money, the more confirmations it needs and gets.

	- Lets check whether 1 block is 1 confirmation. 

### Spending the Transaction

- Spending will make a chain. Also create transaction forms. From now on, we’ll see about wallets, addresses, signatures, transactions, the network, and mining. These are the key components of bitcoin. Not blockchain. 

## Bitcoin Core: The Reference Implementation

### Bitcoin Development Environment

- Well this is it. Finally a technical chapter!

### Compiling Bitcoin Core from the Source Code

- Selecting a Bitcoin Core Release

	- Just selecting a version for git tag.

- Configuring the Bitcoin Core Build

	- Read the README and then go to the doc directory and you’ll get to see the build docs of each os.

	- First we run the autogen.sh file. I think it generates all the code that we need? What is m4? 

		- build-aux. Something like this.

		- This just creates some configuration scripts automatically.

- Building the Bitcoin Core Executables

	- So first, you generate the configuration with autopen, and configure it, then compile the source code. When we actually compile the code, that means we are actually getting all the executables.

		- So ‘make’ does the compilation, make install? What is the difference. Should find out.

		- [Difference between make and make install](https://robots.thoughtbot.com/the-magic-behind-configure-make-make-install)

		- Actually, it’s just build and installing the built source code to the right places.

		- The definition of install, is I guess, putting the right files into the right place so the user can execute the program! Of course the installation will be binary files that can be executed by the computer right away.

	- Once we build the bitcoin core executables, we’ll get two commands.  which bitcoind which bitcoiin-cli

### Running a Bitcoin Core Node

- Running a bitcoin node means, that you want to develop software that is related with the bitcoin network. Like validating the blocks yourself, or actually validate the transactions that you yourself send. You can make a confirmation for the first time I think. 

	- The computer that is going to participate in the bitcoin network must need at least 125GB of disk space and 2GB of RAM. Well, more is good in this space!

- Running Bitcoin Core for the First Time

	- When you run the ‘bitcoind’ command which is obviously bitcoin daemon, it will prompt you to set a RPC password. I think this is because of just making 1 minor per 1 request API. If everyone gets public access to the API, then the network will get useless traffic and get clogged. So I think it’s a good way to give away API keys so only authorized people can use the specific APIs.

	- When I just run the bitcoind command, it just keeps on downloading the blocks. I wonder when it will finish. I gave the -printtoconsole option to see what it prints. I’ve been running it for like a day and it’s still printing!

- Configuring the Bitcoin Core Node

	- I can get info with the getinfo keyword. But they say it got deprecated and got replaced by getblockinfo and getnetworkinfo. 

	- There’s a lot of other configurations for the bitcoin core. You can control a lot of the network node and the storage of the blockchain. If you want to see a list of them, just enter bitcoind -h

		- Yep, there’s like more than 100 configurations.

		- Connection options, Wallet options, Debugging/Testing options, Chain selection options(Testnet, test chain!), Node relay options, Block creation options, RPC server options. Wonder why there are so many options. Could there be bitcoin client optimization? lol

	- By default, the bitcoin core just indexes the transactions that you did. But you can get ‘any’ transaction if you just configure it! txindex=1 -> That’ll do the job.

	- Yep, the configuration and the optimizing points are for resource constrained systems mostly. 

### Bitcoin Core Application Programming Interface (API)

- Since it used curl, I thought the API was actually networking with HTTP. But it says most of the commands are RPC commands. That’s why we set an RPC user and password in the configuration. Since version 16, it just goes with a cookie authentication! 

	- Well anyways, when I execute the bitcoind command, I think it’s actually a server! But dude, we have to think what this really is. How it get serve all that and why it has an IP address. I think that’s for RPC networking. Or do other programs do this too? Gotta find out.

- Getting Information on the Bitcoin Core Client Status

	- The status command has all changed. We can get more specific information from other commands. The getinfo command is now deprecated.

	- Instead we get, getblockchaininfo, getnetworkinfo, and getwalletinfo. Pretty much specific now!

- Exploring and Decoding Transactions

	- So you can get the raw transaction with the ‘getrawtransaction’ command and decode the result of that raw transaction with ‘decoderawtransaction’ command. I wonder why they did this.

		- So the question comes again. A transaction comes in, what does it mean if it has 0 confirmations? Can it go into the block? How does the blockchain make the transaction go into the block? If the transaction is ‘confirmed’ is that when it goes into the block? So the transaction can be occurred but it needs to be confirmed to be able to get added to the block. So what exactly does a 0 confirmed transaction mean?

		- So when the transaction is confirmed, then to transaction has is immutable. Before the confirmation, it can be modified and stuff. But when it’s modified, it won’t get confirmed! Or it will be only modified on one computer, so the others will confirm another hash! I think I’m starting to get this.

	- The transactions actually get a chain of transactions. The input transactions, and the output transactions. They are all connected! So a block has a lot of transactions. And the transactions also have connected transactions

- Exploring Blocks

	- We explored transactions on the last section, now we get to explore the upper point. The block. All famous block! Of the blockchain!

		- Getblock, getblockhash

		- Obviously, we can get the block by its block id. Which would be the hash of it I guess? See all the transactions inside, and the confirmations etc. 

- Using Bitcoin Core’s Programming Interface

	- I think you should go and see what an RPC is exactly. It I thought it was a protocol. And it says it communicates in HTTP! 

		- [RPC vs HTTP](https://www.quora.com/Why-HTTP-is-not-RPC)

		- Well, first, we need to know that HTTP is just a transfer protocol. 

		- RPC is just a standard to call code remotely. It’s the same category as REST!

	- We can use the client libraries that just ‘wrap’ the calls of the bitcoin-cli! There’s a lot out there, but I’m sure that I could make a good one. Open source it, and make it my library. Awesome.

### Alternative Clients, Libraries, and Toolkits

- C/C++

	- Gotta learn this language ... Since everything is written in this lol.

- JavaScript

- Java

- Python

- Ruby

- Go

	- Going to implement this client! In Go! 

- Rust

	- Thinking about Rust too. I think it could be a great language for distributed computing. But I’ve got to find whether there’s a good language for distributed computing. With that language, we’ll be able to implement a better blockchain. A distributed system actually.

- C#

- Objective-C

- Pretty cool that there isn’t a Kotlin implementation yet. Well there could be someone writing it. But there’s also only one ‘go’ client too. I think I should make a project called ‘gobtc’. That’ll be a great toy project for learning the go language.

## Keys, Adresses

### Introduction

- In the introduction paragraph, we mostly look at how cryptography is used in bitcoin. I didn’t know that cryptography isn’t the key in cryptocurrency since the data that is transferred around isn’t encrypted. 

	- Cryptography inside cryptocurrency, the most important factor of this is, representing that the bitcoin is the property of the user’s. That’s where the ‘wallet’ software comes in. We only put in the transaction data in the blockchain and The Who and where representation is mostly the key thing. That’s where cryptography is mostly used. 

	- We use a private key (secret) to make a public key. The public key represents the bitcoin address, and the private key represents whether that bitcoin is the users or not. 

	- In this chapter, we’ll get to see the maths inside cryptography and how it applies to bitcoin. See the various encoding formats to represent the private, public, address, and script addresses. Lastly, we look at the advanced use of public and private keys.

- Public Key Cryptography and Cryptocurrency

	- In cryptography, the most important thing is, encrypting the thing fast and making that thing impossible to decrypt. The point is, encrypt fast, decrypt slow. 

	- Well the public key cryptography made a lot of mathematical discoveries like prime number exponentiation and elliptic curve multiplication. Bitcoin uses elliptic curve multiplication. 

		- Check what those things are man. Especially elliptic curve multiplication.

	- In bitcoin, when you do a transaction, the the wallet makes a public key from the private key. The keys have a mathematical relation and the public key can confirm the signature that is made from the private key. So the public key can validate the signature. These two things can be revealed in the bitcoin network, so the people in the network can use the signature and public key to validate the transaction.

- Private and Public Keys

	- Private Key -> Elliptic Curve Multiplication -> Public Key -> Hashing Function -> Bitcoin Address

		- Remember, all the steps cannot be reversed. You can’t decrypt a bitcoin address to the public key, and can’t decrypt the public key to the private key.

	- Why Asymmetric Cryptography = Public/Private Keys

		- The private key is actually private to the person, but the public stuff, which is the public key and the signature can be verified whether its valid or not! By anyone! That’s the main reason the the bitcoin network used this. So that means, the confirmation engine confirms the signature and the public key with this? Oh my god, if it really is that, then I am mind blown!

- Private Keys

	- To generate a private key, you need to choose a random number between 1 and 2^256 - 1. Pretty cool that the SHA-256 means Secure Hash Algorithm 256 bits. A number that is 256 bits. That’s the key of this algorithm. If it goes to 512, it’ll have way more possibilities of the random number.

	- So they say, the SHA256 is just a cryptographic function. One way ticket man, and it’s not encryption. Something that’s an encryption is, that can be decrypted right?

		- Have a go and understand how the SHA-256 makes ‘fixed’ size outputs.

		- [SHA-256 JavaScript Implementation](https://www.movable-type.co.uk/scripts/sha256.html)

	- So the private key is a really large random number. 1~2^256. I wonder how they validate that this key is the same with another guy? Like, for instance, if the private key is 1, is it represented different from the other guys who have 1?

		- [So if a private key is a random number, it means it can collide right? ](https://bitcoin.stackexchange.com/questions/7724/what-happens-if-your-bitcoin-client-generates-an-address-identical-to-another-pe)

		- [Got it. So the RSA or ECDSA makes the random number ](https://en.bitcoin.it/wiki/Private_key)

	- Remember, you have to know better about asymmetric cryptography algorithms like RSA and ECDSA. Bitcoin uses ECDSA and SSH uses RSA I think.

- Public Keys

	- It’s calculated from the private key by using the Elliptic Curve Cryptography function. K(Public Key) = k(Private Key) * G(Constant, generator point??) 

		- To understand the generation of the public key and what it actually can do, we need to know the transferee, the hash function!

- Elliptic Curve Cryptography Explained

	- Dude, I didn’t understand a thing when I read down the passage. But the thing that I got into my head is, how to draw the graph. P3 = P1 + P2 -> You’ve gotta get this on. Oh they also say something about the point of infinity.

		- https://www.youtube.com/watch?v=Aq3a-_O2NcI

		- https://www.youtube.com/watch?v=dCvB-mhkT0w

		- Searched ECDSA on youtube. 

- Generating a Public Key

	- K(Public Key) = k(Private Key) * G(Generator Point in the secp256k1) 

		- This math only works in one way and that means the opposite doesn’t work. You can’t make the Private key by just dividing the G to the K.

	- Bitcoin uses the OpenSSL cryptographic library to do the maths. The ECDSA function is EC_POINT_mul()

	- If you want to know the internals and prove how this algorithm is a one way ticket, then you should go and study it all more. And find out the other asymmetric cryptography algorithms. Whether there are more out there and why they are used in what situations.

		- If you know these kind of stuff, like just the 10,000 feet view, then you can find out what to use what on where. That’ll be the best part for you as an engineer. If you want to make a better algorithm, that’ll come in when you want to do science. 

### Bitcoin Addresses

- The bitcoin address is not identical to the public key. The bitcoin address is derived from the public key. The formula for turning the public key into the bitcoin address is: A(Address) = RIPEMD160(SHA256(K(Public Key))). After, you have to make this 20 bytes / 160 bits number into a human readable String. Which we can get some help from encoding! Base58Check Encoding. This encodes the address into a String that has a base of 58 characters.

	- This bitcoin changing hash function is used in a lot of places in bitcoin. The address, script address, PoW algorithm and etc.

- Base58 and Base58 Check Encoding

	- I got a lot of information over here. Got to know what the ‘base’ means in all this base 64, 62, 58 stuff. The base is actually telling you whether how many character sets are you going to use to represent the numerical stuff. If the base is 10, we will get 1,2,3,4,5,6,7,8,9 to represent all the numbers. If we go 16(Hex) then we’ll get a,b,c,d,e plus the Base 10. 

	- Since binary data that is attached on emails, we need to be able to represent all that data when we send it! That’s when Base64 comes in and it encodes the binary into a String that can get transferred and human readable. If the binary file is bigger and bigger, that means the Base64 String will get bigger and bigger. Well this is pretty cool. I think Base 62 and 58 came out to get some representations of themselves. 

		- Base 58 excludes characters that can be identical discarding their fonts like l, I, o, and 0. These letters and number will be excluded from the character set.

	- It’s so cool that I got to understand this stuff. I’ve always tried to understand what this is for but I never got the chance to actually search it in the internet. Which sucks. But still, I got it. 

		- Base 58 Alphabet: 123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz

	- So how does the bitcoin address get encoded? It gets encoded by the almighty Base58Check encoding method. 

		- How do we find out that the Base58 encoded string is valid or not? That’s why we use the Base58Check encoding technique. First we get the payload which will be the bitcoin address or something else. Then we put a version prefix in front of the payload. After that, we make a validator checksum. The checksum is filled with a hash of a hash. SHA256(SHA256(VersionPrefix + Payload)) = Checksum. After that we add all them up and Base58 Encode it. There we have it. The result of that is a Base58Check encoded string.

		- Version Prefix: We have a chart that shows what kind of prefixes there are. Testnet address, pay address, etc. Check it out when you really need them.

- Key Formats

	- Private key formats

		- There are a few private key formats. The raw format is 32 bytes. Bit? Which is binary. Also can be presented in Hex, WIF, and WIF-compressed. WIF and WIF-compressed is a Base 58 Check Encoded thing. So it has a version prefix.

	- Decode from Base58Check

		- From now on, it’s all about using the functions of the ‘bx’ library. Which I didn’t have when I was studying this. Couldn’t bother to actually go install this stuff since it won’t be that much of something to actually put in my head. All I need to know is to decode, encode, and that’s it.

	- Encode from hex to Base58Check

	- Encode from hex (compressed key) to Base58Check

	- Public key formats

		- Public keys are a point of the elliptic curve! It’s just one of them. 

		- The public key can be compressed or not. 

	- Compressed public keys

		- This is a critical thing in the blockchain. Everything must be compressed! Because the blockchain will get bigger and bigger. I wonder if there could be stuff like sharding in the future! Whether to make the blockchain small in ‘weight’. The size of the binary. 

		- They compressed the public key by using the mathematical stuff. The ECDSA has a formula, so you only need to know the x value. That makes the public key half in size! We can use these kinds of stuff to give the calculation some weight and make the weight of the blockchain lighter.

		- The compressed and uncompressed bitcoin addresses are different from each other. But they are still valid. It’s pretty much cool how all of them 

	- Compressed private keys

		- Funny story hear. Actually, compressed private keys is actually a misnomer. The compressed version is actually heavier than the uncompressed one lol. Because it has a byte more to indicate that this is a compressed private key. What it means is, whether it’s compressed or uncompressed, compressed or uncompressed public keys can be derived from that private key. It’s because of the ‘indication’ that these came out.

### Implementing Keys and Addresses in Python

- I forked the library that Vbuterin made. It’s pretty cool for a guy to make the client in python in those early ages. If I could go back in time, I would go right away and join the blockchain community when I get my first access into a computer. 

- Forked the library that Vbuterin made and put the examples in the examples directory. I had to do this!

- Did an example of the whole private key generation to bitcoin address transformation. It was a long journey and it wasn’t easy. Also looked at how the math works in making public keys. Compressed and uncompressed!

### Advanced Keys and Addresses

- Encrypted Private Keys (BIP-38)

	- What I think when I read this paragraph is that the hardest thing for normal users to manage is the private key. How is it going to be ‘safe’? If you have a backup, which is hard for normal users to actually make anyway, that backup can get stolen from anywhere! So people thought of encrypting the private keys. 

	- Which people say isn’t really easy either. There’s a hashing algorithm called BIP-38 which is made under the standard of AES (Advanced Encryption Standard) made by NIST. The payload is the private key and a passphrase which is very long and the user must remember it! Then it will get encrypted and can be decrypt with the passphrase. It also has a prefix of 6P when it’s encrypted by BIP-38

- Pay-to-Script Hash (P2SH) and Multisig Addresses

	- The original bitcoin address is called a pay-to-public-key-hash (P2PKH). Which doesn’t have any additional features when sending a transaction. All you do is ‘send’. People wanted more and wanted features when sending transactions. Like putting in an actual ‘script’. It’s all the same except that the payload is now the script that gets hashed. 

	- An example of the implementation of the P2SH is the multi signature addresses. For example, you can let a wallet make a transaction and get signed by multiple people! Only when the multiple people’s signature are obtained, then they can make a transaction. 

- Vanity Addresses

	- To make it simple, it’s just an address that has special characters that the person decides. For example, having “1Kid” in front of the address. There are vanity pools that creates these kinds of addresses for you. Lending the computing power to find the addresses lol. 

	- Okay, here comes the security problem. Attackers tend to hack the website and display their addresses instead of the owner’s. But if they make a vanity address that has a lot of characters, it won’t be easy for the attacker to make their own vanity address since they’d have to pay way more for that particular address. It can be very expensive, but cheap. 

		- I think the best way is just creating new addresses for the people who need the address. A public address floating around the site won’t be nice if you just think about it like that. Maybe the best way could be hosting it on GitHub? What the attacker does a CDN attack and makes everyone have the site of the attackers? Well don’t know about that man. I don’t know if vanity addresses are for security. It’s just for the human mind I think.

- Paper Wallets

	- [http://bitaddress.org](http://bitaddress.org/)/ -> The only thing that you should get from over here man! Making hard and solid safes is the best way! 

	- I think you should have a go on making your own solid wallets. Make a paper wallet and pass em around to everyone. That’ll be really fun!

## Wallets

### Introduction

### Transactions In Detail

- Transactions - Behind the Scenes

### Transaction Outputs and Inputs

- Transaction Outputs

- Transaction Inputs

- Transaction Fees

- Adding Fees to Transactions

### Transaction Scripts and Script Language

- Turing Incompleteness

- Stateless Verification

- Script Construction (Lock + Unlock)

- Pay-to-Public-Key-Hash (P2PKH)

### Digital Signatures (ECDSA)

- How Digital Signatures Work

- Verifying the Signature

- Signature Hash Types (SIGHASH)

- ECDSA Math

- The Importance of Randomness in Signatures

### Bitcoin Addresses, Balances, and Other Abstractions

## Advanced Transactions and Scripting

### Introduction

### Multisignature

### Pay-to-Script-Hash (P2SH)

- P2SH Addresses

- Benefits of P2SH

- Redeem Script and Validation

### Data Recording Output (RETURN)

### Timelocks

- Transaction Locktime (nLocktime)

- Check Lock Time Verify (CLTV)

- Relative Timelocks

- Relative Timelocks with nSequence

- Relative Timelocks with CSV

- Median-Time-Past

- Timelock Defense Against Fee Sniping

### Scripts with Flow Control (Conditional Clauses)

- Conditional Clauses with VERIFY Opcodes

- Using Flow Control in Scripts

### Complex Script Example

## The Bitcoin Network

### Peer-to-Peer Network Architecture

### Node Types and Roles

### The Extended Bitcoin Network

### Bitcoin Relay Networks

### Network Discovery

### Full Nodes

### Exchanging "Inventory"

### Simplified Payment Verification (SPV) Nodes

### Bloom Filters

- How Bloom Filters Work

### How SPV Nodes Use Bloom Filters

### SPV Nodes and Privacy

### Encrypted and Authenticated Connections

- Tor Transport

- Peer-to-Peer Authentication and Encryption

### Transaction Pools

## The Blockchain

### Introduction

### Structure of a Block

### Block header

### Block Indentifiers: Block Header Hash and Block Height

### The Genesis Block

### Linking Blocks in the Blockchain

### Merkle Trees

### Merkle Trees and Simplified Payment Verification (SPV)

### Bitcoin’s Test Blockchains

- Testnet - Bitcoin’s Testing Playground

- Segnet - The Segregated Witness Testnet

- Regtest - The Local Blockchain

### Using Test Blockchains for Development

## Mining and Consensus

### Introduction

- Bitcoin Economics and Currency Creation

### Decentralized Consensus

### Independent Verification of Transactions

### Mining Nodes

### Aggregating Transactions into Blocks

- The Coinbase Transaction

- Coinbase Reward and Fees

- Structure of the Coinbase Transaction

- Coinbase Data

### Constructing the Block Header

### Mining the Block

- Proof-of-Work Algorithm

- Target Representation

- Retargeting to Adjust Difficulty

### Successfully Mining the Block

### Validating a New Block

### Assembling and Selecting Chains of Blocks

- Blockchain Forks

### Mining and the Hashing Race

- The Extra Nonce Solution

- Mining Pools

### Consensus Attacks

### Changing the Consensus Rules

- Hard Forks

- Hard Forks: Software, Network, Mining, and Chain

- Diverging Miners and Difficulty

- Contentious Hard Forks

- Soft Forks

- Criticisms of Soft Forks

### Soft Fork Signaling with Block Version

- BIP-34 Signaling and Activation

- BIP-9 Signaling and Activation

### Consensus Software Development

## Bitcoin Security

### Security Principles

- Developing Bitcoin Systems Securely

- The Root of Trust

### User Security Best Practices

- Physical Bitcoin Storage

- Hardware Wallets

- Balancing Risk

- Diversifying Risk

- Multisig and Governance

- Survivability

### Conclusion

## Blockchain Applications

### Introduction

### Building Blocks (Primitives)

### Applications from Building Blocks

### Colored Coins

- Using Colored Coins

- Issuing Colored Coins

- Colored Coins Transactions

### Counterparty

### Payment Channels and State Channels

- State Channels - Basic Concepts and Terminology

- Simple Payment Channel Example

- Making Trustless Channels

- Asymmetric Revocable Commitments

- Hash Time Lock Contracts (HTLC)

### Routed Payment Channels (Lightning Network)

- Basic Lightning Network Example

- Lightning Network Transport and Routing

- Lightning Network Benefits

### Conclusion

