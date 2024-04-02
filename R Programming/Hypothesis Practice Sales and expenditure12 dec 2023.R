#library('ggplot2')

data=read.table(file.choose(),header=TRUE,sep="\t")

names(data) #similar to colnames() function
colnames(data)

str(data)
ncol(data)
View(data)

help(names)

y=data$Sales
x=data$Expenditures

plot(x,y,ylab="Sales (Y)",xlab="Expenditures")

#ggplot(data, aes(x,y)) + geom_point() + labs(y="Sales (Y)",x="Expenditures")


abline(lm(y~x))  #used to add linear regression line
cor(y,x)
cor(x,y)
cor.test(y,x)

model=lm(y~x)
model
summary(model)

y=0.1942+0.7535
y



#Explanation for line 1

# Here's an explanation of each part:
# 
# read.table():
# 
# This function is used to read data from a file and create a data frame in R.
# It assumes that the data in the file is organized in tabular form (rows and columns).


# file.choose():
# 
# This function opens a file dialog box that allows the user to interactively choose the file they want to read.
# The selected file is then passed as an argument to the read.table() function.


# header = TRUE:
# 
# This argument indicates whether the first row of the data file contains the column names. If header = TRUE, it assumes that the first row is a header row with column names; if header = FALSE, it treats the first row as part of the data.
# In this case, header = TRUE suggests that the first row of the file contains column names.


# sep = "\t":
# 
# This argument specifies the delimiter used in the file to separate columns. In this case, \t represents the tab character, indicating that the columns in the file are separated by tabs.
# If the data in the file were separated by commas, you would use sep = "," instead.


# data:
# 
# This is the variable to which the resulting data frame is assigned.