library(cancensus)
library(tidyverse)
getwd()

#setwd()
setwd('Lecture_Notes/mar_11/')
#Load in the haven library to read in .sav fils 
#REad in the lfs data
lfs<-read.csv('data/lfs.csv', stringsAsFactors = F)

#use the technical documentation to find the variable names for sex and earnings. 
lfs %>% 
  #select te two variables
  select(, ) %>% 
  #Calculate the average hourly wage and the median 
  group_by() %>% 
  summarize(avg=), median=)

#Use the technical documentation to find the variable label for education 
#What is the modal level of education. Use the table() command. 



