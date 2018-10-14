# Python for Data Analysis
The reason I'm reading this book is to actually get analytical skills. I’d love to know the tools, and see how I can do things with data. I really need to have some time to explore, what to do with that data, what kind of analysis I can make, and all that stuff. I need to find the treasure inside all that data. As a Quant, I need to create an eye that can spot the hidden alpha inside the markets. Also, I need to do stuff with financial data. I need to know all the tools first to actually translate the old books into present time. This will actually be the most important skill to have, so I must get in for it.

## 1.1 What Is This Book About?
Hmm ... I want to know about `data analysis`. The book's title is `data analysis`, but it's mostly just on Python tools. Like manipulating, processing, cleaning and crunching data. So I think I should go listen to the `Intro to Data Analysis - Udacity` course properly. And do this thing too. 

### What Kinds of Data?
Data as in, structured stuff.
* Tabular (rdbms, tsv, csv, etc.)
* Multidimensional arrays (Matrices)
* Multiple tables of data interrelated by key columns (RDBMS)
* Evenly or unevenly spaced time series

## 1.2 Why Python for Data Analysis?
So Python came out in 1991. Didn't know that. So it's almost 30 years old. Anyways, they call it `scripting languages`, which means it's good for serious software. But that’s not true anymore. Python is really used for serious software and it can do a lot of data analysis stuff. Ooh, I love the term: Scientific Computing.

### Python as Glue
Python glued up legacy software. Like the C/C++, FORTRAN libraries. I'm pretty curious of how Python glued them up. Don't all the libraries need a Python interface to make C code executable? So Cython actually compiles into C code. The binary, and well can get compiled or transpiled into other languages right?

### Solving the “Two-Language" Problem
In the old days, we prototype stuff with ruby, R, like more specialized languages. And then converted that into serious software languages like C/C++, Java. But Python can be used for serious software, scientific needs, and also prototyping. So the "Two-Language" problem will be solved with languages like Python.

### Why Not Python?
The GIL(Global Interpreter Lock) doesn't let Python be parallel. So It's not really good for CPU intensive programs, programs that need performance. And that's pretty much a good excuse for mission critical software like high-frequency trading systems. So, global interpreter, or, interpreted languages, the interpreter, it's something that we need to know.
 Python C extensions that use native multithreading (in C or C++) can run code in parallel without being impacted by the GIL, so long as they do not need to regularly interact with Python objects.

## 1.3 Essential Python Libraries
* NumPy
	* Good for manipulating numerical data. 
* Pandas
	* This does a whole lot of stuff. Manipulating data from the rdbms, tabular data, and all that. I think it'll be a great asset since we'll mostly be using this for data manipulation.
* Matplotlib
	* Plot producer.
* IPython and Jupyter
	* An interactive Python development environment. Nothing else.
* SciPy
	* Numerical integration & Differential equation
	* Linear algebra
	* Function optimizers
	* Signal processing
	* Sparse Matrices
	* Mathematical Functions
	* Statistics
* Scikit-Learn
	* General purpose ML toolkit
* Statsmodels
	* Statistical analysis package

## 1.4 Installation and Setup
Why not just find a docker image and do everything over there?

### Installing or Updating Python Packages
I know all this stuff!

### Python 2 and 3
Python 2 = Legacy. That's it. Just move on

### Integrated Development Environments (IDEs) and Text Editors
Just go with Vim and IPython.

## 1.5 Community and Conferences
* pydata: A Google Group list for questions related to Python for data analysis and pandas
* pystatsmodels: For statsmodels or pandas-related questions
* Mailing list for scikit-learn (scikit-learn@python.org) and machine learning in Python
* numpy-discussion: For NumPy-related questions
* scipy-user: For general SciPy or scientific Python questions

## 1.6 Navigating This Book
Just the ol', always the same guide!

### Code Examples
Everything's the same as if it were in Jupyter Notebooks.

### Data for Examples
[GitHub - wesm/pydata-book: Materials and IPython notebooks for “Python for Data Analysis" by Wes McKinney, published by O'Reilly Media](https://github.com/wesm/pydata-book)

### Import Conventions
```python
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import seaborn as sns
import statsmodels as sm
```

### Jargon
* Munge_munging_wrangling
* Pseudocode
* Syntactic sugar

## Python Language Basics, IPython, and Jupyter Notebooks
Good software engineering != Good data analysis. So you don't have to worry about your software engineering skills. Okay, the thing is, you have to try and get the material inside your head. Like try to be a dude that has photographic memory. Just think as if that is yours and you do it. You have to reflect more, revive more, and retain more. Keep thinking of what you've learned. Active retrieveal, that's the key. 

## 2.1 The Python Interpreter
Interpreted language? A Python program is executed by an interpreter. That interpreter just runs the code one line at a time. It tries to see every line of code eh? 

Just installed IPython, and I'll get it working. Interactive Python environment. Wanted to make a better interactive shell eh? let's get to know it more.

## 2.2 IPython Basics
IPython + Jupyter Notebook. I wish to learn more about IPython. Want to live in the terminal more than Jupyter. 

### Running the IPython Shell
So the IPython shell is exactly, just an enhanced shell. So you use Jupyter when there's bigger stuff to do eh? Alright.

### Running the Jupyter Notebook
Just installed jupyter and ran it. I'm thinking of making a remote jupyter and put all the notebooks up there, and make a analysis thing with it. I wonder how venom will get along with that but, I'm sure I need to get my server running. I'll put up all the apps I need and I need to start to develop my robot ASAP. 

### Tab Completion
I think `jedi` is behind the tap completion. Whoever made that, needs to get some love lol. 

### Introspection
Cool, I love the `?` feature. You can get some cool insights of an object or whatever variable that you have. ?object, object? and you'll get some insight about it. Also, you should learn how to get the docs from the object or package. `??` will print out the implementation if possible.

### The %run Command
The `%` something commands are called magic commands. Pretty neat. They have `%load` too. It is used for importing the code inside the code cell. Can get useful, but I'm going to put my libraries up on GitHub so don't worry about it that much.

If you want to interrupt the running code, just use `ctrl-c` and it'll help you out in the most time.

### Executing Code from the Clipboard
`%paste`, `%cpaste`. You can just paste and execute the code that's in your clipboard. Also in IPython. Pretty convenient. 

### Terminal Keyboard Shortcuts
Well I got to learn `ctrl-U`, `ctrl-p, ctr-n` and `ctrl-f, ctrl-b`. That's all. I know there would be a whole lot more, but I'll go see them when I need more productive navigation.

### About Magic Commands
These are just for IPython. They don't exist in the original Python shell. Dang... they have `%debug`. Does it work like a debugger?!
 Well anyways, there’s a lot commands out there. 

### Matplotlib Integration
Analytical computing. 
IPython: `%matplotlib`
Jupyter: `%matplotlib inline`

## 2.3 Python Language Basics
Programming concepts and language mechanics. 

### Language Semantics
* Indentation, not braces
* Everything is an object
* Comments
* Function and object method calls
* Variables and argument passing
* Dynamic references, strong types
	* Dynamic references, you can reassign your variable with a new type. I think that's what you call dynamic referencing, since the type is dynamic.
	* Python does have strong types since you need to convert an int to a str if you want to print an int. Only in obvious times you can think of type inference. 
* Attributes and methods
	* Accessing objects by name is often referred to as "reflection.”
* Duck typing
	* If an object has some methods that resembles a duck, then it's type is a duck! I think this is just representing interfaces. 
* Imports
* Binary operators and comparisons
* Mutable and immutable objects

### Scalar Types
* None
* str
* bytes
* float
* bool
* int
* Numeric Types
	* int, float
* Strings
* Bytes and Unicode
* Booleans
* Type casting
	* str(), bool(), int(), float()
* None
	* type(None) = NoneType
* Dates and times
	* datetime module!

### Control Flow
* if, elif, and else
* for loops
* while loops
* pass
* range
* Ternary expressions
	* `value = true-expression if condition else false-expression`
	* `if condition: value = true-expr else: value = false-expr

#reading/books