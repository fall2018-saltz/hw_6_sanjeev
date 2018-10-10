
#Box plot for population
popbox<-ggplot(df, aes(x="", y=df$population, color=population))+geom_boxplot()+scale_y_continuous(name="Population", labels = comma)+
  stat_summary(fun.ymin=median, fun.ymax=median, fun.y=median, geom="crossbar")
popbox

#Box plot for Murder Rate
murbox<-ggplot(df, aes(x="", y=df$Murder, color=Murder))+geom_boxplot()+scale_y_continuous(name="Murder", labels = comma)+
  stat_summary(fun.ymin=median, fun.ymax=median, fun.y=median, geom="crossbar")
murbox
