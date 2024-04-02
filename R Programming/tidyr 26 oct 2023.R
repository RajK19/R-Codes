install.packages("tidyr")
library(tidyr)
data("airquality")
View(airquality)

c1<- nrow(airquality)

cleanData <- drop_na(airquality)
View(cleanData)
str(cleanData)

c2<- nrow(cleanData)
c2

c1-c2

help("as.factor")

cleanData$Month <- as.factor(cleanData$Month)
cleanData$Month
str(cleanData)

x <- mean(cleanData$Ozone)
x
