getwd();
data = read.csv('pokemon.csv')
data

#number of rows
nrow(data)
nrow

#number of columns
ncol(data)
ncol


data$Legendary
data$Generation
data$Type.1

#min and max HP
min(data$HP)
max(data$HP)

#min and max speed
min(data$Speed)
max(data$Speed)

#missing values in type.2
sum(is.na(data$Type.2))

View(data)

