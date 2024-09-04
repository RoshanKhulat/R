# install new packages
install.packages("ggplot2")

# calling the package
library("ggplot2")

# Converting the  list into data frame

# creating the list
my_list = list(index = c(1:5),name = c("Test No 1","Test No 2","Test No 3","Test No 4","Test No 5"),grade = c("B","B+","A","A+","C"))
print(my_list)

# converting list into data frame.
frame <- as.data.frame(my_list)

frame

my_list_2 = list(c(5:10),c(95:100),c(75:80))
my_list_2

frame_2 = as.data.frame(my_list_2)
frame_2
colnames(frame_2) <- c("Range 1","Range 2","Range 3")
frame_2


# Loading thee Simple data sets
library(datasets)
df <- datasets:: iris

head(df)

str(df)
levels(df$Species)
summary(df)

# ----------------------- 

# Checking the NULL values of the columns
col_Null_val <- colSums(is.na(df))
print(names(df)[col_Null_val > 0])


# Checking the index of NULL values
m <- which(is.na(df), arr.ind = T)
print(m)

head(df)

tail(df)

# Columns names of data frame
colnames(df)

# Changing the column name
colnames(df)[1] = 'Sepal.Length'
head(df)


# Creating new columns
temp_frame <- df
temp_frame$comparison = ifelse(temp_frame$Sepal.Length > temp_frame$Petal.Length,"High","Low")
head(temp_frame)

# Creating the subset of the data frame.
str(temp_frame)
sub_df <- temp_frame[1:10 , c(3,5,6)] # syntax : df[row_index, col_index]
sub_df


sub_one <- temp_frame[temp_frame$Species == 'setosa', c(1,2,3,4,6)] # subset by simple one condition
head(sub_one)

# Subset with two condition using the with clause
sub_two <- temp_frame[with(temp_frame, temp_frame$Sepal.Length > 2 & temp_frame$Species == 'versicolor'),]
head(sub_two)

## subset for condition row and col
sub_third <- subset(temp_frame,
                    Sepal.Length > 5 & Petal.Length < 2,
                    c('Species','Sepal.Length','Sepal.Width','Petal.Length','Petal.Width'))
head(sub_third)

# Sorting the Data sets
sorted_df <- temp_frame[order(- temp_frame$Sepal.Length, temp_frame$Petal.Width),]
head(sorted_df)


# Merging the Datasets
merge_df1 <- data.frame(cust_id = c(1:6),product = c("T.V","A.C","Washing Machine","Mobile","Ovan","Speaker"))
merge_df1

merge_df2 <- data.frame(cust_id = c(2:8),state = c("Maharashtra","Madhya Pradesh","Uttar Pradesh","Kerala","Panjab","Rajasthan","Hydrabad"))
merge_df2

## INNEER Join using merge function
inner_join <- merge(x = merge_df1, y = merge_df2, by = 'cust_id')
inner_join

## Left Join using merge function
left_join <- merge(x = merge_df1, y = merge_df2, by = 'cust_id',all.x = TRUE)
left_join

## Right Join using merge function
right_join <- merge(x = merge_df1, y = merge_df2, by = 'cust_id',all.y = TRUE)
right_join

## Outer join 
outer_join <- merge(x = merge_df1, y = merge_df2, by = 'cust_id', all = TRUE)
outer_join
