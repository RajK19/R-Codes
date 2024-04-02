install.packages("tidyverse")
library(tidyverse)

install.packages("lubridate")
library(lubridate)

#today function
day <- today()
str(day)


#now() function
datetime <- now()
str(datetime)

class(datetime)
typeof(datetime)


#converting strings to datetimes
strg1 <- "2021-09-28"
strg2 <- "2021-09-28 16:00:00"

str(strg1)
str(strg2)

date1 <- as.Date(strg1) #base date function`
date2 <- as_date(strg1) #lubridate functions


#Both lubraidate and base date functions with convert string to date time format
datetime1 <- as.POSIXct(strg2)
datetime2 <- as_datetime(strg2)
str(date1)
str(date2)

str(datetime1)
str(datetime2)

#R helper functions
dateFormat1 <- "20210928"
ymd(dateFormat1)

dateFormat2 <- "09-28-2021"
mdy(dateFormat2)

dateFormat3 <- "28/09/2021"
dmy(dateFormat3)

dateFormat4 <- "09-28-2021 16:00:00"
mdy_hms(dateFormat4)

dateFormat5 <- "20210928 160000"
ymd_hms(dateFormat5)

#R component functions
todayDate <- "2021-09-28 16:30:00"
year(todayDate)
month(todayDate)
mday(todayDate)
hour(todayDate)
minute(todayDate)
second(todayDate)
yday(todayDate)
wday(todayDate)


month(todayDate, label = TRUE)
wday(todayDate, label = TRUE)

startDate <- as_datetime("2022-09-01 00:00:00")
endDate <- as_datetime("2022-09-29 23:59:59")
difftime <- endDate - startDate
difftime

dur1 <- as.duration(difftime)
dur1

per1 <- as.period(difftime)
per1
int1 <- as.interval(startDate, endDate)
int1


##################################################

print('i like apples')


x<- matrix(1:10,nrow=2,ncol=5,byrow=TRUE,
           dimnames = list(c("row1","row2"),
                           c("col1","col2","col3","col4","col5")))


x<- 45
b<- 90

if (b>x) {
  print("b is greater than x")
}else if(x>b){
  print("x is equal to b")
}else{
  print("x is greater than b")
}