## ----load-data----------------------------------------------------------------
#install.packages(c('haven', 'labelled'))
library(haven)
lfs<-read_sav('https://github.com/sjkiss/DMJN328/raw/master/Lecture_Notes/mar_11/data/lfs.sav')

## ----search-variables---------------------------------------------------------
library(labelled)
look_for(lfs, "wages")


## ----look-for-education-------------------------------------------------------
look_for(lfs, "education")


## ----look-for-sex-------------------------------------------------------------
look_for(lfs, "sex")

## ----visualize-wages----------------------------------------------------------
library(tidyverse)
lfs %>% 
  ggplot(., aes(x=HRLYEARN))+geom_histogram()

## ----calculate-mean-----------------------------------------------------------
mean(lfs$HRLYEARN, na.rm=T)

## ----mean-by-group------------------------------------------------------------
lfs %>% 
ggplot(., aes(x=HRLYEARN))+geom_histogram()+facet_wrap(~as_factor(SEX))


## ----show-means-by-sex--------------------------------------------------------
lfs %>% 
group_by(SEX) %>% 
summarize(avg=mean(HRLYEARN, na.rm=T))

## ----show-influence-of-outliers-----------------------------------------------
vector1<-c(1,2,3,4,5,6,7,8,9,10)
mean(vector1)
vector2<-c(1,2,3,4,5,6,7,8,9,10, 1000000)
mean(vector2)

## ----show-median-of-hourly-wages----------------------------------------------
lfs %>% 
  group_by(SEX) %>% 
  summarize(median=median(HRLYEARN, na.rm=T))

## ----show-media-vectors-------------------------------------------------------
median(vector1)
median(vector2)

## ----show-educational-attainment, results="hide", echo=F----------------------
table(as_factor(lfs$EDUC))

## ----show-same-means-different-variancee--------------------------------------
#make one class of fake data, average =75, standard deviation =1
class1<-rnorm(100, mean=75, sd=1)
#make a second class of fake data, average-=75, standard deviation = 10
class2<-rnorm(100, mean=75, sd=10)
#combine into a dataframe
df<-data.frame(class1, class2)



## ----graph-different-variances------------------------------------------------
df %>% 
  #gather into Class and Grade
  gather(Class, Grade) %>% 
  #Graph and facet
  ggplot(., aes(x=Grade))+geom_histogram()+facet_wrap(~Class)

## ----calculate-variance-------------------------------------------------------
#Step 1 is to subtract hte average from each value
step1<-lfs$HRLYEARN-mean(lfs$HRLYEARN, na.rm=T)
#step 2 is to square to get rid of the means
step2<-step1^2
#step 3 is to sum all of the variances, na.rm=T to remove missing values
step3<-sum(step2, na.rm=T)
#step 4 is to divide by the sample size (excluding missing values)
variance<-step3/(length(na.omit(lfs$HRLYEARN))-1)
#compare with the base
print(variance)
var(lfs$HRLYEARN, na.rm=T)


## ----show-normal--------------------------------------------------------------
df<-data.frame(var1=rnorm(10000, mean=1000, sd=500))

ggplot(df, aes(x=var1))+geom_histogram()


## ----show-mean-median---------------------------------------------------------
mean(df$var1, na.rm=T)
median(df$var1, na.rm=T)

