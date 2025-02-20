#data analysis
exam <- read.csv("csv_exam.csv")
head(exam)
head(exam, 10)
tail(exam)
tail(exam, 10)
View(exam)
dim(exam) #number of rows, columns
str(exam) #attributes of variables
summary(exam)

#practice by mpg data
mpg <- as.data.frame(ggplot2::mpg)
head(mpg)
tail(mpg)
View(mpg)
dim(mpg)
str(mpg)
?mpg #explanation of mpg
summary(mpg)

df_raw <- data.frame(var1= c(1,2,1),
                     var2= c(2,3,2))
df_raw
install.packages("dplyr")
library(dplyr)
df_new <- df_raw
df_new
df_new <- rename(df_new, v2 = var2)
df_new
df_raw

#making rerived variable
df <- data.frame(var1 = c(4,3,8),
                 var2 = c(2,6,1))
df
df$var_sum <- df$var1 + df$var2
df

df$var_mean <- df$var_sum/2
df

mpg$total <- (mpg$cty + mpg$hwy)/2
head(mpg)
mean(mpg$total)

#making derived variable using conditions
summary(mpg$total)
hist(mpg$total)
mpg$test <- ifelse(mpg$total>=20, "pass", "fail")
head(mpg, 20)
table(mpg$test)
library(ggplot2)
qplot(mpg$test) #pass times column graph
mpg$grade <- ifelse(mpg$total >= 30, "A",
                    ifelse(mpg$total >= 20, "B", "C"))
head(mpg, 20)
table(mpg$grade)
qplot(mpg$grade)
mpg$grade2 <- ifelse(mpg$total >= 30, "A",
                     ifelse(mpg$total >= 25, "B",
                            ifelse(mpg$total >= 20, "c", "D")))
head(mpg, 20)
