View(iris)

ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) + geom_point() + labs(x = "Sepal Length",y = "Petal Length",title = "Scatter Plot of Sepal Length vs. Petal Length by Species")
    
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
geom_point() + labs(x = "Sepal Length",y = "Petal Length",title = "Scatter Plot of Iris Data")

#3
iris <- datasets::iris

# ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +geom_point() + labs(x = "Sepal Length",y = "Petal Length",title = "Iris Sepal Length vs. Petal Length") + ggtitle(color = "blue",size = 10)

ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +geom_point() 
+ labs(x = "Sepal Length",y = "Petal Length",title = "Iris Sepal Length vs. Petal Length")+theme(plot.title = element_text(color = "blue", size = 16, face = "bold"),
legend.title = element_text(color = "red", size = 14, face = "italic"),legend.text = element_text(color = "green", size = 12))

ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point() +
  
  labs(
    x = "Sepal Length",
    y = "Petal Length",
    title = "Iris Sepal Length vs. Petal Length"
  ) +
  
  theme(
    plot.title = element_text(color = "blue", size = 16, face = "bold"),
    legend.title = element_text(color = "red", size = 14, face = "italic"),
    legend.text = element_text(color = "green", size = 12)
  )

# legend.title = element_text(color = "red", size = 14, face = "italic"),
# legend.text = element_text(color = "green", size = 12)

# 4)data(iris)
# 
# 
# ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
#   geom_point() +
#   labs(
#     x = "Sepal Length",
#     y = "Petal Length",
#     title = "Scatter Plot of Sepal Length vs. Petal Length by Species"
#   ) +
#   theme(legend.text = element_text(color = "red", size = 8))
# 
# 5) data(iris)


ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species, shape = Species)) +
  geom_point() +
  labs(
    x = "Sepal Length",
    y = "Petal Length",
    title = "Scatter Plot of Sepal Length vs. Petal Length by Species"
  ) +
  scale_shape_manual(values = c(4, 15, 18))


ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +geom_point(shape = 18) +labs(x = "Sepal Length",y = "Petal Length",title = "Scatter Plot of Sepal Length vs. Petal Length by Species") 


data(iris)


ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point() +
  labs(
    x = "Sepal Length",
    y = "Petal Length",
    title = "Scatter Plot of Sepal Length vs. Petal Length by Species"
  )+ geom_smooth(method = "lm", se = FALSE)


data(mpg)


ggplot(mpg, aes(x = hwy)) +
  geom_histogram(fill = "green", color = "red", bins = 20) +
  labs(
    x = "Highway MPG",
    y = "Frequency",
    title = "Histogram of Highway MPG"
  )


8) data(mpg)


ggplot(mpg, aes(x = hwy)) +
  geom_histogram(fill = "green", color = "red", bins = 5) +
  labs(
    x = "Highway MPG",
    y = "Frequency",
    title = "Histogram of Highway MPG"
  )

print(hist_plot)
9)data(mpg)

ggplot(mpg, aes(x = class, fill = class)) +
  geom_bar() +
  labs(
    x = "Vehicle Class",
    y = "Count",
    title = "Stacked Bar Chart of Vehicle Classes"
  ) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability

print(stacked_bar_chart)
10)data(mpg)


pie_chart_data <- table(mpg$class)
pie_chart_data <- data.frame(class = names(pie_chart_data), count = as.numeric(pie_chart_data))

pie_chart <- ggplot(pie_chart_data, aes(x = "", y = count, fill = class)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(
    title = "Pie Chart of Vehicle Classes"
  ) +
  theme_void()  # Remove axes and labels


print(pie_chart)
