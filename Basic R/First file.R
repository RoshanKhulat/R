# Using R as a calculator
# We use 'R' for Statistical Operations.
# R is Case  sensitive.

# Addition
2+6

# Subtraction
78-2

# Multiplication
78 * 23

# Division
78 / 0.23

# Bod Mass Rules
(6*(78-64))^5

# Functions
sqrt(15)

log(10)

log10(10)

(2*3)/log(10^(1.2))

factorial(5)
# -> 1*2*3*4*5 = 120

choose(3,2)

num = 45.9523

floor(num) # Rouding the previous or the whole number 78.91 -> 78

ceiling(num)

num2 = 71.4

round(num2) # if the decimal values is greater and equal to 5 the it round to whole number 78.61 -> 79
round(num) # If the Decimal Values is small then 5 the it convert like 74.12 -> 74


round(78.45, digits = 0)
round(784.195360, digits = 2)

# Naming the Variable
# Variable name Should not be start with symbols

temp_vari_1 <- 4
temp_vari_1

temp_vari_2 <- 12
temp_vari_2


x <- "10" # " " Quotes String.
x

class(num)

class(x)

# C is used for Concatenating the values.
gender = factor(c("Male","Female","Transgender","Male","Female","Male"))
gender

levels(gender)

nlevels(gender)

gears = factor(c(1,2,3,4,1,2,3,4,1,2,3,4,1))
gears

levels(gears)

nlevels(gears)

temp_vector = factor(c("One",1,"Two",2,"Three","Four",4))
temp_vector




## Genarating sequences
num_one = 1:10
num_one

num_two = -10:10
num_two

num_third = seq(0,1.5,0.1)
num_third


## Generating repeats
repeat_num = rep(2,times = 3)
repeat_num

## Repeat 1 to 3 , 3 times
repeating = rep(1:3,times=3)
repeating


temp = rep(seq(1,4,1), times = 3)
temp

# seq(1,4,1) -> seq(Start, End, Difference)

temp_two = rep(1:4,1:4)
temp_two


temp_third = rep(1:4,c(3,2,1,2))
temp_third

print(temp_third)

## Logical operator
# 1) > Greater Than
# 2) < Less Than
# 3) == Logical Equal
# 4) != Not equal
# 5) & Logical AND
# 6) | logical OR

# Type Casting
# Syntax : as.<data_type>(<variable>)
a <- 2
class(a)

b = as.character(a)
b

# Vector:
# Vector is the most basic and common datastructure in R 
# It is an order collection of elements
# Vectors are created using the::  c() function.

numeric_vector <- c(4,2,3,5,1)
numeric_vector
class(numeric_vector)


character_vector <- c("Testing","the","Character","Vector","Lest","Go")
character_vector
class(character_vector)


# Matrix:
# A Matrix is a 2 - Dimensional Data structure Where elements are arranged in rows and columns.
# All the  elements of  matrix must be have same data type
# Matrix created using the function::  matrix()

mat <- matrix(1:12,nrow = 3, ncol = 4) # Created the 3 by 4 matrix.
mat

# matrix('Elements of matrix','row size','column size')


# Array;
# Array is an multidimensional extension of matrix.
# it can have more than dimension.
# Array can be created using :: array() function.

arr <- array(1:12,dim = c(2,3,2))
arr

# List
# list is a versatile data structure which having the different type of data types.
# The elements of the list are not required to be the same.
# List can be created using the list function()

my_list <- list("Temp",45.20,"Dream")
my_list

too_list = list(name="temp name",age = 21,hobbies = c("Reading","Teaching","Swimming"))
too_list

too_list[1]
too_list[[3]][2]

# Data Frame
# data frame is a special type of list where each elements is a vector of equal length.
# its like a table in a relational database or a spreadsheet.
# Data frame can created using the fucntion : data.frame() function 
df <- data.frame(name = c("Learn","R Lang","With","IIM Skills"),rate = c(2,2,3,5),satisfaction = c(T,F,T,T))
df

class(mat)

class(df)


temp <- 45
temp

is.numeric(temp)


df_one = data.frame(name = c('Test','Test 1','Test 2 '), 
                    age = c(25,30,36),
                    sex = c('M','F','M'))
df_one

df_one$age[2]

df_one$name[3]

# Program

Demo_vector <- c(4,10,2,3,9,14,12,61,81,11)
Demo_vector

even_vec <- Demo_vector[Demo_vector%%2==0]
even_vec


odd_vec <- Demo_vector[Demo_vector%%2==1]
odd_vec



