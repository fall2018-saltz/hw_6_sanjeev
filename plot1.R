
library(ggplot2)
library(scales)

population<-ggplot(df, aes(df$population))+ geom_histogram(color="black", fill="white", bins = 500000)+  scale_x_continuous("Population")+ scale_y_continuous("Count")
population

murder<-ggplot(df, aes(df$Murder))+ geom_histogram(color="black", fill="red", bins = 50)+  scale_x_continuous("Murder Rate")+ scale_y_continuous("Count")
murder

#Box plot for population
popbox<-ggplot(df, aes(x="", y=df$population, color=population))+geom_boxplot()+scale_y_continuous(name="Population", labels = comma)+
  stat_summary(fun.ymin=median, fun.ymax=median, fun.y=median, geom="crossbar")
popbox

#Box plot for Murder Rate
murbox<-ggplot(df, aes(x="", y=df$Murder, color=Murder))+geom_boxplot()+scale_y_continuous(name="Murder", labels = comma)+
  stat_summary(fun.ymin=median, fun.ymax=median, fun.y=median, geom="crossbar")
