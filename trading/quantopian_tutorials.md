# Quantopian Tutorials
Since I might be using most of the Quantopian open source projects, I think it would be great to learn from them. They have pretty solid tutorials, and it'll give me an idea of, what tools I'll need to actually make a trading algorithm. So lets take extreme care and see where it goes.

## Getting Started
Just getting started. The start of everything.

### Introduction
Introduces the Quantopian APIs for researching and developing quantitative trading strategies.

#### What is a Trading Algorithm?
Trading algorithm: a defined set of rules for selling and buying financial assets. These are based on mathematical, statistical, and machine learning models. A model, a formula that actually does all the decision making. I want to know the shape of a machine learning model and deep learning model.

#### Where do I Start?
It's so cool that Quantopian has a research environment built into their website. A jupyter notebook platform right in! It's really cool of them to actually manage other people's experiments. Well, it actually is a great thing for them too really. They'll know what people are doing, what the algorithms are and stuff. I think I should make my own research platform. That's how we can actually get the job done by our own.

### Data Exploration
```python
# Research environment functions
from quantopian.research import returns, symbols

# Select a time range to inspect
period_start = '2014-01-01'
period_end = '2014-12-31'

# Query returns data for AAPL
# over the selected time range
aapl_returns = returns(
    assets=symbols('AAPL'),
    start=period_start,
    end=period_end,
)

# Display first 10 rows
aapl_returns.head(10)
```

I need to know what the `returns` function really does. It gives a date and sometimes positive and sometimes negative float pointed number. What does this mean?

#### Alternative Data
Quantopian has a lot of datasets for you to play with. Like corporate fundamentals, stock sentiment analysis, and macroeconomic indicators. [Quantopian Data](https://www.quantopian.com/data) -> This is where you find them. Of course they have premium data, so you'd better have the capital to buy it sometime.

[StockTwits Trader Mood Data](https://www.quantopian.com/data/psychsignal/stocktwits) -> StockTwits is actually a community. I think you should get reddit and, or any other communication channel and crawl all the messages and NLP all that stuff and get the mood of people. How to get whether they're negative, or positive about that situation.

### Pipeline API
Common uses:
1. Selecting assets based on filtering rules
2. Ranking assets based on a scoring function
3. Calculating portfolio allocations

So it helps us do some analysis around large amounts of assets. Apply all this and that on multiple assets instead of just looking at one asset right?
 The pipeline is a pipeline. Giving a reference to the asset, and giving the computations of what we're going to do on the assets to the pipeline, and it will give us the results.

#### Universe Selection
Yes, the universe! The area of what you're going to trade. Top 500, 1000, 2000, 3000 etc. The more the top, the easier it's going to be liquid.
 Yep, defining the assets that we want to consider when trading. Liquidity is a really big factor since we need to trade very frequently. Especially when we have a lot of assets of each, we'll need the ability to trade it at once with not much price interference. 

1. Set the columns which are strategies
2. Set the universe

And then do the output!

### Strategy Analysis
How to analyze strategies.

#### Strategy Definition
We learned to manipulate and access data in Quantopian. The pipeline API and the data API. 
 Dude, I mean, what is a low value and high value in this domain? 

* [Long (or Long Position) | Investopedia](https://www.investopedia.com/terms/l/long.asp)
* [Short (or Short Position)](https://www.investopedia.com/terms/s/short.asp)

#### Strategy Analysis
Even though this is a tutorial, this is really hard. I think I'm not ready for it :(

`Alphalens` is a factor analysis tool. A long-short strategy eh. Then long you can also create long or short strategies right? Since I can't make shorts, I'll have to build strategies for longs. I wish I could do shorting!

### Algorithm API
1. Build a trading algorithm
2. Attach our data pipeline to it
3. Use alpha scores for portfolio construction
4. Analyze algorithm's performance under more realistic conditions by simulating it over historical data

Number 4 is called backtesting. Historical simulation.

#### Algorithm API & Core Functions

Core function lists:
**initialize(context)**
It initializes when the algorithm starts running and it's called only once. So you have to pass a `context` object which has one starter variables that you need.
 So `context` is just a dictionary, and all the states of the algorithm must be altered here and not with global variables.

**before_trading_start(context, data)**
preprocessing stuff when the algorithm's going to trade for the day.

**schedule_function(func, day_rule, time_rule)**
[NYSE: Holidays and Trading Hours](https://www.nyse.com/markets/hours-calendars) -> Trading calendar!

### Data Processing in Algorithms
There's an `attach_pipeline` function on the Algorithm API. And put the pipeline output data `before_trading_start` function. After that, we get the data from the context inside the rebalance function which is used in the `schedule_function`.

### Portfolio Management
So the last thing is that we need to manage portfolios. A portfolio, is what I understand, the assets that we are trying to trade with. What kind of assets we're trading, like high volatile, some sort of big company thing or whatever. I'm thinking about it, but I don't exactly know which one to talk about lol.
 The goal for portfolio optimization is, maximizing the returns based on alpha scores, while maintaining a specific structure defined by a set of rules or constraints. 
 The `Optimize` API will help you optimize the portfolio. And also, I think I should go and find what `alpha` really means. The alpha is actually the thing that we saw from the market that it's something that we can use to actually make money from. Like if it's sentimental analysis, we get all the sentiment data, and that'll be our alpha. The actual strategy that might lead you to profit. Is that an alpha? 
 Dang, the constraints that we use are actually like `max_leverage`, `max_position_size`, `max_turnover` and all that stuff. This is really cool to know. The objective of the optimization is obviously maximizing the alpha scores.

#### Risk Management
I think this is one of the biggest things in the financial market to think about. How to manage risks and how much should you risk. Obviously in the bull markets it'll be appropriate to trade aggressively, which means high risk, high return. But when it's bull markets, if you put in a lot of risk, you won't get that much of a compensation. Well if it were bear markets, all the other firms would be able to short it!
 Quantopian has a `Risk` model that can help us manage out portfolio's exposure to common risk factors. There's 16 different risk factors and 11 of them are sector factors and 5 style factors. 
 The design of Quantopian's APIs are really nice. You can put all the data you need into the data pipeline api like risks, alphas, all that stuff and you can use all that stuff in the before trading function and actually calculate things with it. I think it's a really nice design to do it like this. Also constraining the things that we don't need. 

### Backtest Analysis
`Pyfolio` is an open source tool for portfolio and risk analysis. We can get a lot of visualizations and a lot of information from the backtesting tool in Quantopian. You know, this really is good. But can we have factors like, who buys what and stuff? Is that possible? I'm not sure whether that is possible or not. And following the whales, would that be right? If we trade just the same as those people, I just wonder whether we'll get more money or not. 
[Get Funded](https://www.quantopian.com/get-funded) -> You can get funded for your ideas. I think it'll be really good for me to take a position of this. 

#reading/articles