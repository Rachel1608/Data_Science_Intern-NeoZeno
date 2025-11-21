# Rule Based Mini Stock Advisor
# Dataset
df = data.frame(Days = c(1,2,3,4,5,6,7,8,9,10),
                opening_price = c(101,103,115,105,101,89,91,200,190,320),
                closing_price = c(104,101,114,107,105,76,98,250,200,260)
                )

df

#. Plot the bar graphs, histogram and scatter plot using R by creating a sample data frame
#Barplot
barplot(df$Days, df$opening_price, main = "Barplot of Days vs Opening Price", col = 'red')

#Histogram of Closing Price
hist(df$closing_price, main = "Histogram of Closing Price", xlab = 'Closing Price',col = 'green')

#Scatterplot of Days vs Closing Price
plot(df$opening_price, df$closing_price, main = "Opening Price vs Closing Price", xlab="Opening Price", ylab="Closing Price", col = 'darkblue')
