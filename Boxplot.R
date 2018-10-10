
library(ggplot2)
library(scales)
#Box plot for population
popbox<-ggplot(df, aes(x="", y=df$population, color=population))+geom_boxplot()+scale_y_continuous(name="Population", labels = comma)+
  stat_summary(fun.ymin=median, fun.ymax=median, fun.y=median, geom="crossbar")
popbox

#Box plot for Murder Rate
murbox<-ggplot(df, aes(x="", y=df$Murder, color=Murder))+geom_boxplot()+scale_y_continuous(name="Murder", labels = comma)+
  stat_summary(fun.ymin=median, fun.ymax=median, fun.y=median, geom="crossbar")
murbox

#Visualization Choice
# To know the spread/distribution of the data histogram is the better choise. In case you want to know
# the description of the data, quantile information & mean box plot is the obvious choice. I prefer histogram as
