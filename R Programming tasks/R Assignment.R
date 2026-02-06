# dataset
data = read.csv(file.choose())
data
# Head and Tail of the data
head(data)
tail(data)
str(data) #datatype
summary(data) #Data Description
mean(data$affected_population) #mean of the affected population
median(data$response_time_hours) #Median of the response time hours
sd(data$estimated_economic_loss_usd) #standard deviation of estimated economic loss usd
var(data$severity_level) #Variance of severity level
cor(data$affected_population,data$estimated_economic_loss_usd) #Correlation between affected population and economic loss
#Data Visualization
plot(data$severity_level,data$affected_population, type='o', pch = 14, main = "Severity level & Affected Population", xlab = "Severity level", ylab = "Affected Population", col = 'blue')
boxplot(infrastructure_damage_index~is_major_disaster, data = data, main = "Is Major disaster and infrastructure damage index", col = 'lightgreen')
hist(data$estimated_economic_loss_usd, main = "Estimated Economic Loss in USD", xlab = "Economic Loss", col = 'skyblue')
barplot(data$affected_population, data$infrastructure_damage_index, main = "Affected Population vs Infrastructure Damage index", xlab = "Infrastructure Damage", ylab ="Affected Population", col = 'brown')
