# Manually upload in csv
data <- read.csv(file.choose())
print(data)

# writing a data in csv
df1 <- data.frame(
  Name = c("Arun", "Kavin", "rahul"),
  Marks = c(88, 98, 32)
)

write.csv(df1, "marks.csv", row.names = FALSE)

#write data in excel

install.packages("writexl")
library(writexl)
write_xlsx(df1, "Students_output.xlsx")

#manually upload in excel
install.packages("readxl")
library(readxl)
dat <- read_excel(file.choose())
print(dat)