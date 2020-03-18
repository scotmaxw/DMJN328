## ----show-normal--------------------------------------------------------------
#use rnorm to generate 10000 random numbers according to the normal distribution
#mean of 1000 and standard deviation of 500
var1<-rnorm(10000, mean=1000, sd=500)
#make into a data frame
df<-data.frame(var1)
#graph a histogram
ggplot(df, aes(x=var1))+geom_histogram()+theme_bw()+labs(title="Randomly Generated Normal Distribution")
### Go back upand play with the mean and sd.


## ----show-uniform-------------------------------------------------------------
#Sample a number from 1 to 6 (like on a die roll), 10000 times
var1<-sample(1:6, 10000, replace=T)
#turn into a dataframe (die)
die<-data.frame(var1)
#Graph as a 
ggplot(df, aes(x=var1))+
  #as a barplot, counting the numbr of times each number occurs
  geom_bar(stat="count")+
  #turn it black and white
  theme_bw()+
  #give some labels
  labs(title="Distribution of numbers on a fair die", x="Number")



