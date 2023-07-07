library(datasets)
pages{title="Load Data"}

data(mtcars)
pages{title="View first 5 rows"}

head(mtcars,5)

#load ggplot package
library(ggplot2)
page{title="create a scatterplot of displacement (disp) and miles per gallon (mpg)"}
::page{title="Add a title"}
::page{title="change axis name"}
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon")+labs(x="Displacement",y="Miles per Gallon")

mtcars$vs <- as.factor(mtcars$vs)
page{title="create boxplot of the distribution for v-shaped and straight Engine"}

ggplot(aes(x=vs,y=mpg),data = mtcars)+ geom_boxplot(alpha = 0.3) + theme(legend.position = "none")

ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5)
