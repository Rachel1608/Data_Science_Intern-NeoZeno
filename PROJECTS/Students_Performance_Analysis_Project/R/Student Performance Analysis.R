# Load the Student Analysis with prediction dataset
data <- read.csv("C:/Users/rache/OneDrive/Rachel Study Materials/Excel/students_performance_with_prediction_analysis.csv")
head(data)
#Datatype
str(data)
#summary of the dataset
summary(data)
#Lineplot
plot(data$class_attendance, data$exam_score, type = 'o', main = 'Student Class Attendance vs Exam Score',
     xlab = "Class Attendance", ylab= "exam_score", pch = 15)
#Scatterplot
plot(data$age, data$sleep_hours, main = "Students Age and their Sleep hours", xlab = "Age", ylab = "Sleep Hours", col = 'blue')
#histogram
hist(data$exam_score, main = "Frequency of exam_score", xlab = 'Exam Score')
#barplot
barplot(data$sleep_hours, data$study_hours, main = "sleep hours vs study hours",
        xlab = "Sleep hours", ylab= "Study hours", col = "yellow")
#boxplot
boxplot(exam_score~course, data = data, main = 'course and its exam score', xlab = "course", ylab ="Exam Score", col = c('red','green','violet','lightblue','orange','brown','pink'))
boxplot(study_hours~study_method, data = data, main = 'study hours vs study method', xlab = "study method", ylab ="Study hours", col = c('green','violet','orange','brown','yellow'))
#ggplots
library(ggplot2)
ggplot(data, aes(x=gender, y=study_hours))+
  geom_bar(stat = 'identity')

ggplot(data, aes(x=facility_rating,y=sleep_hours))+
  geom_col(col = 'darkgreen')

ggplot(data, aes(study_hours, exam_score))+
  geom_jitter(height=2,width = 2)

ggplot(data, aes(age,study_hours))+
  geom_smooth(method =lm)

ggplot(data, aes(exam_difficulty))+
  geom_bar(stat = 'count', col = 'red')
