# Genarate the Multiplication table of numbers
for(i in 1:10){
  for(j in 1:10){
    print(paste(i,'x',j,'=',i*j))
  }
  print("---")
}


# Missing Value
  # is.na() : Check the missing value return type bolean
  # na.rm : use to not consider the NULL value or ignore the NULL Value.

vect <- c(78,12,NA,12,3,14,NA)

is.na(vect)

vect[is.na(vect)]

# Replacoing the NA Value with 0

vect[is.na(vect)] <- 0

print(vect)

# Replacing the Na value with mean value
vect_2 <- c(4,15,6,NA,NA,9,NA,53,NA)
print('Given vector ::')
print(vect_2)

# Calculating the mean
mean_val = mean(vect_2 , na.rm = T)

vect_2[is.na(vect_2)] <- mean_val

print(vect_2)


# Functions
# Define the Function which return the even numbers only. accept numerical vector as input.
even_num = function(x){
  even = x[x%%2==0]
  return(even)
}

test_vect <- c(1,2,3,4,5,6,7,8)

even_num(test_vect)

# Calculate the Aara of Circle
area_of_circle = function(r){
   Area = pi * r * r
   return( Area)
}

area_of_circle(5)


# Write a Simple R function which calculate the Area and perimeter of rectangle.
rectangle = function(l,b){
  area = l * b
  perimeter = 2 * (l + b)
  result = c(area,perimeter)
  return(result)
}

rect = rectangle(12,4)
print(paste('Area of rectangle',rect[1]))
print(paste('Perimeter of rectangle',rect[2]))



# Write a function which multiple the all the number less than itself.
# Ex. if num is 5 then 4x3x2x1
num = 5

fact_less_one = function(num){
  num = num -1
  result = factorial(num)
  return(result)
}

fact_less_one(num)


# Class Exercise
# Write a function to convert all the missing values in a vector to mean of all the other value.
vect_ex <- c(12,NA,9,NA,31,NA,42,10,NA)
vect_mean <- mean(vect_ex , na.rm = T)
vect_ex[is.na(vect_ex)] <- vect_mean

print(vect_ex)

# Write a function to add two matrix
matrix_addition = function(mat1,mat2){
  if(dim(mat1)[1] == dim(mat2)[1] && dim(mat1)[2] == dim(mat2)[2]){
    result = mat1 + mat2
    return(result)
  } 
  return("The Dimension of two matrix is not same")
} 


mat_one = matrix(1:16, nrow = 4)
mat_two = matrix(2:17, ncol = 4)

mat_add = matrix_addition(mat_one,mat_two)

print(mat_add)

#Q Write a function to add one to each col. (not solved)

# apply() and lapply() function are powerful tools for applying a function to elements of a list, matrix or array.
# syntax : apply(data, axis , function)
# axis = 1 : for row
# axis = 2 : for columns

# apply()
col_mean = apply(mat_add,2,mean)
print(col_mean)

row_mean = apply(mat_add,1,mean)
print(row_mean)

# lapply()
new_list <- list(a = 1:5,b=6:10,c=11:15)
print(new_list)

sum_of_list <- lapply(new_list, sum)

print(sum_of_list)



