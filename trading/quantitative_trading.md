# Quantitative Trading
I’m reading this book to actually get a proper overview. The Udacity nano degree was somewhat hard and not really nice. I think it’s better for me to think as I read. I need a slow method. I can’t go with a fast one that throws at my face. 
 I think courses are best when I actually know a little about the material. If not, it’s really hard to understand right away. 
 Let’s get started with the overview of quantitative trading. 

# The Whats, Who’s, and Whys of Quantitative Trading
Quantitative trading === algorithmic trading. Algorithms. Things that can be quantifiable, that’s the key. We can have technical analysis in this party, but we can’t quantify subjective chart patterns like “head and shoulder” etc. Subjective things can’t be quantifiable. But, if we get to know the quantifiable formula that draws a head and shoulders, then it could become a strategy. Even though, it’s hard to just think that a chart pattern will come out and we could buy/sell on that pattern. You never know, because the whales already know what they’re going to do with the chart. They draw it. 

Anything that you can make into bits and bytes and use it for trading, it’s quantitative trading.

## Who can become a quantitative trader?
It tells us that anyone can become a quantitative trader. The author actually was a dude that had a cool PhD from Cornell in physics and went to IBM Watson for research. After that he went into financial institutes like Morgan Stanley and etc. But when he used advanced techniques in quantitative trading, he mostly got a whole lot of losses. After that, he started to trade for himself with really simple methods, and suddenly, he gained profit. The moral of this story is obviously keeping, creating everything simple. Not complex to simpl’er’. 
 A typical mindset for anything you do, but this mindset is really important. Not trying to make money right away. Instant wealth should not be the thing that you should get. But I’m willing to take the risk of instant wealth when I have no money. We need a start, and if you don’t have that start, it won’t be easy to grow your money.

## The business case for quantitative trading
This dude said perhaps any small initial is 50k. God damn it lol. Anyways, the factors that we need to have for a quantitative trading fund is:

### Scalability
`Leverage` is key. If you want to scale up a company, you need to go to a venture capital and see how much you can get. Or else you can’t scale. Unless your revenue went way up. IT companies are pretty cool since the more users you get, the more revenue. If you have a ad network lol. 
 In quantitative trading funds, all you need is leverage. You make leverage, and you make that much money. So you scale up until you don’t need to leverage anymore. 

### Demand on Time
The initial time that you need to spend is building your own infrastructure. I’m sure it’ll take some time, but after that, it’s all research and making your infrastructure better and better. There’s nothing else to than that. 
 The more you automate, the less time you need to spend on manual operations. It’s a business that you can actually automate yourself. Maybe some cloud computing resources might be needed, but I think that’ll be pretty unnecessary. I would like to use ubuntu as my desktop computer, but that doesn’t really give the tips and tricks for everything. But still, if you want to do machine learning, I’m sure that’ll be a huge thing to have. That’s something that I should put in when I actually have the money to execute that stuff. 
 Anyways, after you automate the process of trading when the market opens and closes, all the other time that you have is your free time. I’ll use all that time for research, or maybe for the company that I go to. At first, I’ll need to do some work at my company, and just do this and that. 
 Do you know what’s good? Do you know why I need to get into a quant firm? I can use that time to build my infrastructure, AND the firm’s infrastructure. Which means all I get to do is actually research and research. I need to make that state and get better and better. 

### The Nonnecessity of Marketing
Nothing but the price. We need no marketing. Of course trading for other people’s money is obviously real god damn stressful and hard. Something that I’ll do when I get into a quantitative trading firm. 
 Remember, no need of marketing.

## The way forward
* How do you find the right strategy to trade?
* How do you recognize a good versus a bad strategy even before devoting any time to backtesting them?
* How do you rigorously backtest them?
* If the backtest performance is good, what steps do you need to take to implement the strategy, in terms of both the business structure and the technological infrastructure?
* If the strategy is profitable in initial real-life trading, how does one scale up the capital to make it into a growing income stream while managing the inevitable (but hopefully, only occasional) losses that come with trading?

# Fishing for Ideas
Oh yes. This is where we get to know what we’re going to do! 

“Where can we find good strategies?”

There’s a table list of where to get trading ideas in the book. But the sad thing is, academic papers don’t really help. They’re mostly over complicated, and are out of competition because of its fame. So we get our trading ideas from other traders in the community. Of course their’s won’t work right out of the box. But if we keep on tweaking it, we’ll be in profit maybe. 
 The author actually was scared that he wouldn’t get new trading ideas from other colleagues. So he started his own blog and gave out whatever so called secrets he had to the public. After that, he got a nice idea from one of his  readers. So actually, it’s a really good way to get the best from the best. Since people who try to read other people’s ideas and try to connect, they’ll give you really good feedback in the meantime. 
 In result, the most important thing is not the strategy itself. It’s about finding the optimal number and variations that make it a good strategy or not.
 In big institutes, people don’t really share their ideas. It’s because it goes right into profit. People are wary because they might pour in a whole lot of capital into that strategy and might sabotage them. 
 The author keeps on paraphrasing `parameter tuning`. That’s what I got from it. Suiting your needs. 

## How to identify a strategy that suits you
What if the strategy is so cool and nice. But it wasn’t for me? Under what circumstances does it mean that it doesn’t suits me. I believe if there’s some expensive data that I have to consider would be hard for me to use that strategy. A strategy that uses satellite data to tell what is where in the map. That sure won’t be easy for me to get my hands on. 

### Your Working Hours
I’m going to work my ass off to automate everything. I must remove all manual things and only get alerts when problems come. That’s the only way I’ll be able to use my limited time.
 Talking about automation again lol.

### Your Programming Skills
I have these skills, so no worries. I wonder if I can do high-frequency trading with Java? Or should I learn C++. Or not? 

### Your Trading Capital
God damn it! I can’t believe you can’t do it with less than $50,000. Damn it! Isn’t there a way? Okay what the hell is a brokerage account and a proprietary trading account. I gotta get the words out lol. 
 Ahh I see, to get a higher initial capital, we can use leverage. How the hell do we get leverage in Korea? I’m not sure whether there is a way. Okay, trading futures, currencies, and options can offer me higher leverage than stocks. Which is totally a good thing. 
 I don’t really understand all the futures and options things. But what I got was, if I have low capital, I need to at least get some good infrastructure and data. Good data will actually get good profits. Backtesting on good data will lead to profit! Survivorship-free data is expensive.

### Your Goal
You have to find out whether your strategy is going to be long-term, short-term. Also, ask what a `Sharpe ratio` is. 

## A taste for plausible strategies and their pitfalls
How to check the strategies!

### How Does It Compare with a Benchmark and How Consistent Are Its Returns?
Because of the benchmarks and the real world results will be different, we need to find a way to evaluate it. So we use `Sharpe ratio` and `information ratio`.
`Information Ratio = Average of Excess Returns / Standard Deviation of Excess Returns`
`Excess Returns = Portfolio Returns - Benchmark Returns`

I sure need to understand the meaning of this statistical ratio. I even need to know the true essence of what a ratio is. How it actually gives you results like that.

You choose different market indexes and different information ratios. Of course different strategies should be implemented for each market index. If we choose a market index, it’s actually just an easy portfolio is what I’m guessing. Or else you’d have to get other information from the press and see whether what kind of companies have relations with each other and who benefits or fails who. That’s manual trading. It’s not easy to quantify that kind of stuff since it needs real research from a human being. That’s why market indexes are over here. Market indexes are used because they don’t die easy, and it represents the whole market of those types of companies. 

* [Risk-Free Rate Of Return](https://www.investopedia.com/terms/r/risk-freerate.asp)
	* Risk-free rate represents the interest an investor would expect from an absolutely risk-free investment over a specified period of time.
	* The interest rate of a risk-free return. I think these kinds of things would be actually just putting money in the bank, and those long-term holding bank accounts(installment savings, fixed deposit, etc) that you make. 
	* So there are `risk-free assets` and `risk-adjusted asset`. A risk-free asset would be something like the U.S. Treasury Security which gives annual of 3%. And the latter would be market indexes like Standard & Poor’s 500 Index. 
* [Sharpe Ratio Definition](https://www.investopedia.com/terms/s/sharperatio.asp)
	* Risk adjusted returns. So the risks are calculated? How can risks be adjusted? If you lose, you’ll lose a percentage of your cash. How does risk get adjusted or even calculated? I guess I’ll have to find this in a risk management book or something.
* [Information Ratio – IR Definition](https://www.investopedia.com/terms/i/informationratio.asp)
	* Information Ratios give your risk-adjusted returns in relations with the benchmark. I’m not sure what the benchmark is actually referring to over here. It’s a certain point of something. But I’m not sure what that point is. 

Strategies that don’t trade much, have a high MDD, and also is down for a long period of time, it’s likely to have a low Sharpe ratio.
 The higher the Sharpe ratio(< 3), it’s more likely to win and profit in a given time interval. If we had a strategy that profits every four hours, that’d be cool. But the more we trade, the more we give cash to the exchange. Slippage must be considered.

### How Deep and Long is the Drawdown?
Maximum Drawdown. MDD. That’s it. How deep and long can you hold a position? And I mean DOWN. The percentage is minus, and how are you going to define it. 1 month of -10%? 3 months of -30%? Hope this doesn’t happen to my strategy. 

### How Will Transaction Costs Affect the Strategy?
Slippage. Transaction costs are actually the brokerage fee, the time going to the brokerage, exchange and back, and market impact. It’s really hard to calculate the market impact. You won’t even be able to buy or sell at real volatile times. 

### Does the Data Suffer from Survivorship Bias?
Survivorship bias. So data that only have the survivors will actually over optimize the backtest results. 

### How Did the Performance of the Strategy Change over the Years?
Don’t get overwhelmed by the percentages of the early days. Remember, there wasn’t quants and the spreads were real wide. Beware of the inflations, and all the stocks that have low stock prices will be bought a lot. All that surviver bias will inflate the backtests. Also, you have to be careful of the macroeconomics and regulation events. 
 It’s best to make our backtest results good in the base of recent historical data.

###  Does the Strategy Suffer from Data-Snooping Bias?
This is where simple stupid comes in. The more rules you have, you’re never going to execute a trade. The more parameters you have, you’ll eventually just match the parameters on the backtest results. Overfitting the historical data won’t make that strategy profitable. 
 In general, less parameters, less rules will have a high chance of profit. That’s why we need simple stupid.

**Artificial Intelligence And Stock Picking**
AI algorithms that work:
* They are based on a sound econometric or rational basis, and not on random discovery of patterns.
* They have few parameters that need to be fitted to past data.
* They involve linear regression only, and not fitting to some esoteric nonlinear functions.
* They are conceptually simple.
* All optimizations must occur in a loopback moving window, involving no future unseen data. And the effect of this optimization must be continuously demonstrated using this future, unseen data.

### Does the Strategy “Fly under the Radar” of Institutional Money Managers?
It doesn’t by itself. You have to find the “Fly under the Radar” strategies. Niche points are where you’re going to find profit. 
 For example, low capacities that trade too often, strategies that trade very few stocks every day, very infrequent positions.

## Summary
* Business school and other economic research web sites
* Financial web sites and blogs focusing on the retail investors
* Trader forums where you can exchange ideas with fellow traders

When you try to choose, there’re factors that you need to consider.
* How much time do you have for baby-sitting your trading programs?
* How good a programmer are you?
* How much capital do you have/
* Is your goal to earn steady monthly income or to strive for a large, long-term capital gain?

Even before backtesting, you can filter those strategies out with these criteria:
* Does it outperform a benchmark?
* Does it have a high enough Sharpe ratio?
* Does it have a small enough drawdown and short enough drawdown duration?
* Does the backtest suffer from survivorship bias?
* Does the strategy loose stream in recent years compared to its earlier years?
* Does the strategy have its own "niche” that protects it from intense competition from large institutional money managers?

#reading/books