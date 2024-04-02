i<- 2

while(i<6){
  i<- i + 1
  print(i)
}

a<- c(5,6,3,2)
b<- c(5,3,2,1)

if (b[2]>a[4]) {
  print("b ka 2nd element is greater than a ka 4th elemnt")
  
}else if (a>b) {
  print("a is greater than b")
}else{
  print("error")
}