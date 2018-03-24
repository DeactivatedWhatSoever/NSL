# Java Performance: The Definite Guide


## Introduction

### A Brief Outline

### Platforms and Conventions

- JVM Tuning Flags

### The Complete Performance Story

- Write Better Algorithms

- Write Less Code

- Oh Go Ahead, Prematurely Optimize

- Look Elsewhere: The Database Is Always the Bottleneck

- Optimize for the Common Case

### Summary

## An Approach to Performance Testing

### Test a Real Application

- Microbenchmarks

- Macrobenchmarks

- Mesobenchmarks

- Common Code Examples

### Understand Throughput, Batching, and Response Time

- Elapsed Time (Batch) Measurements

- Throughput Measurements

- Response Time Tests

### Understanding Variability

### Test Early, Test Often

### Summary

## A Java Performance Toolbox

### Operating System Tools and Analysis

- CPU Usage

- The CPU Run Queue

- Disk Usage

- Network Usage

### Java Monitoring Tools

- Basic VM Information

- Thread Information

- Class Information

- Live GC Analysis

- Heap Dump Postprocessing

### Profiling Tools

- Sampling Profilers

- Instrumented Profilers

- Blocking Methods and Thread Timelines

- Native Profilers

### Java Mission Control

- Java Flight Recorder

- Enabling JFR

- Selecting JFR Events

### Summary

## Working with the JIT Compiler

### Just-in Time Compilers: An Overview

- Hot Spot Compilation

### Basic Tunings: Client or Server (or Both)

- Optimizing Startup

- Optimizing Batch Operations

- Optimizing Long-Running Applications

### Java and JIT Compiler Versions

### Intermediate Tunings for the Compiler

- Tuning the Code Cache

- Compilation Thresholds

- Inspecting the Compilation Process

### Advanced Compiler Tunings

- Compilation Threads

- Inlining

- Escape Analysis

### Deoptimization

- Not Entrant Code

- Deoptimizing Zombie Code

### Tiered Compilation Levels

### Summary

## An Introduction to Garbage Collection

### Garbage Collection Overview

- Generational Garbage Collectors

- GC Algorithms

- Choosing a GC Algorithm

### Basic GC Tuning

- Sizing the Heap

- Sizing the Generations

- Sizing Permgen and Metaspace

- Controlling Parallelism

- Adaptive Sizing

### GC Tools

### Summary

## Garbage Collection Algorithms

### Understanding the Throughput Collector

- Adaptive and Static Heap Size Tuning

### Understanding the CMS Collector

- Tuning to Solve Concurrent Mode Failures

- Tuning CMS for Permgen

- Incremental CMS

### Understanding the G1 Collector

- Tuning G1

### Advanced Tunings

- Tenuring and Survivor Spaces

- Allocating Large Objects

- Aggressive Heap

- Full Control Over Heap Size

### Summary

## Heap Memory Best Practices

### Heap Analysis

- Heap Histograms

- Heap Dumps

- Out of Memory Errors

### Using Less Memory

- Reducing Object Size

- Lazy Initialization

- Immutable and Canonical Objects

- String Interning

### Object Lifecycle Management

- Object Reuse

- Weak, Soft, and Other References

### Summary

## Native Memory Best Practices

### Footprint

- Measuring Footprint

- Minimizing Footprint

- Native NIO Buffers

- Native Memory Tracking

### JVM Tunings for the Operating System

- Large Pages

- Compressed oops

### Summary

## Threading and Synchronization Performance

### Thread Pools and ThreadPoolExecutors

- Setting the Maximum Number of Threads

- Setting the Minimum Number of Threads

- Thread Pool Task Sizes

- Sizing a ThreadPoolExecuter

### The ForkJoinPool

- Automatic Parallelization

### Thread Synchronization

- Costs of Synchronization

- Avoiding Synchronization

- False Sharing

### JVM Thread Tunings

- Tuning Thread Stack Sizes

- Biased Locking

- Lock Spinning

- Thread Priorities

### Monitoring Threads and Locks

- Thread Visibility

- Blocked Thread Visibility

### Summary

## Java Enterprise Edition Performance

### Basic Web Container Performance

- HTTP Session State

### Thread Pools

### Enterprise Java Session Beans

- Tuning EJB Pools

- Tuning EJB Caches

- Local and Remote Instances

### XML and JSON Processing

- Data Size

- An Overview of Parsing and Marshalling

- Choosing a Parser

- XML Validation

- Document Models

- Java Object Models

### Object Serialization

- Transient Fields

- Overriding Default Serialization

- Compressing Serialized Data

- Keeping Track of Duplicate Objects

### Java EE Networking APIs

- Sizing Data Transfers

### Summary

## Database Performance Best Practices

### JDBC

- JDBC Drivers

- Prepared Statements and Statement Pooling

- JDBC Connection Pools

- Transactions

- Result Set Processing

### JPA

- Transaction Handling

- Optimizing JPA Writes

- Optimizing JPA Reads

- JPA Caching

- JPA Read-Only Entities

### Summary

## Java SE API Tips

### Buffered I/O

### Classloading

### Random Numbers

### Java Native Interface

### Exceptions

### String Performance

### Logging

### Java Collections API

- Synchronized Versus Unsynchronized

- Collection Sizing

- Collections and Memory Efficiency

### AggressiveOpts

- Alternate Implementations

- Miscellaneous Flags

### Lambdas and Anonymous Classes

- Lambda and Anonymous Classloading

### Stream and Filter Performance

- Lazy Traversal

### Summary

