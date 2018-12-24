# Implementing Domain-Driven Design
I've read the DDD-Distilled book. Now I'm here to get some advice for implementing it. I'll get all the ideas from this book and start implementing it for `profit`. I think it's time for me to actually do something. 

# Guide to This Book
This book actually has a syntax for referencing certain topics. By giving it a hash, chapter, referenced before, certain people’s names like Evans, Fowler, Gamma, (DDD, Enterprise, GoF).

## Big-Picture View of DDD
1. Ubiquitous Language
2. Bounded Context

The rule of thumb of designing tactics are, strategy and tactic. With these two design methods, you’ll get to model the Ubiquitous Language inside a Bounded Context.

### Strategic Modeling
3. Context Mapping

Maps Bounded Contexts. This is what you do in strategic modeling.

### Architecture
The Hexagonal architecture has the core domain in the middle and has a bigger layer of the application. On top of that layer, there’s the Adapters that interact with other bounded contexts. 

### Tactical Modeling
4. Aggregate
5. Entity
6. Value Object
7. Repository
8. Service
9. Domain Event
10. Module

Tactical modeling is actually getting the trees done. How the Bounded Contexts are going to be implemented. Aggregates are implemented inside a Bounded Context. Aggregates are composed with Entities and Value Objects which need to be consistently transactional in the lifetime of the Aggregate. 

#reading/books