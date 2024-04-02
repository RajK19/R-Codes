install.packages("tidyr")
library(tidyr)
data("airquality")
View(airquality)

cleanData <- drop_na(airquality)  #for dataframe
str(cleanData)

View(cleanData)

str(cleanData)

x <- mean(cleanData$Ozone)
x

cleanData$Quality <- as.factor(ifelse(cleanData$Ozone>x, "bad", "good"))
str(cleanData)

origData = data.frame(airquality)
View(origData)

sum(is.na(origData$Ozone))  #for individual attributes

nrow(is.na(origData))
nrow(airquality)
nrow(cleanData)

na_records = nrow(airquality) - nrow(cleanData)  #for dataframe
na_records

#count.fields(origData$Ozone,quote=)

replace_na(origData$Ozone, replace = mean(origData$Ozone))

   
help("replace_na")
