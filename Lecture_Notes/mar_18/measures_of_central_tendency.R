## ----visualize-wages----------------------------------------------------------
library(tidyverse)
lfs %>%
  ggplot(., aes(x=HRLYEARN))+geom_histogram()

## ----mean-by-group------------------------------------------------------------
lfs %>%
ggplot(., aes(x=HRLYEARN))+geom_histogram()+facet_wrap(~as_factor(SEX))


## ----show-means-by-sex--------------------------------------------------------
lfs %>%
group_by(SEX) %>%
summarize(avg=mean(HRLYEARN, na.rm=T))

## ----show-median-of-hourly-wages----------------------------------------------
lfs %>%
  group_by(SEX) %>%
  summarize(median=median(HRLYEARN, na.rm=T))

## ----graph-different-variances------------------------------------------------
df %>%
  #gather into Class and Grade
  gather(Class, Grade) %>%
  #Graph and facet
  ggplot(., aes(x=Grade))+geom_histogram()+facet_wrap(~Class)

## ----show-uniform-------------------------------------------------------------
#Sample a number from 1 to 6 (like on a die roll), 10000 times
var1<-sample(1:6, 10000, replace=T)
#turn into a dataframe (die)
die<-data.frame(var1)
#Graph as a
ggplot(die, aes(x=var1))+
  #as a barplot, counting the numbr of times each number occurs
  geom_bar(stat="count")+
  #turn it black and white
  theme_bw()+
  #give some labels
  labs(title="Distribution of numbers on a fair die", x="Number")



