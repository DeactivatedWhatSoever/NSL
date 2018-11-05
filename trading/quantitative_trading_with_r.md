# Quantitative Trading with R
I've finally come to the part to studying quant trading. I've been keeping on delaying this, but this is the future for me. I want to be big. Not just make software for big companies for other people. I want to make software for me and spread it to other people. There's a difference, so don't say anything else. I also want to go to school with the money I make from trading. Let's get onto this.

## An Overview
Some places I need to make a review in:
* Maths
	* Basic calculus
	* Linear algebra
	* Statistics
	* Probability
* Programming
	* VBA
	* Python
	* SQL

This book will introduce the tools and ideas that assist analysis, implementation, and presentation of trading strategies. Also other related quant stuff. 

### The mission statement
The questions that I need to ask to myself:
* How can I automate some of my trading ideas?
* What are the mathematical, financial, and programming tools needed to evaluate my strategy?
* Where do I get the data to test a trading strategy?
* How do I know that my strategy is any good?
* How do I present my results to others?

Are those questions in order? I think they are. You need to get a trading idea. You need to think whether it can be automated. Then you'll need to find the right tools to manipulate the data that are based on the trading idea. Get the data and you'll have to test your trading idea. Lastly, present it and get hired by your algorithm. 

The topics:
* Strategy
* Data
* Probability
* Risk Reward
* Statistics
* Visualization
* R
* Efficiency
* Optimization
* Reporting

Here comes the mission statements! 
We will come up with an automated trading strategy that will trade a portfolio of liquid instruments in the market. The strategy will be efficient, robust, and scalable. Furthermore, the strategy will be profitable and have low risk.

Should check up on these questions.
* What is a market?
* What is meant by instruments, and furthermore, what is meant by liquid instruments?
* What is a trading strategy, and how does one go about formulating such a thing?
* How is profitability of a trading strategy defined?
* What is a risk? Specifically, how can one quantify risk in the context of a trading strategy?
* How can a trading strategy be automated?
* What is meant by efficiency?

### Financial markets and instruments
CME(Chicago Mercantile Exchange) -> Don't all the crops, agriculture come over here? The futures, options and stuff. 
 An objective of a financial market. People come here to `trade`. The price of the trade is what the bidder wants. If the transaction is done, then the market is going well. 

Stock trading venues(NYSE, NASDAQ, BATS) vs Futures exchanges(CME, ICE)
Financial instruments are:
* Stocks
* Futures
* Bonds
* Currencies
* Vanilla Options
* Exotic Options
* Swaps
* Swaptions
* etc

Liquidity: A measure of how easy it is to sell or buy an instrument at a favorable price. So this means, bigger the volume, the big whales like that asset. Since it'll be easy to buy a lot, and easy to sell it a lot without manipulating the price.

### Trading strategies
Yeah, the finance institutes are one of the most heavily regulated institutes. I think law firms are the next?

A trading strategy is just a set of well-defined rules that traders apply with the end goal of making a profit in the financial markets. 
 These strategies exploit either structural effects in the:
* Marketplace
* Statistical relationships between financial instruments
* External information flow

### High-frequency trading
This type of trading is often the case when trades are entered into the market within a small time span, but kept on for a much longer amount of time. So entering fast is high-frequency? So it's also referred to low-latency trading. 

### About the orderbook
Hogachang. That's what we call it in Korea. Well anyways, I already know all that stuff. The spread, and high-frequency trading makes no spreads and will let people buy their instruments in a fair price. Liquidity on the way!

### Trading automation
God damn it. People who are trading in hedge funds and financial institutions sure have a lot of premium. They have matching engines, can colocate their servers near the exchanges. People are so engineering their asses in networking, storage, and all of that stuff for better trading conditions. Since everything is electronic, they need speed to do this and that. 
 Well It would be a huge benefit to have the ability to trade that fast if you have a lot of assets to buy or sell. You can sell of buy them at the most convenient moment.
[Algorithmic Trading & DMA](http://www.algo-dma.com/) -> Gives you comprehensive discussions on market connectivity, execution, algorithmic trading and automation in general. So direct access trading? Gotta find out what DMA means. 

### Where to get data from
I need to find more sites. But here are all from the book:
* Yahoo Finance
* Quandl
* Google Finance
* Federal Reserve Bank of St. Louis

This book will use Yahoo finance heavily. I wonder what the best one for cryptocurrency would be. Well of course, that'll be the exchanges of what you're actually going to stand in.

I think it's going to be best for you to crawl the data yourself. You make an ETL platform that's better than the one you saw at work. It's pretty cool that I got an opportunity to do that kind of thing. But still, let’s make it better. Because I AM the firm itself. 

### Summary
You know, this is the start of the journey. You need to have a trading idea, find out how to see the strategy is legit and get the right data to see whether it's good. Once that's done, you test it and present it to the public. 
 Remember, you are the firm itself. You have to make your own calls, make your own platform to actually survive. If you don't make them, you won't be able to know what you really need and you have to learn from other firms of what they actually do. 

## Tools of the Trade
A programming language is a really cool tool to get intuition inside. It'll help me manipulate data, perform math operations, automate workflows, display informative visualizations, create reproducible results, and do lots of other things. 
 There are a lot of other tools. But you have to understand why you need them, and how they reduce your time on doing something.

### The R language
The R system can be divided into two conceptual parts:
1. the base installation downloadable from CRAN
2. everything else (What?)

Yes. We need to do data analysis with a language that has an interpreter because of its responsiveness. If it's compiled, it will take a lot of time from getting the results. So C++, Java is used a lot for infrastructure needs. I hope to use my Scala skills to make my infrastructure. Dunno if it's a good idea to write web applications with C++. Don't think if I'll need the speed lol. Well anyways, R it is. 

### Getting started with R
I just wanna go and get a version manager and install it. I'm pretty sure that's the best practice for all these kinds of jobs right? [GitHub - viking/Renv: Simple R version management, based on rbenv](https://github.com/viking/Renv#section_2)
God damn it. It looked pretty pointless. I'm just gonna install R manually. 

You can use the `history()` function to get the commands that you've entered in an R console session. 

R datatypes:
* numbers
* strings
* booleans

R Operators:
`+, -, *, /, ^`

So, R variables are assigned with `<-` or `=` and the name can start with a dot(.). Okay, the `<-` association is the consensus in R. 
Can R assign immutable values?

Well the important data structures(containers) in R are:
* vector
* matrix
* data frame
* list
* environment

### The c() object
So the `c()` object is a vector. A list for easy understanding. But I don't know why people say a list is a vector? Java also has a Vector data structure. I heard that it was not thread-safe or something. Well anyways, in physics, vector is something that has a scalar value and an arrow? Never understood this kind of thing before. Wish I could :( -> Which means you should get time and get to understand it!
 
R ... the index starts from 1!!! Noooo!!! This destroy a hell lot of conventions. God dang it. Well anyways, let's go on. It's the same as most languages how you access the elements of what index.
```R
# Vector index
vec[4]
vec[1]

# A lot of indexes at once
# So ... The c object returns a vector. So you need to give a vector. Got it.
vec[c(1,2,3)] 
```

* Vectorization allows us to avoid looping. We can just do some operations like multiplying, and all that stuff, or even execute a function on the c() object! 
* We can extract out the elements that we want!

### The matrix() object
Matrix. A data structure that has a row and a column. Also, that matrix in maths and all that linear algebra stuff. Anyways, to comprehend it easy, it's a two-dimensional vector. 
```R
# Define a matrix
# Create a 2 row, and 3 column matrix!
my_matrix <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)

# If you want to define your matrix in row order!
my_matrix <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3, byrow = TRUE)

# You can also name the row and columns!
dimnames(my_matrix) <- list(c("one", "two"), c("c1", "c2", "c3"))
# So the `dimnames` function is actually a mutable function.
# It mutates the matrix to have the names. It should be used with caution!

# Query the object attributes
attributes(my_matrix)

# Accessing the matrix! I think it'd be [1][2] or something ...
# But no. It's the `,` operator that does the work!
my_matrix[1,2]
```

### The data.frame() object
A data frame is actually a spreadsheet. Or you could think of it as a csv with titles. Well I think spreadsheets are more appropriate. All the elements can have any types of data types. Strings, numerics, booleans, all that good stuff. 

```R
# Define a data frame
df <- data.frame(price = c(89.2, 23.2, 21.2), 
	symbol = c("MOT", "AAPL", "IBM"),
	action = c("Buy", "Sell", "Buy"))

# You can access the headers with the `$` operator
df$symbol

# If a variable prints out `Levels`, it means that it's a factor. 
class(df$symbol)
```

Cool, a data frame needs to have the same number of rows and columns or else R will spit out an error! So it's actually a frame. It needs to have the same number of columns and rows eh. Got it.

Takeaways
* If you want to know the operators of the function, just use the `?` operator. Like this: `?data.frame`
* Everything in R is an object, so functions are first class citizens.
* Data frames can also be indexed via the `,` operator.

### The list() object
Okay, this object is one of the most common dudes in R. We'll use it a lot since you can just put in any type of element! 
```R
# list!
# The `:` operator is the same as the `range` function in Python
my_list <- list(a = c(1, 2, 3, 4, 5),
	b = matrix(1:10, nrow = 2, ncol = 5),
  c = data.frame(price = c(89.3, 98.2, 21.2),
  stock = c("MOT", "IBM", "CSCO")))

# To access lists, you need to use the double bracket! `[[]]`
first_element <- my_list[[1]]

# `[[]]` -> Get the actual values
# `[]` -> Just extract the key + value of the thing.
```

### The new.env() object
new.env object is interchangeably used with the list object eh? It's actually a great data structure like hash map which has a lookup speed of O(1)!
```#
# Init env!
env <- new.env()
env[["first"]] <- 5
env[["second"]] <- 6
env$third <- 7
# When you just type in env, you'll get a cryptic hash code.
# If you want to see inside, use ls(env), get(env), and rm("key", envir = env)
```

Environments are just mutable hash maps I guess? Yep, it's pass by reference stuff.

### Using the plot() function
Graphing libraries!
* plot
* ggplot2
* ggvis
* rCharts
* rgl

```R
# Plot one to ten.
x <- c(1:10)
plot(x)
plot(x, type = "l") # Line graph
# There's a lot of other properties so have a go some time!

# Set up the canvas
plot(rnorm(1000), main = "Some returns", cex.main = 0.9, xlab = "Time", ylab = "Returns")

# Superimpose a basic grid
grid() # -> What?

# Create a few vertical and horizontal lines
abline(v = 400, lwd = 2, lty = 1)
abline(h = 2, lwd = 3, lty = 3)

# The par() function is used to query or set up global graphical parameters
par(mfrow = c(2, 2))
# So you can use par to actually split up windows eh!

# Add a legend and some text!
plot(rnorm(100), main = "A line plot",
  cex.main = 0.8,
  xlab = "x-axis",
  ylab = "y-axis",
  type = "l")
# Extra text
mtext("Some text at the top", side = 3)

# At x = 40 and y = -1 coordinates
legend(40, -1, "A legend")
```

`formals()` function can be used to extract the arguments of a function. 
`formals(plot.default)`

### Functional programming
So the internals might use some imperative things, but still it's functional when we actually use it. If we could map all that stuff and use this and that of functional characteristics in the internals too, we could get it way faster! Well anyways, R is capable of implementing most operations in functional programming paradigm.

### Writing functions in R
Just try and get the syntax of defining functions.
```R
# Define a function!
crack_eggs <- function(number_of_eggs) {
	# Code that determines whether eggs have been cracked
  # blah blah
  # So return is a function?
  return(have_all_eggs_been_cracked)
}
```

### Branching and looping
```R
# You can do some if stuff over here!
my_boolean <- 1 == 2
if (my_boolean) {
  print("Not correct")
} else {
	print("XYZ")
}
# You can also use ifelse() and switch()!

# Now for loops!
# There's for(), while(), and repeat().
for (i in 1:5) {
	cat(i, "\n")
}
```

Now, we're going to implement a pairwise correlation computer between 6 different stocks pass by the user!
* Obtain the names of the six stocks
* Make sure they are valid stock names
* Connect to a database that has the prices for these stocks and pull that information into memory
* Clean up the data by identifying missing values
* Place all the filtered data into a suitable container like a matrix or a data frame
* Compute the pairwise correlations and return the result to the user
* Create a visualization of these correlations

### A recommended style guide
[Style guide · R packages](http://r-pkgs.had.co.nz/style.html) -> Read this and just follow the styles! 

### A pairwise correlation example
We'll make an example function over here, but the thing is, I'm not sure whether to version commit the actual code. Or should I just put it in Bear? I think you should have a go of thinking whether to actually put the code in a separate repository or not. 
```R
filter_and_sort_sumbols <- function(symbols) {
	# Name: filter_symbols
  # Purpose: Convert to upper case if not
  # and remove any non valid symbols
  # Input: symbols = vector of stock tickers
  # Output: filtered_symboles = filtered symbols

  # Convert symbols to uppercase
  symbols <- toupper(symbols)
  # Validate the symbol names
  valid <- regexpr("^[A-Z]{2,4}$", symbols) 
  # Return only the valid ones
  return(sort(symbols[valid == 1]))
}

extract_prices <- function(filtered_symbols, file_path) {
	# Name: extract_prices
  # Purpose: Read price data from specified file
  # Inputs: filtered_symbols = vector of symbols,
  #         file_path = location of price data
  # Output: prices = data.frame of prices per symbol

	# Read in the .csv price file
  all_prices <- read.csv(file = file_path, header = TRUE, stringsAsFactors = False)
  # Make the dates row names
  rownames(all_prices) <- all_prices$Date
  # Remove the original Date column
  all_prices$Date <- NULL
  # Extract only the relevant data columns
  valid_columns <- colnames(all_prices) %in% filtered_symbols

  return(all_prices[, valid_columns])
}

filter_prices <- function(prices) {
	# Name: filter_prices
	# Purpose: Identify the rows with missing values
  # Inpouts: prices = data.frame of prices
  # Ouptut: missing_rows = vector of indexes where 
  # data is missing in any of the columns

  # Returns a boolean vector of good or bad rows
  valid_rows <- complete.cases(prices)
  # Identify the index of the missing rows
  missing_rows <- which(valid_rows == FALSE)

	return(missing_rows)
}

compute_pairwise_correlations <- function(prices) {
	# Name: compute_pairwase_correlations
  # Purpose: Calculates pairwise correlations of returns
  # and plots the pairwise relationships

  # Inputs: prices = data.frame of prices
	# Output: correlation_matrix = A correlation matrix

  # Convert prices to returns
  returns <- apply(prices, 2, function(x) diff(log(x)))

  # Plot all the pairwise relationships
  pairs(returns, main = "Pairwise return scatter plot")

  # Compute the pairwise correlations
  correlation_matrix <- cor(returns, use = "complete.obs")

  return(correlation_matrix)
}

# Now let's bring it all together by using the functions we implemented!
# Stock tickers entered by user
symbols <- c("IBM", "XOM", "2SG", "TEva", "GOog", "CVX", "AAPL", "BA")
# Location of our database of prices
file_path <- "path/prices.csv"
# Filter and sort the symbols
filtered_symbols <- filter_and_sort_symbols(symbols)
filtered_symbols
# Prints symbols that have proper input
# Extract prices
prices <- extract_prices(filtered_symbols, file_path)
# Filter prices
missing_rows <- filter_prices(prices)
missing_rows
# Output: integer(0)
# Compute correlations
correlation_matrix <- compute_pairwise_correlations(prices)
correlation_matrix
# Should do a plot!

# Some words about the %in% operator!
> A <- c(1,2,5,6,9)
> B <- c(0,3,6,9,10)
> A %in% B
[1] FALSE FALSE FALSE  TRUE  TRUE
```

### Summary
Just an overview of the R language. Nothing really much, but I'd better go over the data structures and the syntax. I've learned data structures like c(), matrix(), data.frame(), list(), env(), and plot(). Love to know about the data containers, but I think they're all in pandas lol. Well, anyways, let's get on and see whether we can do more! Also, have a look at `pairwise correlations` since it's a Quant thing!

#reading/books