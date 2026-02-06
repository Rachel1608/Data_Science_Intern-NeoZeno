#ggplot2
install.packages("ggplot2")

library(ggplot2)
data <- data.frame(
  Students = c("Ram", "Durga", "Priya", "Ashok","Vijay"),
  Maths = c(70, 80, 90, 65, 75),
  Science = c(75, 65, 95, 98, 90),
  English = c(80, 90, 90, 78, 85),
  Performance_score= c(90, 92, 85, 85, 92)
)

ggplot(data, aes(x=Students, y=Performance_score))+
  geom_bar(stat = "identity")

#dplyr
install.packages("dplyr")
library(dplyr)
data %>% select(Students)
#tidyr
install.packages("tidyr")
library(tidyr)
pivot_longer(data, cols = c(Maths, Science, English, Performance_score))
#readr
install.packages("readr")
library(readr)
df <- read_csv(file.choose())
head(df)
#stringr
install.packages("stringr")
library(stringr)
text <- "Data Science Internship"
str_to_upper(text)