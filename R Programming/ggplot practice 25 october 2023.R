install.packages("ggplot2")
library(ggplot2)
data(diamonds)
diamonds
View(diamonds)

??diamonds
help(diamonds)

#histograms ##########################
#help(aes)
ggplot()
ggplot(data = diamonds)
ggplot(data = diamonds, aes(x=price))
#ggplot(data = diamonds, aes(price, y = cut))


ggplot(data = diamonds, aes(x=price)) + geom_histogram()

#geom specifies what geometrical object you want to build
#bar char, or histogram or box plot

#ggplot(data = diamonds, aes(x=price)) + geom_boxplot()

ggplot(data = diamonds, aes(x=price)) + geom_histogram(fill="yellow")

ggplot(data = diamonds, aes(x=price)) + geom_histogram(fill="yellow", col = "red")


help(ggplot)
#help(col) or #help color

#bar plots #########################

ggplot(data = diamonds, aes (x =cut))

ggplot(data = diamonds, aes (x =cut)) + geom_bar(fill = "palegreen")

##try cut instead of clarity in x

#aes defines aesthetics
#x defines x axis
ggplot(data = diamonds, aes(x = cut)) + geom_bar()

#fill = legend
ggplot(data = diamonds, aes(x = cut, fill=cut)) + geom_bar()

#box-plot#############
ggplot(data = diamonds, aes(x=clarity, y = carat))

ggplot(data = diamonds, aes(x=clarity, y = carat)) + geom_boxplot()

#faceting#################
#a multi-axes grid with subplots visualizing the distribution of variables of a dataset and the relationship between multiple variables.

ggplot(data = diamonds, aes(x = clarity, y = carat, fill = cut))

ggplot(data = diamonds, aes(x = clarity, y = carat)) + geom_boxplot() + facet_grid(~cut, ncol=2,nrow=2)


############################
#ScatterPlot
#lets play with iris data

View(iris)

#ggplot(data = iris, aes(x=Sepal.Width)) + geom_histogram()

#ScatterPlot
ggplot(data = iris, aes(x=Sepal.Length, y = Petal.Length, color = Species)) + geom_point()

#label data x axis and y axis
ggplot(data = iris,) + geom_point(aes(x=Sepal.Length, y= Petal.Length, color = Species)) + labs(y = "Petal Length (cm)", x = "Sepal length (cm)")


#ggtitle
ggplot(data = iris, aes(x=Sepal.Length, Petal.Length, color = Species)) + geom_point() + labs(y = "Petal Length (cm)", x = "Sepal length (cm)") + ggtitle("Petal and Sepal length of iris")


#to write something on the canvas
ggplot(data = iris, aes(x=Sepal.Length, Petal.Length, color = Species)) + geom_point() + annotate("text", x = 6, y =5, label = "lol")

#to repeated write something on canvas
ggplot(data = iris, aes(x=Sepal.Length, Petal.Length, color = Species)) + geom_point() + annotate("text", x = 4:6, y =5:7, label = "lol")


#highlights an area
ggplot(data = iris, aes(x=Sepal.Length, Petal.Length, color = Species)) + geom_point() + annotate("rect", xmin = 5, xmax = 7, ymin = 4, ymax = 6, alpha = .1)


#alpha = opacity

#help(alpha)

#segments an area
ggplot(data = iris, aes(x=Sepal.Length, Petal.Length, color = Species)) + geom_point() + annotate("segment", x = 5, xend = 7, y = 4, yend = 5, color = "black")

help("annotate")


