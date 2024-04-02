install.packages("readxl")
install.packages('ggplot2')
install.packages('dplyr')
install.packages("plotly")

library(readxl)
library(ggplot2)
library(dplyr)
library(plotly)
library(tidyverse)
library(lubridate)

TechM <-  read.csv('TECHM.csv')
Cyient <- read.csv('CYIENT.csv')
Info3i <- read.csv('3IINFOLTD.csv')
LTIM <- read.csv('LTIM.csv')
#data <- rename(og_data, AdjClose = `Adj. Close`)
#wiprodata <- select(data, -AdjClose)
#wiprodata
#getwd()
#install.packages('installr')

data_techm <- rename(TechM, AdjClose = `Adj.Close`)
TechM <- select(data_techm, -AdjClose)
TechM

data_cyient <- rename(Cyient, AdjClose = `Adj.Close`)
Cyient <- select(data_cyient, -AdjClose)
Cyient


data_Info3i <- rename(Info3i, AdjClose = `Adj.Close`)
Info3i <- select(data_Info3i, -AdjClose)
Info3i


data_ltim <- rename(LTIM, AdjClose = `Adj.Close`)
LTIM <- select(data_ltim, -AdjClose)
LTIM


View(TechM)
View(Cyient)
View(Info3i)
View(LTIM)

#help("summary")

summary(TechM)
summary(TechM$Open)
summary(TechM$Close)
summary(TechM$Volume)

summary(Cyient)
summary(Cyient$Open)
summary(Cyient$Close)
summary(Cyient$Volume)

summary(Info3i)
summary(Info3i$Open)
summary(Info3i$Close)
summary(Info3i$Volume)

summary(LTIM)
summary(LTIM$Open)
summary(LTIM$Close)
summary(LTIM$Volume)
#sum_open = summarise(data, sum_open = sum(Freq))
#num_passengers


#ggplot(wiprodata, aes(x=High, y=Low)) + geom_line()

#########################################################################
#Company: TechM

class(TechM$Date)

date_strings = TechM$Date
dates <- as.Date(date_strings, format = "%d-%m-%Y")

ggplot(TechM, aes(x = dates)) + geom_line(aes(y = Close), color = "blue") + labs(title = "Stock Prices Over Time", x = "Date", y = "Close Price")

ggplot(TechM, aes(x = Open, y = Volume)) + geom_line(color="green") + labs(title = "Date vs Volume Chart", x = "Open", y = "Volume")

#CandleStick chart for Open
ncol(TechM)
colnames(TechM)
plot_ly(data, type = "candlestick", open = ~Open, close = ~Close,high = ~High, low = ~Low, x = ~as.Date(Date))

#ggplot(wiprodata, aes(x=Date, y=Close)) + geom_line()

ggplot(TechM, aes(x = Date, y = Close)) + geom_line(color='red') + labs(title = "Date vs Close", x = "Date", y = "Close")


#######################################################################
#Company = Cyient

class(Cyient$Date)

date_strings_cyient = Cyient$Date
dates <- as.Date(date_strings_cyient, format = "%d-%m-%Y")

ggplot(Cyient, aes(x = dates)) + geom_line(aes(y = Close), color = "blue") + labs(title = "Stock Prices Over Time", x = "Date", y = "Close Price")

ggplot(Cyient, aes(x = Open, y = Volume)) + geom_line(color="green") + labs(title = "Date vs Volume Chart", x = "Open", y = "Volume")

#CandleStick chart for Open
ncol(Cyient)
colnames(Cyient)
plot_ly(data, type = "candlestick", open = ~Open, close = ~Close,high = ~High, low = ~Low, x = ~as.Date(Date))

#ggplot(wiprodata, aes(x=Date, y=Close)) + geom_line()

ggplot(data, aes(x = Date, y = Close)) + geom_line(color='red') + labs(title = "Date vs Close", x = "Date", y = "Close")



#######################################################################
#ggplot(data = TechM,aes(x=dates,y=Open,fill=Open)) + geom_boxplot() + facet_grid#(~Open)


Info3i= Info3i %>% add_column(Company = "Info3i",.before = "Date")
LTIM = LTIM %>% add_column(Company = "LTIM",.before = "Date")
TechM= TechM %>% add_column(Company = "TechM",.before = "Date")
Cyient= Cyient %>% add_column(Company = "Cyient",.before = "Date")
master_data=rbind(LTIM,TechM,Cyient,Info3i)

ggplot(master_data, aes(as.Date(Date),Open))+geom_line(color = "green", size = 1)+facet_wrap(. ~ Company, nrow = 4)

ggplot(master_data, aes(as.Date(Date),Close))+geom_line(color = "blue", size = 1)+facet_wrap(. ~ Company, nrow = 4)

ggplot(master_data, aes(as.Date(Date),High))+geom_line(color = "blue", size = 1)+facet_wrap(. ~ Company, nrow = 4)

ggplot(master_data, aes(as.Date(Date),Low))+geom_line(color = "blue", size = 1)+facet_wrap(. ~ Company, nrow = 4)

ggplot(master_data, aes(as.Date(Date),Volume))+geom_line(color = "blue", size = 1)+facet_wrap(. ~ Company, nrow = 4)

#########################################################################################
#Working with news

#TechM Data
TechM_News_Data <- read_xlsx('TechM News.xlsx')
TechM_News_Data
View(TechM_News_Data)

#Cyient
Cyient_News_Data <- read_xlsx('Cyient News.xlsx')
Cyient_News_Data
View(Cyient_News_Data)

#LTIMindtree
LTIM_News_Data <- read_xlsx('LTImindtree News.xlsx')
LTIM_News_Data
View(LTIM_News_Data)

#3infotech
info3_news_Data <- read_xlsx('3infotech News.xlsx')
info3_news_Data
View(info3_news_Data)


##############################################
#Working with TechM Data

#nrow(TechM_News_Data)
#TechM_News_Data <- select(TechM_News_Data, -`Date of News`)
#TechM_News_Data

#date_news_strings = TechM_News_Data$`Date of News`
#TechM_dates <- as.Date(date_news_strings, format = "%d-%m-%Y")
TechM_News_Data$`Date of News`
TechM_News_Formatted_Dates <- format(c(as.Date(TechM_News_Data$`Date of News`)), "%d-%m-%y")
TechM_News_Formatted_Dates

#View(TechM_News_Formatted_Dates)

TechM_News_Data <- TechM_News_Data %>% mutate(Date_of_News = TechM_News_Formatted_Dates)
TechM_News_Data

View(TechM_News_Data)

TechM_News_Data <- select(TechM_News_Data, -`Date of News`)
TechM_News_Data

TechM_News_Data$News_Sentiment=NA

for(i in (1:nrow(TechM_News_Data)))
{
  if(TechM_News_Data[i,2]=="Positive"){
    TechM_News_Data[i,4]=1 
  }
  else if (TechM_News_Data[i,2]=="Negative"){
    TechM_News_Data[i,4]= -1
  }
  else if (TechM_News_Data[i,2]=="Neutral"){
    TechM_News_Data[i,4]=0
  }
}
View(TechM_News_Data)

TechM_analysis = data.frame(TechM$Date, avgstockprice = (TechM$Open + TechM$Close)/2, category = NA)

TechM_analysis

View(TechM_analysis)

#TechM_News_Data$News_Sentiment=NA

c=1
l=1;
for(y in c(1:68))
{
  if(TechM_analysis[y,1]==TechM_News_Data[l,3] && l<=9)
  {
    c=TechM_News_Data[l,4]
    TechM_analysis[y,3]=c
    l=l+1
  }
  else 
  {
    TechM_analysis[y,3]=c
    
  }
}

#class(TechM$Date)
#class(TechM_analysis$TechM.Date)



#######################################
#Working with Cyient Data

Cyient_News_Data$`Date of News`
class(Cyient_News_Data$`Date of News`)
Cyient_News_Formatted_Dates <- format(c(as.Date(Cyient_News_Data$`Date of News`)), "%d-%m-%y")
Cyient_News_Formatted_Dates

#View(TechM_News_Formatted_Dates)

Cyient_News_Data <- Cyient_News_Data %>% mutate(Date_of_News = Cyient_News_Formatted_Dates)
Cyient_News_Data

View(Cyient_News_Data)

Cyient_News_Data <- select(Cyient_News_Data, -`Date of News`)
Cyient_News_Data

Cyient_News_Data$News_Sentiment=NA

for(i in (1:nrow(Cyient_News_Data)))
{
  if(Cyient_News_Data[i,2]=="Positive"){
    Cyient_News_Data[i,4]=1 
  }
  else if (Cyient_News_Data[i,2]=="Negative"){
    Cyient_News_Data[i,4]= -1
  }
  else if (Cyient_News_Data[i,2]=="Neutral"){
    Cyient_News_Data[i,4]=0
  }
}
View(Cyient_News_Data)

Cyient_analysis = data.frame(Cyient$Date, avgstockprice = (Cyient$Open + Cyient$Close)/2, category = NA)

Cyient_analysis

View(Cyient_analysis)

#TechM_News_Data$News_Sentiment=NA

c=1
l=1;
for(y in c(1:68))
{
  if(Cyient_analysis[y,1]==Cyient_News_Data[l,3] && l<=9)
  {
    c=Cyient_News_Data[l,4]
    Cyient_analysis[y,3]=c
    l=l+1
  }
  else 
  {
    Cyient_analysis[y,3]=c
    
  }
}



correlation_matrix_techm <- cor(subset(TechM, select = c('Close', 'Open', 'High', 'Low', 'Volume')))
correlation_matrix_techm

correlation_matrix_cyient <- cor(subset(Cyient, select = c('Close', 'Open', 'High', 'Low', 'Volume')))
correlation_matrix_cyient




cor(x=TechM$Open, y = Cyient$Open,
    method = "pearson")


linearrg_avgstock_techm=lm(avgstockprice ~ category,TechM_analysis)
summary(linearrg_avgstock_techm)


linearrg_avgstock_cyient=lm(avgstockprice ~ category,Cyient_analysis)
summary(linearrg_avgstock_cyient)


ggplot(TechM_analysis, aes(x = category, y = avgstockprice )) +
  geom_point() +
  geom_smooth(formula=y ~ x,method = "lm") +
  labs(title = paste("Scatter Plot Tech Mahindra") ,x = "Category", y = "avgstockprice")


ggplot(Cyient_analysis, aes(x = category, y = avgstockprice )) +
  geom_point() +
  geom_smooth(formula=y ~ x,method = "lm") +
  labs(title = paste("Scatter Plot Cyient") ,x = "Category", y = "avgstockprice")


