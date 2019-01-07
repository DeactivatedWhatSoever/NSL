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

#mooc