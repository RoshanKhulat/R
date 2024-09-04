library(ggplot2)
library(ggrepel)

data("diamonds")
head(diamonds)

# creating the bar plot
ggplot(data = diamonds,aes(x = cut)) + geom_bar() + geom_text(stat = "count", aes(label = ..count..),
                  vjust = -0.5, size = 3) + labs(title = "Bar Plot of Diamonsd Cut", 
            x = "Cut",
            y = "Count")



# Create a bar graph with avg depth for each type of cclarity and also give data labels.
df_avg_depth <- aggregate(depth ~ depth , data = diamonds,mean)
df_avg_depth

ggplot(data = df_avg_depth ,aes(x = clarity)) + geom_bar()
