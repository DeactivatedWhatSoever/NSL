# So You Want to be a Functional Programmer Series
[Why functional programming matters – Hacker Noon](https://hackernoon.com/why-functional-programming-matters-c647f56a7691)
I've actually never thought of why I'm studying functional programming. Also, I need to know whether it's a replacement of OOP. Of course it can't be a replacement, which means I need to work in two ways. Is mixing multi paradigms good? I don't think so. If the two paradigms merge, it’s actually another paradigm. Except it just doesn't have a name rather than just a `before` evaluation if you know what I mean(OOP + FP). 
 So how am I going to understand why I need to learn this and what I need to learn and keep in mind. What the essence of FP is. Thinking functional, means thinking all the code in behavior, mathematically? Lets find out.

“This is what software developer candidates need to be good at: writing modular, compositional code, understand various means of abstraction, and thus be able to collaborate on creating theories of domains. “

That really got me the attention. So developers can be tested with functional programming. Since that paradigm makes us write modular, compositional code. 

http://lambdaconf.us/downloads/documents/lambdaconf_slfp.pdf
-> Functional Programming standardized skills!

## Part 1
[So You Want to be a Functional Programmer (Part 1) – Charles Scalfani – Medium](https://medium.com/@cscalfani/so-you-want-to-be-a-functional-programmer-part-1-1f15e387e536)

### Pure Functions
Computation done by only its parameters and must return something. It cannot change stuff outside of the scope and return nothing. Because that won't be useful and will have side effects. 
 Remember, functional programming cannot absolutely destroy side effects. It confine them. Which means, narrowing the range of side effects. 

### Immutability
No local variables, no loops, no statements. This is how immutability happens. if statements mean immutability unless if it just returns something right over. If it doesn't, it'll be most likely mutating something. Which results to side effects. You don't know where it will be wrong. 
 Use constants all over the place. Rather evaluate something first and store it, or just pass it as an argument. 
 The reason you can't use for loops is because of the mutation of the `i` value. It keeps on mutating it! So in FP, we start to use recursion. With recursion, we can just make new values to proceed to the next loop. 
 Remember, destroy the global state. We need to avoid states. 

## Part 2
[So You Want to be a Functional Programmer (Part 2) – Charles Scalfani – Medium](https://medium.com/@cscalfani/so-you-want-to-be-a-functional-programmer-part-2-7005682cec4a)

### Refactoring
It’s important to state out when you want to refactor behavior. There are times when a function, or a piece of code will be doing the same things, except for one part. If only you could wish that you could refactor out that function since it mostly looks the same. That’s when `Higher-Order Functions` come in.

### Higher-Order Functions
Higher-Order Functions are first-class citizens in functional programming languages. Which means, they are just a value like the other values. Just the same as Int’s, Boolean’s, etc. 
 They either pass functions, return functions, or does both.

### Closures
A block in a block for infinity, a function in a function for infinity, the scope gets bigger and bigger. The reason I said bigger is, the functions or blocks that are going deeper will have more access. The parents will only have access to their variables, but the children will have access to their parents and themselves. 
 But I wonder, if we have too much closures? Wouldn’t our parent function grow too big? Of course we’ll have to make as less closures as we can. Try not to make our functions big. 

## Part 3
[So You Want to be a Functional Programmer (Part 3) – Charles Scalfani – Medium](https://medium.com/@cscalfani/so-you-want-to-be-a-functional-programmer-part-3-1b0fd14eb1a7)

### Function Composition
It actually meant addition. Composition == Addition. Can’t believe it. I’ve known this word for a long time and finally I actually get the meaning. So functions are added up, one after another. That’s what function composition is. Call A after B. Now I get it.

```javascript
const add5 = value => value + 5
const add10 = value => value + 10
// add 10 after add 5. Function Composition.
const add10AfterAdd5 = value => add10(add5(value))
```

[Curry or Partial Application? – JavaScript Scene – Medium](https://medium.com/javascript-scene/curry-or-partial-application-8150044c78b8)
**Currying vs Partial Application**

Partial Application: Takes a function with multiple parameters and returns a function with **few** parameters. 
Curry: A function that takes a function with multiple parameters as input and returns a function with exactly one parameter. 
Difference: It's whether you return a function with **one** parameter, or **few** parameters. 

Something they called, unified type. Something that can be applied generally. Like iterables, functors(I think they are streams, which can be 'mapped’ over)
 Why do we need this? We need to be able to predict what the return value is. If we don't know what will come out next from the function, it’ll only be partial application of a function. But, if we want the next step, apply one parameter at a time in an interable manner, we need to be currying. If we do currying, we'll apply one parameter at a time and that'll be predictable since it'll always return a function. The last one obviously will return a value. 

* When should we use partial application? 
	* Is this needed? Or is it something that we shouldn't do?


[Master the JavaScript Interview: What is Function Composition?](https://medium.com/javascript-scene/master-the-javascript-interview-what-is-function-composition-20dfb109a1a0)
What is function composition? `c(x) = f(g(x))` -> That's function composition. I totally got the point-free part of the article. How you don't need to pass along variables, we don't even need names. It's actually a boilerplate since the value that we passed in, in the first place, is actually going to get created into a new value by getting applied by the functions in the pipe. So we don't need any variables. Because of currying. Only a function with one argument will be returned. So we don't need to name the parameter! That's point-free. I got this, but I didn't really get the composition part that much. Of course, if we want to layout function composition in a beautiful way, we need partial application and currying. 

### Point-Free Notation
It’s just about not passing in redundant parameters. Just how Scala did the parameter abbreviation with underscores. You don’t have to name the parameters and all you need to do is just use them. 

### Trouble in Paradise
So Currying solves a huge problem. That problem is, when a function is not point-free. If a function is not point-free, it means it has multiple arguments. It needs multiple arguments to actually get invoked. To make function composition, we actually need to have one argument! I got it. So if we need multi variables, it won’t be easy. Think about multi-variable calculus. Okay, so I need to know why function composition can only happen with point-free functions. 

[A real world Currying example – The Science of Code](https://lukajcb.github.io/blog/scala/2016/03/08/a-real-world-currying-example.html)
I'm starting to understand why we need currying. For function composition and point-free notations. Well of course point-free can't be the goal, the goal is for modular, readable, composed code. 
 “Currying is the process of transforming a function that takes multiple arguments into a sequence of functions that each have only a single parameter. Partial application is different in that it takes an argument, applies it partially and returns a new function without the passed parameter.”

Multiple arguments into a sequence of functions(only one parameter).
Applies the first parameter(s) and returns a new function without the passed parameters. I get how currying is good. But I'm starting to think, how do you implement a function like that? How is it possible? I need more examples. Let's get to part 4 already.

## Part 4
[So You Want to be a Functional Programmer (Part 4) – Charles Scalfani – Medium](https://medium.com/@cscalfani/so-you-want-to-be-a-functional-programmer-part-4-18fbe3ea9e49)

### Currying
Got all the ideas, but the important thing to know is, making a function that has multiple parameters, returns a function that only has one parameter. Also, these parameter functions are iterated until you use them all up. Done.

### Currying and Refactoring
If you want to make specific functions with a general one, you just put in the parameters first, and once you use up all your parameters, then the function will be reduced. Evaluated. 

### Common Functional Functions
Talks about `map`, `filter`, `reduce`. That's all. I know all of this, but the thing is, the iteration was actually done in the functions. So we don't need to write down the boiler plate code. Cool.

## Part 5
[So You Want to be a Functional Programmer (Part 5) – Charles Scalfani – Medium](https://medium.com/@cscalfani/so-you-want-to-be-a-functional-programmer-part-5-c70adc9cf56a)

### Referential Transparency
This is more about debugging. If you have too many functions inside a giant one, you need to know what function is doing what. So you want to see a whole evaluated form. That'll be way easier to see the big picture of the function call procedure. So, just evaluate and see what is returned.

### Execution Order
If we write our programs functionally, which means, the functions have to be pure, we can actually execute the whole program in parallel. 
"The order of execution in a Pure Functional Language can be determined by the compiler.” 
Since the hardware gets a lot of cores and threads, we can just execute our programs and still benefit since all the functions we write don't need to be executed in any order. 
 I need to get to know way better why the programs can be executed in no order. 

### Type Annotations
So in functional languages, they do type definitions in a separate manner. They define it first, and then name the parameters one by one. And then do the stuff. In Scala or Java or any JVM, we need to actually just define the type and name. So I'll have to just go with that lol. 
 Since everyone in the functional programming era is encouraging to use typed languages, that's why JavaScript started to use TypeScript. Now I get it. It's not actually the bugs and that, but functional programming could be a great deal to actually use this. 

## Part 6
[So You Want to be a Functional Programmer (Part 6) – Charles Scalfani – Medium](https://medium.com/@cscalfani/so-you-want-to-be-a-functional-programmer-part-6-db502830403)

### Now What?
If you use a pure functional language, then it'll be easy to use theses concepts to write programs since they make you do. But in multi paradigm languages, or languages that 'start' to let you do this and that, you will need a lot of discipline since you need to use it well by yourself.

### Functional JavaScript
I think it's pretty good to see how JavaScript handles functional programming. Since you'll need to see this behavior in Python and other languages, just go for it.

#### Immutability
`const` -> Only using this keyword will make you be able to make your code immutable. Oh, but we can change the stuff inside the constant. Which means it's not 100% immutability. If you want that much, you use [Immutable.js](https://facebook.github.io/immutable-js/). Then you'll get immutability, but your code will look like Java. I think TypeScript will actually be the answer for this. 

#### Currying and Composition
Plain JavaScript trying to do currying.
```javascript
const f = a => b => c => d => a + b + c + d
console.log(f(1)(2)(3)(4)); // prints 10
```
With [Ramda Documentation](https://ramdajs.com/)
```javascript
const f = R.curry((a, b, c, d) => a + b + c + d);
console.log(f(1, 2, 3, 4)); // prints 10
console.log(f(1, 2)(3, 4)); // also prints 10
console.log(f(1)(2)(3, 4)); // also prints 10
```

#### Map, Filter and Reduce
Yep, the `Ramda` library does this all. Well the original JavaScript does have it too, but I think using these libraries will make it easier to understand, and I hope these libraries become de-facto so people can program in FP right away. 

#### JavaScript Shortcomings
`Babel` is a JavaScript transpiler. I think you should get a better definition of a `transpiler`. This is really important because in the JavaScript era, people can't change the language that runs in the browser. If they do, they'd have to rewrite the browser to interpret the language that they want. So we make a new language, and transpile that into JavaScript. For example, TypeScript, ES Future, Elm, etc.

### Elm
"Elm is a Pure Functional Language that compiles to Javascript so you can use it to create Web Applications using The Elm Architecture, aka TEA (this architecture inspired the developers of Redux)."
https://www.youtube.com/watch?v=R2FtMbb-nLs -> 6 Months of Elm in Production
https://www.youtube.com/watch?v=Agu6jipKfYw

Maybe give Elm a try for yourself? But I'm not sure. But dude, I think you should because you're the only programmer that's going to make that Quant platform you're talking about. 

### The Future
I think you should find what the disadvantages of FP are. 

#reading/articles