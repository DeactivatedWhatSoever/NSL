# Introduction to WebSim
One of my ultimate goals is being a `Quant trader`. And I want to go into WORLDQUANT for my first career transition. To get there, I'd better go study the things that this fund makes and get used to it. And actually use the things they do, and try to bust in by communicating with the people actually in there. 

Table of Contents
1. Introduction to Alpha: Definitions and Explanations
	1. Alpha Logic Chart
	2. Alpha Types
	3. Simulation Logic for Delay-1 Alpha
	4. Performance Measurement: Definitions
	5. Resources
2. Introduction to WebSim
	1. Definitions
		1. WebSim
		2. Alpha Expression
		3. Simulation
	2. Results Analysis
	3. Getting Started
		1. Market Data
		2. Operators and Functions
	4. Achieving Good Results

## Introduction to Alpha
Alpha definitions and explanations relative to WebSim
* Alpha
	* An alpha is a mathematical, predictive model of the performance of financial instruments
	* What do you mean by performance of financial instruments? Does this performance mean something like getting money from it? Finding alpha means finding special models that make you profit. 
* Statistical Arbitrage
	* Statistical arbitrage, quantitative trading, systematic trading, relative value == alphas and strategies? 
	* What does it means for a model to have a large number of securities?
* Long/Short Strategy: Market Neutral
	* Neutral exposure to the market means something like, not making the price so volatile I guess? Ahh, so neutral, ups and downs, but just like a pattern. I get it.
* Universe
	* A set of instruments that an investor is interested in trading
	* What do you mean by instruments? I do think it's about 
* Weight
	* Variables that are changed over time. 
	* A risk-adjusted measure of the so-called active return on an investment.
	* It's a measure of ROI that's risk-adjusted? So it's a measurement. This weight, will tell us whether the ROI of this investment is good or bad of the risk we make right?

### Alpha Logic Chart
1. Idea -> expression
2. Raw Alpha -> operations
3. Position -> stats
4. PnL -> Analyze
5. Performance (IR, tvr, ret ...) -> revise
6. Back to Idea.

### Alpha Types
Type:
* Delay (delay-1, dealy-0, intraday)
* Universe (Top 3000, Top 2000, Top 1000, Top 500)

Example: Start with US delay-1, Top 2000
Types? What kind of types are these. What the hell is a delay.
Also, the universe is top of something? I know that it's the top of something, but what is the something that it's top about? 

### Simulation Logic for delay-1 alpha
Simulating logic? All the calculations are done with D-1, D-day, D+1. 
1. Generate alpha for day(i - 1, i, i + 1)
2. Calculate stats for day(i - 2, i - 1, i)
3. Use data for day(i - 2, i - 1, i)

### Performance Measurements: Definitions
* PnL
	* daily_pnl = sum of (position * daily return)
	* What the hell is a PnL? It's `Profit and Loss`. So the daily profit and loss is calculated by the sum of the `position * daily return`. The daily return must be like, the profit, the trade. That's pretty much straight forward. More the positions, will it be risk? I think it's not that much risky. You have to have a few positions. You can't live with one. 
	* (Today's close / Yesterday's close) - 1.0 -> This is a ratio right?
* Information Ratio (IR)
	* Prediction ability of a model. It tells us how the model is good at predicting the price right?
	* mean(daily_pnl) / std(daily_pnl) -> What's an std function?
		* std: Standard deviation.
	* Sharpe ratio is the annual IR: IR * sqrt(252)
	* 252 = estimated trading days in a year
* Turnover (tvr)
	* Value traded / Value held
* Drawdown
	* Percentage of the largest loss

### Resources
* [Active Portfolio Management: A Quantitative Approach for Producing Superior Returns and Controlling Risk: Richard C. Grinold, Ronald N. Kahn: 0639785316619: Amazon.com: Books](https://www.amazon.com/Active-Portfolio-Management-Quantitative-Controlling/dp/0070248826)
* Wiki: Market efficiency, Technical indicators, Stat-arb
* Paper: The cross-section of expected stock return, Journal of Finance

## Introduction to WebSim
Get all the vocabularies in your head about WebSim. Try to understand what this platform does, and what you have to implement by yourself. Or actually if you want to implement by yourself, try and find what you really need to do. 

### Definitions: WebSim, Alpha Expression, Simulation

* What is WebSim
	* Web-based tool for backtesting trading ideas. An alpha in WebSim is defined by an expression. A mathematical model is an alpha, that's why it can be defined by an expression. Backtesting trading ideas. With what data?
* How is an alpha simulated?
	* I think I can understand this once I actually simulate an alpha.
* Expression
	* An alpha expression consists of data, operators, and constants. What kind of data? The constants are basically some values that are already calculated. 
* Simulation Settings
	* Region and Universe
		* The number of most-liquid stocks to trade
		* I bet liquid stocks are estimated with the volume. If the volume is huge, that means it's really easy to liquidate the stock. But if you have small cash, then it own't be that much of a problem. 
	* Delay
		* The timing data used to generate positions: delay-1 uses yesterday's prices while delay-0 uses today's prices
		* Generating positions. What is a position? I'm going to be on a long or short position? So, since I can't do minus stuff, I'd have be in one position, but think of whether to buy or not. Which will be a long. 
	* Decay
		* Combine today's value with previous days' decayed value
		* Why is it called decay? I'm not sure of what this setting does.
	* Neutralization
		* Apply market normalization to the results
		* Market normalization, is it the unit thing?
	* Max stock fraction
		* Limit each stock's exposure to a portion of the overall portfolio
		* Percentage of the stock?
	* Unit check
		* Make sure the units (dollars, etc) match in the expression
	* Simulation timeframe
		* How much history to back-check 
		* How many days to actually check the data on
* Summary of Results
	* A tabular representation of results
	* Booksize
		* Amount of capital used, long and short
	* PnL
		* Profit and loss
		* If the value is plus, it's a profit, else it's minus, it's a loss
	* Annual return
		* Return on capital used
	* Sharpe
		* Average return divided by standard deviation of returns
	* Max drawdown
		* Absolute value of maximum peak to trough return
	* % profitable days
		* Positive PnL days divided by number of days
	* Daily turnover
		* Dollars traded divided by half of booksize
		* Dollars traded / (booksize / 2)
	* Profit per $ traded
		* PnL divided by dollars traded
		* PnL / Dollars traded

What does ratio really mean. a / b -> I need to know what it really means, why it divides and stuff. I mean, I think I should know the meaning of division properly. Multiply is so easy since it's just, multiplying, making the value bigger. But dividing doesn't just mean making the value smaller right? I think there's more to that. A formula that does dividing, I need to know what that really means. 

### Results Analysis (for illustrative purposes only)
-returns? 
The picture seams very old. So lets just pass this part.

### Getting Started
1. Type `expressions` in the box
2. Set the `Alpha Type`: Region, Universe, Delay
3. Set the `Alpha Operation`: decay, neutralization
4. Click `SUBMIT`

#### Available Market Data
* open
	* Daily open price. The first tick? That's the open price right?
* close
	* The daily close price. D-1 I guess.
* high
	* The highest price it went up to
* low
	* The lowest price it went up to
* vwap
	* Daily volume, weighted price. What does it mean by weighted? I mean risk-adjusted, that's it, but I want to know how risk is adjusted.
* volume
	* The volume -> How many stocks have been traded. Stocks traded, sold + bought = volume? 
	* If someone sells, that means someone buys. If someone buys, someone sells. So any sort of trade, that's a trade. If a lot of people sell, still, that means someone bought that thing. 
* returns
	* Daily returns. How much you got! PROFIT!
* adv20
	* Average daily volume in the past 20 days. ADV(Average Daily Volume)
* sharesout
	* Daily outstanding shares
	* So, outstanding shares would mean that someone actually bought a lot of them?

#### Operators/Functions
* `+, -, *, /, ^`
	* Add, Subtract, Multiply, Divide, Power
* `<, <=, >, >=, ==, !=`
	* Logic comparison operators
* `||, &&, !`
	* Logical OR, AND, Negation
* `condition ? expression 1 : expression 2`
	* We all know what this is, but I don't know it in English.
* Rank(x)
	* Rank the values in vector x and the return values are between 0.0 and 1.0
	* What does the return value mean? Ahh, so that's how it's ranked. 
* Min(x, y)
	* Parallel minimum of vectors x and y (similar to the pmin function in R)
* Max(x , y)
	* Parallel maximum of vectors x and y (similar to the pmax function in R)
* StdDev(x, n)
	* Standard deviation of the values in vector x for the past n days. Note that n must be less than *256 -> 
	* 256 is the maximum number of days prior to the first simulation day for which we have data
* Correlation(x, y, n)
	* Correlation of the values in vectors x and y for the past n days. 
	* Note that n must be less than 256
* Sum(x, n)
	* Sum of the values in vector x for the past n days. 
	* Note that n must be less than 256
* Covariance(x, y, n)
	* Covariance of the values in vectors x and y for the past n days. 
	* Note that n must be less than 256
* CountNans(x, n)
	* Number of NaN values in vector x for the past n days
* Abs(x)
	* Absolute value
* Delay(x, n)
	* Value of x at n days ago.
	* Note that n must be less than 256
* Step(x)
	* For all stocks, current day is x, yesterday is x-1, and so on
* Delta(x, n)
	* x[date] - x[date - n]
	* Note that n must be less than 256
* Decay_linear(x, n)
	* Linear decay over the last n days
* Decay_exp(x, f, n)
	* Exponential decay. f is the smoothing factor, and the process starts from n days ago
	* For Example, Decay_exp(close, 0.1, 20)
* Product(x, n)
	* Product of the values in vector x for the past n days
* Tail(x, lower, upper, Newval)
	* Set the values of x to newval if they are between lower and upper
* Ts_Min(x, n)
	* Minimum value of x over the last n days
	* Note that this is different than Min
* Ts_Max(x, n)
	* Maximum value of x over the last n days.
	* Note that this is different than Max
* Sum_i(expr, var, start, stop, step)
	* Loop over var (from start to stop with step) and calculate expr at every iteration (presumably expr would contain var), then sum over all the values. 
	* For example, Sum_i(Delay(close, I) * I, i, 2, 4, 1) would be equivalent to Delay(close, 2) * 2 + Delay(close, 3) * 3 + Delay(close, 4) * 4
* Call_i(expr, var, subexpr)
	* Substitute subexpr for var in xpr, and then evaluate expr.
	* For example, Call_i(x + 4, x 2 + 3) would be equivalent to (2 + 3) + 4
* Sign(x)
	* 1 if x > 0, -1 if x < 0, 0 if x == 0
* SignedPower(x, e)
	* Sign(x) * (Abs(x) ^ e)
* Pasteurize(x)
	* Pasteurize the signals. Set to NaN if it is INF or if the underlying instrument is not in the universe
* Log(x)
	* Natural logarithm
* Ts_Rank(x, n)
	* Rank the values of x over the past n days, then return the rank of the current value. For example, if the current value is the max of the pas n days, Ts_Rank is 1. If it's a min, Ts_Rank is 0. With all other values in between.
* Ts_Skewness(x, n)
	* Compute the skewness of x on the last n days
* Ts_Kurtosis(x ,n)
	* Compute the kurtosis of x on the last n days
* Ts_Movement(x, k, n)
	* Compute the kth central moment of x on the last n days
* IndNeutralize(x, y)
	* Neutralize alpha x against groupings specified by y. 
	* For example, IndNeutralize(x, industry). To neutralize against market, use IndNeutralize(x, 1)
* Scale(x)
	* Scale alpha x so that its booksize is 1. To scale to a different book size, say 1000, use Scale(x) * 1000

### Achieving Good Results
How to achieve good results.

#### Tips for Maximizing Your Score
* Think differently and dig deeper
* Think ideas in arbitrage view
* Try different operations
* Try new formulas instead of changing on formula
* Do not over-fit parameters

#### Find ideas
* Price movement and technical indicator
* Volatility measures
* Volume interaction with price
* Short term and Long term trend
* Find ideas from the newspaper or online

#### Improve your ideas
* Adjust cross-sectional distribution
* Think of factors to help signal
* Do not use much conditional operation
* Use more recent information

WORLDQUANT:
“With intellect, technology and effort, WorldQuant is creating the future of trading”

#reading/articles