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

#reading/articles