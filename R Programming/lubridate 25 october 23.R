install.packages ("tidyverse")
library(tidyverse)
install.packages ("lubridate")
library(lubridate)

# We'll explore the 'lubridate' package to explore the following:

# Creating date and datetime objects
# Isolating components of the datetime
# Time spans (durations, periods, intervals)

# today() function
day <- today()
day
str(day)

# now() function
datetime <- now()
datetime
str(datetime)

now()
today()
#POSIXct is class in R for datetimes. These store the number of seconds since the orgin point of "1970-01-01 00:00:00 UTC" where as the "Date" class stores the number of days since "1970-01-01"

#converting strings to datetimes
strg1 <- "2021-09-28"
strg2 <- "2021-09-28 16:00:00"
str(strg1)
str(strg2)

date1 <- as.Date(strg1) #base date function
date1
str(date1)

date2 <- as_date(strg1) #lubridate function
datetime1 <- as.POSIXct(strg2) #base date function
datetime2 <- as_datetime(strg2) #lubridate function
date1
date2
datetime1
datetime2

str(date1)
str(date2)
str(datetime1)
str(datetime2)

#R Helper functions
dateFormat1 <- "20210928"
dateFormat2 <- "09-28-2021"
dateFormat3 <- "28/09/2021"
dateFormat4 <- "09-28-2021 16:00:00"
dateFormat5 <- "20210928 160000"
ymd(dateFormat1)
mdy(dateFormat2)
dmy(dateFormat3)
mdy_hms(dateFormat4)
ymd_hms(dateFormat5)

date_c <- "2023/24/09 11.45"
format_string <- "%Y/%d/%m %H.%M"
parsed_date <- as.POSIXct(date_c, format = format_string)
parsed_date

#R Component functions
todayDate <- "2021-09-28 16:30:00"
year(todayDate)
month(todayDate)
mday(todayDate)
hour(todayDate)
minute(todayDate)
second(todayDate)
yday(todayDate)
wday(todayDate)
wday("2023-12-09")  #starts from sunday 1,2,3,4,5,6,7

# To get month and day names
month(todayDate, label = TRUE)
wday(todayDate, label = TRUE)

#visualization using datetimes
install.packages("nycflights13")
library(nycflights13)
View(flights)
flight_data <- flights %>% select("flight", "carrier", "time_hour")
flight_data
# Durations, Periods and Intervals
# Durations measure the exact seconds that occur between two instances
# Periods measure the change in clock time that occurs between two instances
# Intervals are timespans representing a start and end point

startDate <- as_datetime("2022-09-01 00:00:00")
startDate
endDate <- as_datetime("2022-09-29 23:59:59")
endDate

difftime <- endDate - startDate
difftime

dur1 <- as.duration(difftime)
dur1
per1 <- as.period(difftime)
per1
int1 <- as.interval(startDate,endDate)
int1
