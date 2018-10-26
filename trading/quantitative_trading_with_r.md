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

#reading/books