# read in csv file
earnings <- read.csv("https://raw.githubusercontent.com/avehtari/ROS-Examples/master/Earnings/data/earnings.csv")

# save output to text file 
sink("summary_output.txt", append = FALSE)

# fit regression model to data 
fitted.model <-  lm(earnings$earn ~ earnings$height)
# add time to output 
print(Sys.time(), quote=FALSE)
# printing summary of regression 
print(summary(fitted.model))
closeAllConnections() 

png("reg01.png") # open a png file
# plot the data 
plot(earnings$height, earnings$earn, xlim = c(40,90), xlab = "height", ylab = "earnings")
# add in fitted line 
abline(fitted.model, col="red")

# add in interactions for male and height 