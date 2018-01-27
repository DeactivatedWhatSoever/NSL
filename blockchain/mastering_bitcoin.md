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

- Buying a Cup of Coffee

### Bitcoin Transactions

- Transaction Inputs and Outputs

- Transaction Chains

- Making Change

- Common Transaction Forms

### Constructing a Transaction

- Getting the Right Inputs

- Creating the Outputs

- Adding the Transaction to the Ledger

### Bitcoin Mining

### Mining Transactions in Blocks

### Spending the Transaction

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

