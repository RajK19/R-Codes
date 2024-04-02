#Assignment 2 502304205

#Q1
student.df = data.frame( name = c("Sue", "Eva", "Henry", "Jan"),
            sex = c("f", "f", "m", "m"), 
            years = c(21,31,29,19))

student.df

student.df$male.teen = ifelse(student.df$sex == "m" &
                                student.df$years < 20, "T", "F")

student.df



#Q2
for (i in 1:length(1:3)) {
  for (j in 1:10) {
    print(j+i-1)
  }}


#Q3

for (i in mtcars$disp){
  if(i<160)
    next
  print (i)}


for (i in mtcars$disp){
  if(i<160)
    break
  print (i)}


#Q4
for (i in rivers){
  if(i<500){
    print("short river")
  } else if (i>2000) {
    print("long river")
  } else{
    print(i)}
}
