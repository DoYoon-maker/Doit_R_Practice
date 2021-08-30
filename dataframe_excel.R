install.packages("readxl")
library(readxl)
df_exam <- read_excel("excel_exam.xlsx", col_names = T) #first row is variable
df_exam

mean(df_exam$english)
mean(df_exam$science)
