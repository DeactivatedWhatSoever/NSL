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

#reading/books