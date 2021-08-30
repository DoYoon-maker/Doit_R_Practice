library(ggplot2)
ggplot(data = mpg, aes(x = displ, y = hwy))

ggplot(data = mpg, aes(x=displ, y = hwy)) + geom_point()

ggplot(data = mpg, aes(x= displ, y = hwy)) + geom_point() + xlim(3,6)

ggplot(data = mpg, aes(x=displ, y= hwy)) +
  geom_point() +
  xlim(3,6) +
  ylim(10,30)

#practice
ggplot(data=mpg, aes(x=cty, y=hwy)) + geom_point()

#practice2
head(midwest)
ggplot(data=midwest, aes(x=total, y=asian))+geom_point() + xlim(0,500000) + ylim(0,10000)

library(dplyr)

df_mpg <- mpg %>%
  group_by(drv) %>%
  summarise(mean_hwy = mean(hwy))
df_mpg

ggplot(data = df_mpg, aes(x= reorder(drv, -mean_hwy), y = mean_hwy)) + geom_col()

ggplot(data = mpg, aes(x=drv)) + geom_bar()
ggplot(data=mpg, aes(x=hwy))+ geom_bar()

#practice
