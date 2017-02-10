#Testaggregate

library(ggplot2)
library(data.table)
library(dplyr)
library(tidyr)


df<- diamonds

#Want table of prices, factor on cut

df2 <- df %>% group_by(cut) %>% summarize(newprice = mean(price))

df3 <- df %>% group_by(cut) %>% summarize(newct = n())

sum(df3$newct)

df4 <- df %>% group_by(cut,clarity) %>% summarize(newct = n())

df5 <- spread(df4,cut,newct) 