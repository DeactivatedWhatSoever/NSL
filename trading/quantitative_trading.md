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

# Backtesting
We checked out what a backtest is. It’s a test to see how a quantitative trading strategy performed in the `past`. We can’t get the future. The only way to test a strategy is with historical data(past) and see whether it will do the same in the future. I’m not sure whether that strategy will do good in the future like the past, and I don’t know the probability. I wonder if that can actually can be calculated. A percentage of whether it will do good or not. 
 We’ll also see the platforms, data, performance measurements, pitfalls, and refinement and improvements we can make when backtesting in this chapter.

## Common Backtesting Platforms
Some may be cheap, but some are worth tens of thousands. I really want to know what kind of software will actually have that much value.

### Excel
Excel is good for looking at one stock or one symbol. You get what you see. That’s the major advantage you get in excel. But there are a lot of drawbacks that I consider. It’s hard to scale, visual basic isn’t a good language to use. Scalability and the language that I have to use for sucks. People say Excel is a really good skill to have. And I admit it since a lot of the population uses it. But I don’t really use it. I’d rather backtest with a programming language.

### MATLAB
This is a scientific language. I didn’t know Octave was a clone of MATLAB. Since it’s $1000 bucks, I’m not sure whether I can afford it. And I don’t know whether it will be a good language to use. It’s a real cool mathematical language, that’s why it’s so expensive. It has a lot of mathematical models and easy calculation methods and modules, all that stuff. I’m not sure whether it has nice visualization modules. 
 MATLAB sure is scalable, but it has an execution platform which is clumsy. From that, I think it’s just a way of preference. But sure I want to know how much powerful the mathematical parts are. 

### Using MATLAB to scrape web pages for financial data
Any language can do this, and it’s just an example in MATLAB.

### TradeStation
This dude is an all-in-one solution. You can make an order right away with your backtested model. But the problem is, the language that’s used over here isn’t really good and doesn’t have advanced mathematical or statistical features. You sort of get locked in.

### High-End Backtesting Platforms
These dudes are expensive, and do integrating data retrieval, backtesting, optimization with machine learning algorithms, and automated execution. There's a list of programs in this book, and they all have their strengths in for each derivative. I should get a test drive of it when I get the chance lol. 

## Finding And Using Historical Databases
There are a lot of pitfalls in the historical data that we can purchase and see. I’m sure it won’t be easy for me to find, but let’s try and see. The pitfalls, and what kind of data are out there. When to use what, and when to use why.

### Are the Data Split and Dividend Adjusted?
Splits happen when a stock price goes too high and we just want to break that stock into more pieces. If we make a stock into 3 pieces, the stock’s price will become one third of the original price. And of course the available stocks will multiply by three. Didn’t know there’s a reverse split. So there 
 A dividend is the money when you get from holding a stock. Profit shares. 

Also, I think you should go and see how splits and dividends are adjusted.

Data should be split and dividend adjusted. That’s why you don’t get to adjust it yourself. `Adjust` is a good thing. Which is adjusting for our needs. What about survivorship bias? It’s bad because it’s a `bias`. A bias isn’t really interpreted as a good thing. It’s mostly interpreted as a bad thing. In conclusion, you need to get split and dividend adjusted and  survivorship bias free data. 

### Example: Adjusting for Splits and Dividends
All you need to do is divide the split on the later dates. For dividends, each price has a multiplier. Just multiply that to the price and you’ll get the adjusted price. 

### Are the Data Survivorship Bias Free?
Survivorship bias: just counting in the companies that survived will make you have bias. The backtest will actually have bias because it’ll only have the survivors. But I’m not sure whether this counts if you’re only doing it with a few stocks? If you have a big portfolio, this could be pretty much an important factor, but I’m not sure with the others.

### Example: An Example of How Survivorship Bias Can Artificially Inflate a Strategy’s Performance
When you backtest with survivorship bias-free data, you’ll actually select portfolios that don’t survive. If that ever happens, you’ll lose a ton of money. It’ll be hard to manage hundreds of stocks. You never know whether a company will die or not. I think this is pretty much the same as cryptocurrency. With survivorship bias, it’ll be a disaster. 

### Does Your Strategy Use High and Low Data?
High and low data tend to give inflation. Because of the price range. If there’s a lot of noise in it, you’ll get more signals for sure. If there’s not much noise in it, you’ll only trade when you really have to. I think it’s a trade-off. The noise parameter `k` is something that must be adjusted. I think that too.

## Performance Measurement
The most important two performance measures are Sharpe ratio and MDD(Maximum Drawdown + Maximum Drawdown Duration).

### Example: Calculating Sharpe Ratio for Long-Only Versus Market-Neutral Strategies

Long-only strategy:
```MATLAB
% Make sure previously defined variables are erased.
clear;

% Read a spreadsheet named "IGE.xls" into MATLAB.
[num, txt]=xlsread('IGE');

% The first column (starting from the second row)
% contains the trading days in format mm/dd/yyyy.
tday=txt(2:end, 1);

% Convert the format into yyyymmdd
tday=datestr(datenum(tday, 'mm/dd/yyyy', 'yyyymmdd');
% Convert the date strings first into cell arrays and
% then into nemeric format.
tday=str2double(cellstr(tday));
% The last column contains the adjusted close prices.
cls=num(:, end);
% Sort tday into ascending order.
[tday sortIndex]=sort(tday, 'ascend');
% Sort cls into ascending order of dates.
cls=cls(sortIndex);
% Daily returns
dailyret=(cls(2:end) - cls(1:end-1)) ./cls(1:end-1);
% Excess daily returns assuming risk-free rate of 4%
% per annum and 252 trading days in a year
excessRet=dailyret - 0.04/252;
% The output should be 0.7893
sharpeRatio=sqrt(252)*mean(excessRet)/std(excessRet)
```

Long-short strategy:
```MATLAB
% Assume this is a contiunation of the above MATLAB code.

% Insert your own code here to retrieve data from SPY.xls just as above.

% Name the array that contains the daily returns of SPY "dailyretSPY"

% Net daily returns (divide by 2 because we now have twice as much capital)
netRet=(dailyret - dailtretSPY)/2;

% The output should be 0.7837
sharpeRatio=sqrt(252)*mean(excessRet)/std(excessRet)
```

### Example: Calculating Maximum Drawdown and Maximum Drawdown Duration
```MATLAB
% Assume this is a continuation of the above MATLAB code.
% Cumulative compounded returns
cumret=cumprod(1+netRet) - 1;plot(cumret);

[maxDrawdown maxDrawdownDuration=...
calculateMaxDD(cumret);

[maxDrawdown maxDrawdownDuration]=...
calculateMaxDD(cumret);

% Maximum drawdown. Output should be 0.1053
maxDrawdown
% Maximum drawdown duration. Output should be 
maxDrawdownDuration

function [maxDD maxDDD] = calculateMaxDD(cumret)
% [maxDD maxDDD]=calculateMaxDD(cumret)
% calculation of maximum drawdown and maximum drawdown duration based on cumulative compounded returns.

% Initialize high watermarks to zero
highwatermark=zeros(size(cumret));
% Initialize drawdowns to zero.
drawdown=zeros(size(cumret));
% Initialize drawdown duration to zero.
drawdownduration=zeros(size(cumret));
for t=2:length(cumret)
		highwatermark(t)=...
max(highwatermark(t-1), cumret(t));
		% Drawdown on each day
		drawdown(t)=(1+highwatermark(t))/(1+cumret(t))-1;
		if (drawdown(t)==0)
				drawdownduration(t)=0;
		else
				drawdownduration(t)=drawdownduration(t-1)+1;
		end
end

maxDD=max(drawdown); % Maximum drawdown
maxDDD=max(drawdownduration); % Maximum drawdown duration
```

## Common Backtesting Pitfalls To Avoid
We’ll be discussing about the two most common pitfalls. `Look-Ahead Bias` and `Data-Snooping Bias`

### Look-Ahead Bias
The data you’re referring is the future. That’s what look-ahead bias is. Looking ahead! You can’t refer to data that hasn’t even been initialized yet. But I didn’t really understand the second example. 
 Lagging: calculating the quantities like moving averages, highs and lows, or even volume, based on data up to the close of the previous trading period only. 
 Does that mean I should do all that on the base of the previous trading period? D-1? That’s the criteria right? That’s why you don’t have to do this when you enter on the close of the day.
 It’s hard to validate whether look-ahead bias has occurred in MATLAB(Programming language). It’s easy to look at the graph in Excel since it just shows you. If you don’t visualize your calculations, it’s not going to be easy for you to check. I think plotting is one of the most important things to think about.

###   Data-Snooping Bias
Over optimizing the strategy based on the data! If you keep on putting this and that on the formula, you’ll eventually make your strategy too fit for the data that you’re testing with.
 The rule of thumb here is five parameters. The strategy shouldn’t employ to entry and exit thresholds, holding period, or the lookback period. In other words, the program should enter, exit, and hold with an accurate criteria. Just like the volatility breakout strategy. 
 This bias exists whether or not, because we’re making a strategy based on data. There are some ways to mitigate this bias though.

* Sample Size
	* Rule of thumb: Optimal sample size = parameter count * 252(trading days I guess). If the number goes for minutes, it must be 252/390 per year of one-minute backtest data?
* Out-of-Sample Testing
	* Divide historical data into two parts, save the second part of the data for out-of-sample testing. 
	* Didn’t know paper trading was virtual stock trading lol. 
* Sensitivity Analysis
	* Change the parameters and see whether it drastically drops or not. If it drops, then there’s something mad going on!
	* Keep deleting the conditions until you see a massive performance drop. If the performance doesn’t drop until one condition, that means that’s the core. 

### Parameterless Trading Models
No free parameters = parameterless. Free parameters are parameters that must be estimated. I would love to see an example of this. We’ll get to see one at 7.1.
 The true meaning of this model is, all the parameters are dynamically optimized in a moving lookback window.

### Example: Pair Trading of GLD and GDX
This example helps me do out-of-sample test. Separating data into a training set and a test set. 

#### Using MATLAB
```MATLAB
% Make sure previously defined variables are erased.
clear;
% Read a spreadsheet named "GLD.xls" into MATLAB.
[num, txt]=xlsread('GLD');
% The first column (starting from the second row) is
% the trading days in format mm/dd/yyyy.
tday1=txt(2:end, 1);

% Convert the format into yyyymmdd
tday=...
datestr(datenum(tday1, 'mm/dd/yyyy', 'yyyymmdd');
% Convert the date strings first into cell arrays and
% then into numeric format
tday1=str2double(cellstr(tday1));
% The last column contains the adjusted close prices.
adjcls1=num(:, end);
% Read a spreadsheet named "GDX.xls" into MATLAB.
[num, txt]=xlsread('GDX');
% The first column (starting from the second row) is
% The trading days in format mm/dd/yyyy.
tday2=txt(2:end, 1);
% Convert the format into yyyymmdd.
tday2=...
datestr(datenum(tday2, 'mm/dd/yyyy'), 'yyyymmdd');

% Convert the date strings first into cell arrays and
% then into numeric format.
tday2=str2double(cellstr(tday2));

% The last column contains the adjusted close prices.
adjcls2=num(:, end);

% Find the intersection of the two data sets,
% and sort them in ascending order.
[tday, idx1, idx2]=intersect(tday1, tday2);
cl1=adjcls1(idx1);
cl2=adjcls2(idx2);

trainset=1:252, % Define indicies for training set

% Define indicies for test set
testset=trainset(end)+1:length(tday);
% Determines the hedge ratio on the trainset
% Use regression function
results=cls(cl1(trainset), cl2(trainset));
hedgeRatio=results.beta;

% Spread = GLD - hedgeRatio*GDX
spread=cl1-hedgeRatio*cl2;
plot(spread(trainset));

figure;

plot(spread(testset));

figure;

% Mean of spread on trainset
spreadMean=mean(spread(trainset));
% Standard deviation of spread on trainset
spreadStd=std(spread(trainset));
% z-score of spread
zscore=(spread - spreadMean) ./spreadStd;
% Buy spread when its value drops below 2 standard deviations
longs=zscore<=-2;

% Short spread when its value rises above 2 standard deviations.
shorts=zscore>=2;
% Exit any spread position when its value is within 1
% standard deviation of its mean.
exits=abs(zscore)<=1;
% Initialize positions array
positions=NaN(length(tday), 2);

% Long entries
positions(shorts, :)=...
repmat([-1, 1], [length(find(shorts)) 1]);
% Short entries
positions(longs, :)=repmat([1 -1], [length(find(longs)) 1]);
% Ensure existing positions are carried forward unless there is an exit signal positions=fillMissingData(positions);
cl=[cl1 cl2]; % Combine the 2 price series

dailyret=(c1 - lag1(c1))./lag1(c1);

pnl=sum(lag1(positions).*dailyret, 2);

% The Sharpe ratio on the training set should be 2.3
sharpeTrainset=...
sqrt(252)*mean(pn1(trainset(2:end)))./std(pn1(trainset(2:end)))

% The Sharpe ratio on the test set should be about 1.5
sharpeTestset=sqrt(252)*mean(pn1(testset))./std(pn1(testset))
plot(cumsum(pn1(testset)));
% Save positions file for checking look-ahead bias.
save example3_6.positions positions;

in file lag1.m:

function y=lag1(x)
% y=lag(x)
if (isnumeric(x))
		% Populate the first entry with NaN
		y=[NaN(1, size(x,2));x(1:end-1, :)];elseif (ischar(x))
		% Populate the first entry with "
		y=[repmat(", [1 size(x,2)]);x(1:end-1, :)];else
		error('Can only be numeric or char array');
end
```

## Transaction Costs
No backtest is complete without putting in transaction costs. 
* Commission
* Liquidity Cost
* Opportunity Cost
* Market Impact
* Slippage

### Example: A Simple Mean Reverting-Model with and without Transaction Costs
They strategy we’re testing over here is with: Buy stocks with the worst previous one-day returns, and short the ones with the best previous one-day returns.
 The author just backtests with MATLAB and sees the results of the backtests of leaving the transaction costs out and in.

## Strategy Refinement
Same principles with the parameter optimization: Whatever changes you make to the strategy to improve its performance on the training set, it must also improve the performance on the test set. 
 Making few variations of the basic project will actually make some various incomes. For example, you have to think about what kind of stocks that you’re going to trade. In other words, you have to know what to exclude and include of the universe. Exclude stocks that are too manipulative of news or mergers and etc. Those types of stocks will be too volatile. Or if your strategy lives with volatile, you should put them in.

### Example: A Small Variation on an Existing Strategy
It’s so cool how he just changed the stocks and the Sharpe ratio changed lol. Gotta get used to this!

## Summary
* Data: Split/dividend adjustments, noise in daily high/low, and survivorship bias.
* Performance measurement: Annualized Sharpe ratio, maximum drawdown, maximum drawdown duration
* Look-ahead bias: Using unobtainable future information for past trading decisions
* Data-snooping bias: Using too many parameters to fit historical data, and avoiding it using large enough sample, out-of-sample testing, and sensitivity analysis
* Transaction cost: Impact of transaction costs on performance
* Strategy refinement: Common ways to make small variations on the strategy to optimize performance

#reading/books