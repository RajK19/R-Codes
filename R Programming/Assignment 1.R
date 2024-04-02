#Q1
m1 <- matrix(c(1,2,3,4,5,6),nrow=2,ncol=3)
m1


#Q2
column_names <- c("Column1", "Column2")
row_names <- c("Row1", "Row2", "Row3")

m2 <- matrix(c(1,2,3,4,5,6),ncol = length(column_names), dimnames = list(row_names, column_names))
m2



#Q3

m3 <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16), ncol = 4, nrow = 4)
m3

m3[2,3]  #3rd column and 2nd row,

m3[3,]  #only the 3rd row
m3[,4]  #only the 4th column




#Q4
matrix41 <- matrix(c(2,4,6,8,10,12), nrow = 2, ncol =3)  #2x3 matrix
matrix41

matrix42 <- matrix(c(1,3,5,7,9,11), nrow = 2, ncol =3)  #2x3 matrix
matrix42

matrix41 + matrix42
matrix41 - matrix42
matrix41 * matrix42
matrix41 / matrix42




#Q5

vector1 <- c(1, 2, 3)
vector2 <- c(4, 5, 6)
vector3 <- c(7, 8, 9)

matrix_from_list <- matrix(c(vector1, vector2, vector3), nrow = length(vector1))
matrix_from_list



#Q6

m6 <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,12), nrow = 4, ncol = 3)
m6

result <- m6[m6[, 2] > 7, ]    #rows with column value > 7
result




#Q7

m7 <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,12), nrow = 4, ncol = 3)
m7

array_data <- as.vector(m7)   #matrix to a 1-dimensional array
array_data

