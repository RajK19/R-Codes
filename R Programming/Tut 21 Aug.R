#Decision and loading statements

#IF ELSE
#FOR LOOP

data.frame(fruit_name= c("Banana","Apple","Guava"), fruit_cost= c(10,20,30)) -> fruit
fruit

View(fruit)

data.frame(emp_name= c('a','b','c'), empid= c(1,2,3), empdsg= c('Eng', 'doc', 'carp')) ->  employee 
employee
View(employee)


str(employee)

tail(employee,1)
head(employee,2)

table(employee$empdsg)
summary(employee)

View(iris)

data25 = data.frame(iris3)
View(data25)
View(iris3)

version

data = data.frame(Titanic)
View(data)


if(iris$Sepal.Length[1]<4){
  print("Sepal length is greater than 4")
}else{
  print("Sepal length is greater than 4")
}

length(iris)

#################for loop
vec1 <- 1:9

for (i in vec1){
  print(i+5)
}


####WHILE LOOP

j=1
while (j<10){
  print(j+5)
  j=j+1
} 


#TO PRINT ODD NUMBERS - MY SOLUTION

vec2 <- 1:10
for (j in vec2){
  if(j%%2 != 0){
    print(j)
  }
}


#SIR'S SOLUTION

#ODD Values - Top 10
i=1
j=1
for (i in vec2){
  print(j)
  j = j+2
}

#EVEN values  - TOP 10
i=1
j=2
for (i in vec2){
  print(j)
  j = j+2
}


#Top 10 even numbers using while loop
#i=1
#j=1
#while (j<) {
  
#}