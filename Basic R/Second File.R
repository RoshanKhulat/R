vector_one <- c(1,3,2,1,4,5,6,7,8,9)
vector_one

mat = matrix(vector_one,byrow = T, nrow= 2)
mat

attributes(mat)

dim(mat)

colSums(mat)

rowSums(mat)

colMeans(mat)

rowMeans(mat) 

# mean of specific row
mean(mat[1,]) # mean(matrix[row_index, ])

# mean of specific columns
mean(mat[,2]) # mean(matrix[,colmun_index])


# Adding the two matrix
# When their are two different matrix and we want to add them.
# The dimension of those matrix are must be same.

matrix_1 <- matrix(1:15, nrow=5)
matrix_2 <- matrix(2:16, nrow=5)

matrix_1
matrix_2

# Addition of two matrix 
matrix_3 = matrix_1 + matrix_2
matrix_3


# Substraction of two matrix
matrix_4 = matrix_2 - matrix_1
matrix_4

# Multiplication of two matrix
# When wee want to multiply the two matrix the row of first matrix is equal to the column of the second matrix.
# The columns of the First matrix is equal to the row of second matrix.


# Q. Calculate the square of each number between the range 1-5.
for (i in 1:5){
  i_square = i^2
  print(i_square)
}

# Q. Loop through the vector and check the element is even or not.
vector_temp = c(4,1,5,8,7,2,5,6,3,4,10,23,21,88,91,12)

even <- vector_temp[vector_temp%%2 == 0]
odd  <- vector_temp[vector_temp%%2 == 1]
print(even)
print(odd)

# even_list = vector(mode = "list")
# odd_list = vector(mode = "list")

# for(i in vector_temp){
#   if(i %% 2 ==0){
#     even_list[[length(even_list)+1]] = i
#   }else{
#    odd_list[[length(odd_list)+1]] = i
#   }
# }

# print(even_list)
# print(odd_list)

for(i in vector_temp){
  if(i%%2 ==0){
    print("Even")
  }else{
    print("Odd")
  }
}



variable <- "Testing character"
nchar(variable)


vect <- c("Adding","Element","Loop","finding","Character")

for(i in vect){
  print(paste('The element ',i,' having length ',nchar(i)))
}


# Q. loop through the vector print the element those having the even length of character.
for(i in vect){
  if(nchar(i) %% 2 ==0){
    print(paste("the element: ",i," having the length ",nchar(i)))
  }
}

# Q. loop through the vector print the element those having the odd index.
index <- 0
for(i in vect){
  index <- index + 1
  if(index %% 2 ==1){
    print(paste("The element :",i,"place at the index",index))
  }
}

# Q. Print the various combination of two dies.
for(i in 1:6){
  for(j in 1:6){
    print(paste('(',i,',',j,')'))
  }
}

# Create 3 X 3 Matrix as your choice. print all the element of the matrix.

mat_3 = matrix(1:9,nrow = 3)
mat_3

# On a matrix create loop to add 1 on the first columns , 2 on the second columns an so on.
col_count <- dim(mat_3)[2]
col_count

mat_3
for(i in 1:col_count){
  for(j in 1:col_count){
    print(mat_3[i,j])  
  }
}

# Checking the NA Value 

y  <- c(1,12,45,NA) 
is.na(y)

y[is.na(y)] <- 0
print(y)

print(mean(y))

# Calculating the mean ignoring the NULL Values
Y <- c(45,10,2,NA,9,NA) 
print(mean(Y, na.rm = TRUE))

