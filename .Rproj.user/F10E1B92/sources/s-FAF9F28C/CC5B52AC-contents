#install ggplot2 package
install.packages("ggplot2")
library(ggplot2)
x<-c("a", "a", "b", "c")
x
qplot(x)

#assign data mpg, x axis hwy. Then make graph
qplot(data = mpg, x= hwy)

#x-axis cty
qplot(data = mpg, x=cty)

#x-axis drv, y-axis hwy
qplot(data = mpg, x= drv, y = hwy)

#x-axis drv, y-axis hwy, line graph form
qplot(data=mpg, x=drv, y = hwy, geom = "line")

#x-axis drv, y-axis hwy, box-plot form
qplot(data=mpg, x=drv, y= hwy, geom="boxplot")

#x-axis drv, y-axis hwy, box-plot form, express colors by drv
qplot(data = mpg, x=drv, y = hwy, geom="boxplot", colour=drv)

?qplot
