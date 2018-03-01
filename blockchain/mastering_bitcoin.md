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

### Compiling Bitcoin Core from the Source Code

- Selecting a Bitcoin Core Release

- Configuring the Bitcoin Core Build

- Building the Bitcoin Core Executables

### Running a Bitcoin Core Node

- Running Bitcoin Core for the First Time

- Configuring the Bitcoin Core Node

### Bitcoin Core Application Programming Interface (API)

- Getting Information on the Bitcoin Core Client Status

- Exploring and Decoding Transactions

- Exploring Blocks

- Using Bitcoin Core’s Programming Interface

### Alternative Clients, Libraries, and Toolkits

- C/C++

- JavaScript

- Java

- Python

- Ruby

- Go

- Rust

- C#

- Objective-C

## Keys, Adresses

### Introduction

- Public Key Cryptography and Cryptocurrency

- Private and Public Keys

- Private Keys

- Public Keys

- Elliptic Curve Cryptography Explained

- Generating a Public Key

### Bitcoin Addresses

- Base58 and Base58 Check Encoding

- Key Formats

### Implementing Keys and Addresses in Python

### Advanced Keys and Addresses

- Encrypted Private Keys (BIP-38)

- Pay-to-Script Hash (P2SH) and Multisig Addresses

- Vanity Addresses

- Paper Wallets

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

