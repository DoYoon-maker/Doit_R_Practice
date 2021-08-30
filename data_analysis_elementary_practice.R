library(ggplot2)
midwest <- as.data.frame(ggplot2::midwest)
?midwest
summary(midwest)
head(midwest)

library(dplyr)
midwest <- rename(midwest, total = poptotal)
midwest <- rename(midwest, asian = popasian)
head(midwest)
midwest$asian_ratio <- (midwest$asian/midwest$total)*100
asian_ratio <- midwest$asian_ratio
table(midwest$asian_ratio)
hist(midwest$asian_ratio)
mean <- mean(midwest$asian_ratio)
midwest$test <- ifelse(mean<= asian_ratio, "large", "small")
head(midwest)
table(midwest$test)
qplot(midwest$test)
