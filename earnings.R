# read in csv file
earnings <- read.csv("https://raw.githubusercontent.com/avehtari/ROS-Examples/master/Earnings/data/earnings.csv")

# fit regression model to data 
fitted.model <-  lm(earnings$earn ~ earnings$height)
print(summary(fitted.model))

# save output 
sink("summary.txt")
summary(fitted.model)
sink()
