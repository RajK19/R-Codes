install.packages("ggplot2")
library(ggplot2)

View(iris)

p <- ggplot(data = iris, aes(x=Sepal.Length, y = Petal.Length, col = Species)) + geom_point()+labs(x="Sepal Length", y="Petal Length") + ggtitle("Scatter Plot of Petal Length vs Scatter Plot of Sepal Length")



print(p + labs(y="Petal length (cm)", x = "Sepal length (cm)") + ggtitle("Petal and sepal length of iris")) + theme(legend.text=element_text(color="red",size=8));

print(p + geom_smooth(method="lm",se=FALSE,color="BLUE")



