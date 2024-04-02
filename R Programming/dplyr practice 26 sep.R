install.packages('dplyr')
library(dplyr)

#getwd() #getwd() returns present working directory
getwd()
#data = read.csv('pokemon.csv')
#data
View(Titanic)
data = data.frame(Titanic)
head(data,3)
tail(data,3)

head(data)
#help("summarise")
#num_pass = sum("Freq")
#num_pass
num_passengers = summarise(data, num_passengers = sum(Freq))
num_passengers

View(Titanic)

#alternative

num_passengers = data %>% summarise(num_passengers = sum(Freq)) 
#⚠here Freq is the column name.
num_passengers

help("summarise")

num_passengers = data %>% summarise(num_passengers = Freq*2)
num_passengers

#group by

num_passengers_class = data %>% group_by(Class) %>% summarise(num_passengers=sum(Freq))
num_passengers_class


#mutate is used to create another column in our dataframe, here Freqof is the name of our new column

data2 = data %>% mutate(Freqof = Freq*10)
data2

#arrange 
data = data %>% arrange(Freq)
data

help("arrange")
data = data %>% arrange(desc(Freq))
data



###################################################

install.packages('ISLR')
library(ISLR)

#ISLR is a library consisting of various dataframes like Carseats
View(Carseats)
#names(data)
names(Carseats) #returns the names of all columns in the data frame

carseats1<- Carseats %>% select(1,2)
carseats1

# carseats1<- Carseats %>% select(1,2)
# head(carseats1)

carseats1<- Carseats %>% select("Sales","CompPrice")
carseats1

carseats2<- Carseats %>% select(3:5)
carseats2

carseats3<- Carseats %>% select(starts_with("P"))
carseats3

carseats4<- Carseats %>% select(ends_with("e"))
carseats4

carseats5 <- Carseats %>% filter(Sales>13)
carseats5

#without using pipe %>% operator
carseats_filtered = filter(Carseats,Sales>13)
carseats_filtered

carseats_descending = arrange(carseats_filtered, desc(Age))
carseats_descending

#applying some condition using pipe operator

carseats_limited = Carseats %>% filter(Price> 100) %>% arrange(desc(Income)) %>% head(7)
carseats_limited



#gapminder is another library which contains data of country, its gdp etc.
#like ISLR we have gapminder

library(gapminder)
glimpse(gapminder)

View(gapminder)

gapminder1 <- gapminder %>% group_by(continent, year) %>% summarize(mean(lifeExp))
gapminder1


gapminder2 <- gapminder %>% select(-pop,-gdpPercap) %>% filter(year == 1952) %>% group_by(continent) %>% mutate(mean_lifeexp = mean(lifeExp)) %>% ungroup()

gapminder2

