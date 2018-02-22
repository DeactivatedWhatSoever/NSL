# Always think about your working directory
# getwd(), setwd()
reddit <- read.csv('reddit.csv')

# Table? I think I should get to know the data structures over here.
# Starting to have trouble understand the data. 
?table
table(reddit$employment.status)

# There are factor variables. What is a factor varaiable?
# https://www.stat.berkeley.edu/classes/s133/factors.html
# https://stats.idre.ucla.edu/r/modules/factor-variables/
str(reddit)
levels(reddit$age.range)
qplot(data = reddit, x = age.range)
