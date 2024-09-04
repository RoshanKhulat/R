df <- chickwts

head(df)

str(df)

levels(df$feed)

nlevels(df$feed)

# Get mean weight for each feed category. 
dfm <- aggregate(weight ~ feed, data = df, mean)
dfm

dfm_1 <- aggregate(df$weight, by=list(df$feed), mean)
dfm_1

colnames(dfm_1)[1] = "Feed"
colnames(dfm_1)[2] = "Weight"

colnames(dfm_1) <- c("Feed vect","Weight vect")
dfm_1



# Counting the feeds.
dfn <- aggregate(feed ~ feed, data = df, length)
dfn

dfn_ex <- aggregate(df$feed, by = list(df$feed), length)
colnames(dfn_ex) <- c("Feed","Feed Count")

dfn_ex

# importing the datasets mtcars.
data("mtcars")
head(mtcars)


# calculate the mean mpg, wt group by cyl and gear
# Syntax : aggregate(cbind(When two elements) ~ group by element using '+' sing, data ='Datasets', FUN = functionName)
agg_mean = aggregate(cbind(mpg,wt) ~ cyl+gear, data = mtcars , mean)
agg_mean

print(agg_mean)


# Example
# Create data
gender <- c("Male","Female","Male","Female","Male","Female","Male","Female")
product_preference <- c("Product A","Product B","Product C","Product A","Product B","Product C","Product A","Product B")

survey_data <- data.frame(gender,product_preference)
survey_data

# Create cross table (contigency taable)
crossTab <- xtabs(~gender + product_preference,data = survey_data)
crossTab

# Output
#        product_preference
#gender     Product A Product B Product C
#   Female         1         2         1
#   Male           2         1         1


prop_table <- prop.table(crossTab)
prop_table


# ---- Example 2
data("Titanic")
 # View(Titanic)

df_titanic = as.data.frame(Titanic)
head(df_titanic)

crossTab_two <- xtabs(Freq ~ Class + Survived, data = Titanic)
crossTab_two


prop_table <- prop.table(crossTab_two , margin = 1)
prop_table

data(mtcars)
#View(mtcars)
df_cars <- as.data.frame(mtcars)
head(df_cars)



# Plots
# If we use the plot function it is gives the scatter plot.
# scatter plot

plot(x = df_cars$hp , y=df_cars$mpg, xlab = "Horsepower", ylab="Miles per Gallon" , main="HP vs MPG")


# Histogram of mpg
# We use histogram for distribution of same variable by intervals.
# Histogram alway done on a single veriable.

hist(x = df_cars$mpg, xlab="Miles per Gallon", main="Histogram of MPG")



# Bar Plot
# Bar plot of cylinder count.

barplot(table(df_cars$cyl), xlab = "Number of cylinders", ylab = "Frequency", main = "Bar plot of cylinder count")



# Bar plot of count cylinder
table(df_cars$cyl)
barplot(table(df_cars$cyl), xlab = "Number of cylinders", ylab="Average weight", main="Bar plot of cylinder count")

# Bar plot for mean of wt by cyl( distribution of categorical variable)
df_mean_weight <- aggregate(wt ~ cyl,data=mtcars,mean)
df_mean_weight

barplot(df_mean_weight$wt, names.arg = df_mean_weight$cyl, xlab="# of cylinder" , ylab="Average Weight", main="Avg Weight by Cylinder")


# It gives the statistical distribution of each variable.
# Box plot only gives the information about one variable.
# It tells us about the outliers.

boxplot(df_cars$hp, ylab = "Horsepower",main="Box plot for Horsepower")

boxplot(mtcars) # We use it when all the variable are in the same scale.

# Checking the outlier in the data (used in EDA)
outlier_start <- lapply(mtcars, boxplot.stats)
outlier_start

boxplot(df_cars$wt, ylab="Weight",main="Box plot for weight")



