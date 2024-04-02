#1
matrix1 <- matrix(c(1,2,3,4,5,6),nrow=2,ncol=3)
matrix1


#2
column_names <- c("Column1", "Column2")
row_names <- c("Row1", "Row2", "Row3")

matrix2 <- matrix(c(1,2,3,4,5,6),ncol = length(column_names), dimnames = list(row_names, column_names))
matrix2

#3

matrix3 <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16), ncol = 4, nrow = 4)
matrix3

matrix3[2,3]  #3rd column and 2nd row,
#matrix3[3,4]  #3rd row 4th column

matrix3[3,] #only the 3rd row
matrix3[,4] #only the 4th column


#4
matrix41 <- matrix(c(2,4,6,8,10,12), nrow = 2, ncol =3)  #2x3 matrix
matrix41

matrix42 <- matrix(c(1,3,5,7,9,11), nrow = 2, ncol =3)  #2x3 matrix
matrix42

matrix41 + matrix42
matrix41 - matrix42
matrix41 * matrix42
matrix41 / matrix42


#5

vector1 <- c(1, 2, 3)
vector2 <- c(4, 5, 6)
vector3 <- c(7, 8, 9)

matrix_from_list <- matrix(c(vector1, vector2, vector3), nrow = length(vector1), byrow = TRUE)

matrix_from_list

#6
# Create a sample matrix
matrix_data <- matrix(1:12, nrow = 4, ncol = 3)
matrix_data

# Extract rows with column value > 7
selected_rows <- matrix_data[matrix_data[, 2] > 7, ]

# Print the resulting submatrix
selected_rows

#7
# Create a sample matrix
matrix7 <- matrix(1:12, nrow = 4, ncol = 3)
matrix7

# Convert matrix to a 1-dimensional array
array_data <- as.vector(matrix_data)

# Print the resulting 1-dimensional array
array_data

