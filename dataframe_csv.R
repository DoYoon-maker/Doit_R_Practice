df_csv_exam <- read.csv("csv_exam.csv")
df_csv_exam

df_midterm <- data.frame(english= c(90,80,60,70),
                         math = c(50,60,100,20),
                         class = c(1,1,2,2))
df_midterm
write.csv(df_midterm, file = "df_midterm.csv")

saveRDS(df_midterm, file="df_midterm.rds")

rm(df_midterm)
df_midterm
df_midterm <- readRDS("df_midterm.rds")
df_midterm
