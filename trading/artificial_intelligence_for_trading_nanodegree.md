# Artificial Intelligence for Trading Nanodegree
It's time for me to become a Quant.

# Welcome to the Nanodegree Program
It's just a welcome lesson. But the thing here to actually get is, how to get a lot from this class, and try to understand what you're trying to be. What kind of skills you'll be acquiring and stuff. 

## Welcome!
Just a welcome message and stuff. An introduction of the constructors. 

## What is a Quant?
The people who find the `Truth`. It's in the books "The Quants". They work in a lot of places, but mostly financial related companies. You need to use scientific methods with the understanding of markets, the intuition, or whatever. 
 Issac Newton can predict the heavens, but he can't predict the people of madness. 

## Your Instructors
Miriam, Cindy, Jonathan, Brok, Liz, Eddy, Arpan, Kendall, Justin, Harry, Murat
 So many people ... 

# Program Overview
I'll need to get a refresher of linear algebra and statistics. Also, I need to be able to use Numpy and Pandas. I already know Python and how to use Jupyter Notebooks already. 

## Tell Us About Yourself
It was just a survey lol.

## Student Support
* Getting Help
* Project Reviews
* Study Groups -> Chat platform with students
* Knowledge -> Just a simple Q&A platform

## Feedback
If you want to provide feedback to the Udacity team, use the Waffle Board! And keep giving lesson feedbacks when you finish a lesson. 

## Career Support
How to become a Quant. Mostly the fact is, quant trading talent is acquired from the top 20 universities. But the firms started to think that those students could not be the best talent. So they're using Udacity to find the best talent outside of the top 20 universities. I hope to be that talent, and I will get it. 

We can get great feedback of our GitHub and LinkedIn profiles. From this, we can actually get to know what we're actually doing, what we're trying to give to the people who want to hire me. Anyways, it's a great curriculum that Udacity gives for career support.

### Connect to Hiring Partners through your Udacity Professional Profile
Maybe I could get a cool job through Udacity! Maybe people over here could actually find me! Let's try and get my Udacity profile shining! 

## Time Management
Okay, it's like one project for two weeks. Let's get it done. 

# Get Help from Peers and Mentors
* What It Takes
* Reviews
* Knowledge
* Student Hub

Just repeating the stuff at lesson 1. Just going to skip it all!

# Get Help with Your Account
* FAQ
* Support

Basically the same thing with lesson 2. I think I should pass these three lessons when I ever get to start another Nanodegree. 

# Stock Prices
I think it’s best to know all the derivatives and see what is what. 

## Stocks
Stocks and shares. 
Shares of stocks: fractional ownership of a company. 

* Common Stock
	* Receive a portion of profit as dividends.
	* Able to vote on decisions.
	* Receive a portion of remaining assets in case of liquidation.
* Preferred Stock
	* Promised a fixed amount of income each year
	* Get paid before common stock holders get dividends
	* Usually do not have voting rights

## Stock Prices
Security: Financial instrument that has some type of monetary value. 
* Debt
	* Money that is owed and must be repaid.
	* Government or corporate bonds, or certificates of deposit
	* Also called “fixed-income securities”
	* Promise a stream of income over time in the form of interest
* Derivative
	* Options
		* The right to buy or sell the thing at a specified price before a specified date. Employee stock options -> Strike Price
	* Futures Contracts
		* Make someone buy or sell something at a specified price before a specified date.
* Equity
	* Value of owned asset - debts or liabilities on that asset = Equity
	* Net value of something owned. 
	* Private equity -> The equity inside a private company. That hasn’t done an IPO yet. 

### Options: calls, puts, American, European
* Call options: Give the right to buy at the strike price
* Put options: Give the right to sell at a fixed price
* American options: you can sell any time just before the expire date.
* European options: you can only see at the expire date.

### Forwards and Futures
Forward contracts are mostly done by two parties. It’s more of a private contract.

### Public versus private equity
The difference is whether you can trade the stocks on an exchange or not. 

### Market Bubbles
The Dotcom bubble, subprime, bitcoin etc.

### Further Resources
* http://www.econ.yale.edu/~shiller/
* https://www.nytimes.com/search/?query=economic+view+and+shiller&srchst=nyt
* http://www.fooledbyrandomness.com/
* https://iai.tv/video/how-do-you-solve-a-problem-like-uncertainty
* [Stabilization Won’t Save Us - The New York Times](https://www.nytimes.com/2012/12/24/opinion/stabilization-wont-save-us.html)

## Terminology
* Stock: An asset that represents ownership in a company. A claim on part of a corporation’s assets and earnings. There are two main types, common and preferred.
* Share: A single share represents partial ownership of a company relative to the total number of shares in existence
* Common Stock: One main type of stock; entitles the owner to receive dividends and vote at shareholder meetings
* Preferred Stock: The other main type of stock; generally does not entail voting rights, but entitles the owner to a higher claim on assets and earnings of a company
* Dividend: A partial distribution of a company’s profits to shareholders
* Capital Gains: Profits that result from the sale of an asset at a price higher than the purchase price
* Security: A tradable financial asset
* Debt Security: Money that is owed and must be repaid, like government or corporate bonds, or certificates of deposit. Also called fixed-income securities
* Derivative Security: A financial instrument whereby its value is derived from other assets
* Equity: The value of an owned asset minus the amount of all debts on that asset
* Equity Security: A security that represents fractional ownership in an entity, such as stock.
* Option Contract: A contract which gives the buyer the right, but not the obligation, to buy or sell an underlying asset at a specified price on or by a specified date
* Futures Contract: A contract that obligates the buyer to buy or the seller to sell an asset at a predetermined price at a specified time in the future

## Stock Data
You learn stuff like Pandas Dataframes over here. But you only use them and that’s all. You need to go and find what that means and use it properly. 

I learned about reading a CSV file and converting it into a pandas DataFrame all at once. Also learned `groupby`, giving the columns titles, doing mean calculations for each column and etc. 
 The important things that are tingling in my head are transforming a DataFrame into a 3 dimensional DataFrame. You can use `xarray` to save 3 dimensional data, but Pandas gives us `MultiIndex`, still doesn’t give a 3 dimensional one. It’s still 2, so we have to find a way to get it from pandas. So we use `DataFrame.pivot` to just generate the DataFrames we could make a parent DataFrame that holds all the pivoted DataFrames. 
 Last of all, `transpose`. It’s actually changing one thing from another, but I understood it as changing the index and columns. Switching them around! It could actually be a cool exploration from just changing the index and columns around. 

# Market Mechanics
Stock markets! Let’s see how markets work. Micro architecture of markets and stuff. Let’s see how it goes. 

## Intro
* Simple market simulator
* Generates a lot of market data
* Decide when to sell and buy with the historical data you save

## Farmer’s Market
Sell expensive, buy cheap. 

## Trading Stocks
The sell side and the buy side. When you trade, you sell a stock, and someone buys it. But the price for each stock has a queue. If a stock is $180 and there’s like 5 stocks, and that’s the highest bid, the ask that’s higher than the bid will get to trade. It’s whether they are overlapped or not. 
 People can’t trade all the time. And even if they do, they can’t because there’s not much stuff out there. Here’s where the market makers come in. Large investment banks like Goldman Sachs, will have a lot of stocks and will let other people buy it from them. They are in the sell side. Since they help people sell, and that’s actually related with liquidity. On the other hand, the buy side. The buy side are people who want to make money from investing stocks. Big examples are hedge funds and personal investors. 
 As a result, I got to know how to trades stocks(ask and bid), know what a spread is, market makers, sell side and buy side. 

## Liquidity
Liquidity is the ability to trade an asset without impacting too much of its price. In easy words, trying to buy or sell in a consistent price. This is what market makers actually do for us. Cash is actually the most liquid asset. It’s so easy to buy and sell. 
 It’s also about finding out about other markets. There are multiple exchanges that have the same stock. Those stocks will have their own prices in its exchange. So we can earn some money from their price differences. This is a method that’s called arbitrage. Also the quants made up a cool theory about statistical arbitrage. 

## Tick Data
Date, time, symbol, price, volume. The data of historical, data that’s indexed by time. That’s what we call tick data. We can know whether the price has gone up or down, or whatever from this tick data. 

## OHLC: Open, High, Low, Close
It’s just the title. open, high, low, close of the price data. So it tells us how much noise there’ve been in the market I guess. 

## Resample Data
I got to learn about resampling. Of course the resample function works on a DataFrame. The resample function does some grouping by date. So we need the index to be a date. It’s great for manipulating ticks. I still don’t get `ohlc` and all that stuff. I need to understand why OHLC is first, max, min, last. 

## Volume
Number of shares that’ve been traded in a period of time. When the volume was big and the price got up, it means that the people at that time wanted to buy so hard. If it’s the opposite, then the people wanted to sell hard. 

## Gaps in Market Data
The primary market session is from 9:30~16:00. There’s also the pre-market and the post-market. If the market has a gap, that means there was some trading going on in the pre and post markets. The price is manipulated in the primary market session is what my guess is. That’s why a gap occurs.
Pre-market: Giving strength to give direction to the market.
Post-market: Use it for trading stocks after major announcements.

## Markets in Different Timezones
I can’t believe that people can trade on all markets from the world. Trade in America, England, and even Hong Kong. With the timezone, we could actually make strategies about the price dependency. Also it’ll be great since we have a lot of opportunities to trade. We could trade 24/7!

## Summary
Stock markets work, trades are executed and how prices are set. That’s what I learned in this lesson. 
 We’ll get to focus on the things that we really wanted to know. The data! We’ll see what kind of data will get impact to the price or whatever. Let’s trade. 

# Data Processing
I think I’ll learn about how to process data. And I’ll sure learn what kind of data that I’ll be processing. I’m just wondering how to actually make an automatic algorithm trading platform. How can I crawl the data and when I crawl it, should I execute the buy/sell right over on that tick? I’m not sure of how to actually think about this. 

## Market Data
heterogeneous vs homogeneous === not organized vs organized. Just got an introduction of market data. 

## When to Use Time Stamps
Ask: Sell, Bid: Buy. 200 trades per second? Daaaaaaang … OHLC(Open, High, Low, Close). The question over here is, when to use timestamps. 
* Aggregating the volume of trades per day
* Adjusting for gaps due to market closing and open
Market closing and open is actually a time indicator. We need to know the timestamp of when it closes and opens. 

## Corporate Actions: Stock Splits
* Stock Splits
* Dividends

### Stock Splits
Splitting a stock into multiple stocks will lead to a price drop of the division, and the amount of stocks will multiply of that division. The reason people do stock splits are:
* The price goes down, that means people who can’t buy the stock because it’s expensive, will give it a go.
* That’ll lead to liquidity, and the stakeholders that have a lot of stock will be able to sell or buy stocks with a lot more granularity. 
* Getting more attention, making the price affordable, leads to liquidity. 

We need to correct the price when stock splits occur. How are we going to normalize this? I’m pretty not sure about the formula, and they call it `adjusted price`. 

### Dividend
Partial cash distribution of company earnings. Since partial cash is distributed of the amount of how many stocks you have, this needs to be normalized too. Stocks, they sure have a lot of things to do. 
* Adjusted Price Factor: 1 + D / S
	* D: Dividend
	* S: Stock price at ex-divitend date
	* To normalize stock prices prior to dividend, divide by Adjusted Price Factor -> Stock Price / Adjusted Price Factor = Normalized Stock Price

## Technical indicators
Statistical measures = indicators. 
* Simple Moving Average (Rolling Mean)
* Constant Threshold: 
	* when |price - average| 
* Fraction Threshold:
* Standard Deviation:
	* Bollinger Bands
		* Inflection points: when price is outside of bollinger bands several times. Inflection = when the price trend changes. What point does the price go up or down? That’s the inflection point. So in a bollinger band, we can know the inflection point when the price hits the upper or lower band. 

### Thoughts
So how can we know whether the stock is too expensive or not expensive? We first give it a given timeframe. Because value always changes in time. It could be expensive at summer, and not expensive at winter. If we use a constant or fraction threshold to observe, we’ll never hit a certain price. 

## Missing Values
There are a lot of reasons for a stock to have missing values. Especially, the timestamp. 
* Holidays, weekends, not a trading day!
* The company suddenly goes private!
* The company got an IPO! 

I bet when people do stat arbs, they’ll need to fill in some data when some sort of company didn’t exist lol. So we definitely need to know the trading days of the market, and need to know what happened between the gaps. If we just neglect all that, there could be sudden price changes and if we don’t put in the information about that, we won’t have a good algorithm.

## Quiz: Trading Days
 The NYSE and NASDAQ average about 252 trading days a year. This is from 365.25(days on average per year) * 5/7(proportion work days per week) = 260.89 - 9(holidays) = 251.89 ~ 252.

## Quiz: Trading Experiment
Survivor Bias. The companies that are surviving right now are tended to get traded more? That’s what I just think. But the difference of the experiment was: 
* A: 100 companies trading now.
* B: 100 companies trading since 2005. 

We don’t know what will happen to the companies from a certain point in the past. If it was like 1 year ago, I think it wouldn’t be that much different with now. But it’s like 14 years ago! Most of the companies would’ve been dead already! 2009, and all that stuff! 

## Survivor Bias
The companies that survived will actually give an overly optimistic strategy when you backtest. Hmm … never thought of that. That’s why since 2005 means it’s more honest. It just starts from a point and we’ll get a more honest result because there’s not much survivor bias. 
 You have to find the correlation between whether you’ll use survivor bias or not. It’s all about analysis. 

## Fundamental Information
Things that I need to keep in my brain first? Lol of course all the things over here that I learn need to be in my brain lol. 

### Fundamental Analysis
* Balance sheet
* Cash flow statements

There sure are a lot of other points of information that I must know about the company. We mostly get this information about a company in a quarter. Every three months, we get a snapshot of the company. 
 The thing is, we need to find out all the aspects of the company whether it’s going down or going up. What kind of things will make the company go up? Of course the easiest thing would be the things that it actually put money in, and actually getting money from. If it keeps on getting money, the wallah, we’ll think it’s keeping on going up like Amazon, Google, or whatsoever. 
 Try to find other indicators of fundamentals. 

### Sales Per Share
The company revenue is made by what is sells. To calculate the sales per share, we divide the stock count over the revenue(sales). Then we’ll get sales per share. With this, we’ll be able to know how much a share is worth in a pretty intuitive way. 

### Earnings Per Share
This indicator accounts sales per share. It’s pretty much the most intuitive indicator of how much a stock is worth. That’s why the companies that are worth big make big. But I want to know about the unicorn startups that don’t make money but over valued. Is it just for marketing? 
 Anyways, the formula is: (Revenue - cost for making) / stock count

Remember, both sales per share and earnings per share don’t give anything to the stakeholders pockets. They’re just good indicators to see how much my stock really is.

### Dividends Per Share
This is where the stakeholders get cash per stock! It’s important to know how much the company is going to give back to the stakeholders. If the company gives out like ten million dollars, and there’s ten million stocks, we’ll get one dollar per share. Well that’s it!
 But what if the company decides to invest somewhere else with that money? They say an IPO is there for getting cash. The cash flow, they’ll sell their shares and use that money to do this and that? What if they don’t have anything? And besides, does the company have to have a certain amount of shares? Does it mean that when the founder has most of the shares, the company has a lot of shares? I’m not sure about this. 

## Price to Earnings Ratio
Stocks current market price / EPS(Earnings Per Share) = PE ratio. You can interpret this of how much is the stock worth of how much the company makes. “Worth the money off of what it makes?”
 Current market price: based on both (current assets - liabilities + estimates of company’s future performance). 
 
### What does it mean to have a high PE ratio?
The company may have no earnings and have a high stock price. This is an example of a unicorn startup. People think it’s pretty much the future! That’ll make optimistic decisions of the future. 

### What does it mean to have a low PE ratio?
The company has high and stable earnings but less expectations for future growth. I think it’s like coca cola. Lol. Low ratio doesn’t also mean just the about the earnings. It’s about the future. How we interpret the future of the company will give us a hint of why the PE ratio is low or high. 
 There could be governmental regulations, some bad issues, some pessimistic things about the future will make the stock price go down even though the company is making good money. Overall, if the company makes good money and has no stuff for the future, the stakeholders will just want dividends and not try to invest into new future projects. 

### PE ratios: company’s financial heath snapshot
You must not use the PE ratio alone. You have to give more insights and compare them with other competitors inside the geographical area. That’ll give you more insight on the companies current health. 

## Exchange Traded Funds
Trading algorithms goals!
* Making money

Index fund: SPY (S&P 500, Standard & Poor)

All I got from this was ETF and Index funds. It’s because it’s hard for us to actually find the stocks that will actually give us great cash. For safe money,  we go with index funds ands ETFs.

## Quiz: Index vs ETF
They’re basically the same. It’s just they try to get their own source of companies!

## Alternative Data
Standard information:
* Market Data
* Corporate Actions
* Fundamental Information
* Compositional Data

## Interview: Satellite Data
Remote sensing data, geospatial data. I can’t believe they use geospatial data all around the world to predict oil, water, agricultural prices like that. I mean, they actually modeled the earth and try to gain information about all that stuff in real time. Just to trade! Now this is so sick. Maybe I could get into this business when I get better. I think it’s about quantifying the things that I see. How to make it into numbers and see how those numbers effect a certain asset to go up or down. Besides, it’s always about why this went up or down! 

## Interlude: Your Goals
I stay with problems longer: Albert Einstein. 

# Stock Returns
How to actually know how much we get when we sell something? I think there’ll be all kinds of formulas and stuff over here. I bet! 

## Returns
We’re going to learn how to analyze stock data!

Return synonyms: raw return, percentage return, linear return, simple return.

Return r = (pt - pt-1) / pt-1

(1050 - 1000) / 1000 = 50 / 1000 = 0.05 = 5%
* Bought at $1000
* Sold at $1050 one month later
* Return is $50/$1000 = 5%

## Quiz: Calculate Returns
Using the `Dataframe.shift` function, we can shift the date as much as we want! 

## Log Returns
Log return = R = ln(pt / pt-1)

Converting between raw and log returns
R = ln(r + 1)
r = eR - 1

God damn it I should learn Latex. 

## Quiz: Log Returns and Compounding
* Rates of compounding
* Continuous compounding
* Continuously Compounded Return = log return
* Additivity
* Annualized Rate of Return
* Time Additivity of Log Returns
* Numerical Stability

## Distributions of Returns and Prices
Daily Price Values.
Well … I totally didn’t get anything of this class. I’m pretty much bad at this stuff lol can’t believe it. Didn’t understand a thing lol. Well anyways, I think you should give it a go some time else. 

## Why Log Returns?
1. Log returns can be interpreted as continuously compounded returns
2. Log returns are time-additive. The multi-period log return is simply the sum of single period log returns.
3. The use of log returns prevents security prices from becoming negative in models of security returns. 
4. For many purposes, log returns of a security can be reasonably modeled as distributed according to a normal distribution.
5. When returns and log returns are small (their absolute values are much less than 1), their values are approximately equal.
6. Logarithms can help make an algorithm more numerically stable.

The thing that I understand about log is, it makes all the additions so small. Then it’ll be easy to make a standard deviation. Since the gains are small, we can normalize it in a form that we can use for every single trading algorithm. That’s what I understand at the moment. Need to get more examples to actually understand the other benefits. 

# Momentum Trading
So I’ll be learning something called momentum trading over here right? Isn’t it something like trend following or something? Where the price is going, follow the momentum, the direction.

## Designing a Trading Strategy
“A set of rules that determine what stocks to trade, when to trade, and how much money to invest.”

## Momentum-based Signals
It’s like Newton’s movement law. When a stock rises, it tends to rise. To the opposite, if a stock falls, it tends to fall. It’s about momentum. Where it goes, it goes that way for a while. When the stock rises too much for a long time, people get in FOMO(Fear Of Missing Out) mode. And when the stock falls too much, people tend to sell before they lose too much. 

## Quiz: Momentum-based Signals
 Winner tend to outperform and the losers continue to underperform. 

## Long and Short Positions
Long positions is when you buy and hold. Actually is a position when the stock goes high. 

## Quiz: Dtype
[Data type objects (dtype) — NumPy v1.13 Manual](https://docs.scipy.org/doc/numpy-1.13.0/reference/arrays.dtypes.html)
Data type objects. `astype` and all that stuff. It’s about making the array to have the right data type. 

## Trading Strategy
It’s just creating trading strategies with some evidence. If your trading strategy is related with momentum, you should long the best performing, and short the least performing. 

### Quiz: Momentum-based Portfolio
Just pick the most underperforming stocks to short!

## Quiz: Calculate Top and Bottom Performing
Calculate top and bottom. 

## Statistical Analysis
Using statistical knowledge to do analysis. God damn it I sure need to go learn statistics. I can’t do any of this analysis without statistics.

## The Many Meanings of “Alpha”
The math, finance industry has the word alpha. Both academia and industry have different meanings of it. I hope you find a more explanatory article about the definition. 

## Quiz: Test Returns for Statistical Significance
Standard deviation and stuff. Can’t get along :(

## Quiz: Statistical Analysis
Dunno.

## Finding Alpha
* Alpha Research
* Improve Strategy
* Backtesting

## Interlude: Global Talent
Everyone has the capability to find alpha.

#mooc