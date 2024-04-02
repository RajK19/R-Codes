install.packages('dplyr')
library(dplyr)
data = data.frame(Titanic)
head(data)
data$Class
View(Titanic)
data$Class

summarise(data)
summary(data)

data = data.frame(Titanic)
head(data)

#total passengers
num_passengers = summarise(data, num_passengers = sum(Freq))
num_passengers

num_passengers = summarise(data, num_passengers = sum(Freq))
num_passengers
num_passengers = data %>% summarise(num_passengers = sum(Freq))
num_passengers

View(carseats)
library(ISLR)
View(carseats)
install.packages("ISLR")
library(ISLR)
View(Carseats)
names(Carseats)


car1 <- Carseats %>% select(1,2)
car1

car2<- Carseats %>% select(3:5)
car2

car3 <- Carseats %>% select("Sales","CompPrice","Income")
car3

car4 <- Carseats %>% select(starts_with('P'))
car4

car5 <- Carseats %>% select(ends_with('c'))
car5

car6 <- Carseats %>% filter(Sales>12)
car6


install.packages("tidyverse")
library(tidyverse)
install.packages('lubridate')
library(lubridate)

today()
now()
str(today())
str(now())

strg1 <- "2021-09-28"
strg2 <- "2021-09-28 16:00:00"

str(strg1)
str(strg2)
as.Date(strg1)  #base func - present in R by default
as_date(strg1)  #lubridate - present in lubridate

as_datetime(strg2)

help(lubridate)
