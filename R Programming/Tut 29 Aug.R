library(dplyr)
data = data.frame(Titanic)
data

#dplyr library is used for data manipulation

View(data)


num_passengers = summarise(data, num_passengers = sum(Freq))
num_passengers

num_passengers = data %>% summarise(num_passengers = sum(Freq))   # | pipe symbol %>%
num_passengers

num_passengers_class = data %>% group_by(Class) %>% summarise(num_passengers = sum(Freq))
num_passengers_class


num_passengers_class_mean = data %>% group_by(Class) %>% summarise(num_passengers = mean(Freq))
num_passengers_class_mean


num_passengers_sex = data %>% group_by(Sex) %>% summarise(num_passengers = sum(Freq))
num_passengers_sex

num_passengers_age = data %>% group_by(Age) %>% summarise(num_passengers = median(Freq))
num_passengers_age

#Mutate
num_passengers_survived = data %>% group_by(Survived) %>% summarise(num_passengers = sum(Freq))
num_passengers_survived

#Group By
data2 = data %>% mutate(Freq_10 = Freq*10)
View(data2)

data = data %>% arrange(Freq)
View(data)

data = data %>% arrange(Freq)
data
data = data %>% arrange(desc(Freq))


#####################################################################

install.packages("ISLR")
library(ISLR)

View(Carseats)
names(Carseats)
Carseats %>% select(1,2) -> Carseats_1_2
View(Carseats_1_2)


Carseats %>% select(1,2) -> carseats_1_2
carseats_1_2
Carseats %>% select(3:5) -> carseats_3_5
carseats_3_5
Carseats %>% select("Sales","CompPrice","Income") -> carseats_names
carseats_names
Carseats %>% select(starts_with("P")) -> carseats_P
carseats_P

Carseats %>% select(starts_with("P")&ends_with("e")) -> carsets_P_E
View(carsets_P_E)

Carseats %>% select(starts_with("1")|ends_with("e")) -> carseats_start1_OR_endsE
carseats_start1_OR_endsE


Carseats %>% filter(Sales>10) -> carseats_salesg10
View(carseats_salesg10)
Carseats %>% filter(Sales>10 & CompPrice < 100) -> carseats_salesg10
carseats_salesg10

View(carseats_salesg10)
Carseats %>% filter(Income<100|Population>400) -> carseats_IncomePopulation
carseats_IncomePopulation

View(carseats_IncomePopulation)
Carseats %>% filter(Income<100|Population>400) -> carseats_incomePopulation
carseats_incomePopulation

View(carseats_incomePopulation)
data = Carseats %>% arrange(Sales, Income)
View(data)
View(data)
data = Carseats %>% arrange(Urban, Income)
View(data)
View(head(data,10))
data1 = Carseats %>% arrange(US, Age)
data1

View(data1)
tail(data1)

View(tail(data1))
data1 = Carseats %>% arrange(US, Age)
View(tail(data1,10))

mtcars_filtered = filter(mtcars,  hp>100)
mtcars_ordered = arrange(mtcars_filtered, desc(mpg))

mtcars %>%
  filter(hp>100) %>%
  arrange(desc(mpg)) %>%
  head()

mtcars %>%
  filter(hp>100) %>%
  arrange(desc(mpg)) %>%
  head(3)



####################################################################
#Use group by functions in 'dplyr' library


install.packages("gapminder")
library(gapminder)

mtcars %>%
  filter(hp>100) %>%
  arrange(desc(mpg)) %>%
  head()

gapminder %>%
  select(-pop, -gdpPercap) %>%
  filter(year == 1952) %>%
  group_by(continent) %>%
  mutate(mean_lifeExp = mean(lifeExp)) %>%
  ungroup()

?ungroup
#We put - or minus symbol in front of column names to exclude them
