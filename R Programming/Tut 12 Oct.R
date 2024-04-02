install.packages("ggplot2")
library(ggplot2)
View(diamonds)
?diamonds   #? represents help() function


#histogram

ggplot() 
ggplot(data = diamonds)
ggplot(data = diamonds, aes(x=price))
ggplot(data = diamonds, aes(x=price)) + geom_histogram()
ggplot(data = diamonds, aes(x=price)) + geom_histogram(fill="green")
ggplot(data = diamonds, aes(x=price)) + geom_histogram(fill="pink", col="black")

#bar-plot
ggplot(data = diamonds, aes(x=cut)) + geom_bar(fill = 'palegreen4')
ggplot(data = diamonds, aes(x=cut, fill=cut)) + geom_bar()


#scatter-plot
ggplot(data = diamonds, aes(x=carat, y=price)) + geom_point()
ggplot(data = diamonds, aes(x=carat, y = price, col = cut)) + geom_point()
ggplot(data = diamonds, aes(x=carat, y = price, col = color)) + geom_point()


#box-plot
ggplot(data = diamonds, aes(x=clarity,y=carat)) + geom_boxplot()
ggplot(data = diamonds, aes(x=clarity,y=carat,fill=clarity)) + geom_boxplot()

#faceting - visualization with different groups mulitple dimensions
ggplot(data = diamonds, aes(x=clarity, y = carat,fill=cut)) + geom_boxplot() + facet_grid(~cut)
