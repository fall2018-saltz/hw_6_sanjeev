
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

#Bar Charts
#Most number of murder rates
plot<-ggplot(df, aes(x=statesName, y=Murder))+geom_bar(stat = "identity", fill='white',color='red')
plot

#Bar Chart with the number of murders per state
ggplot(df, aes(x=statesName, y=(Murder*population)/1000))+geom_bar(stat = "identity", fill='white',color='black')+
  ggtitle("Chart with the number of murders per state")+geom_text(aes(label=Murder),vjust=-1.75,hjust=0.75, color="red", size=3)+labs(x="States",y="Murder Rate")

#Bar Chart with the number of murders per state (with the x-axis labels rotated)
ggplot(df, aes(x=statesName, y=Murder), angle=90)+geom_bar(stat = "identity", fill='white',color='black')+
  geom_text(aes(label=Murder),vjust=0.4,hjust=-0.25, color="red", size=3, angle=90) +
  ggtitle("Chart with the Murder Rate per state")+
  theme(axis.text.x=element_text(angle=90))+
  labs(x="States",y="Murder Rate")

#Another way to do achieve this is to rotate the whole chart 90 degrees
ggplot(df, aes(x=statesName, y=Murder))+geom_bar(stat = "identity", fill='white',color='black')+
  ggtitle("Chart with the Murder Rate per state")+geom_text(aes(label=Murder),vjust=0.35,hjust=-1, color="red", size=3)+labs(x="States",y="Murder Rate")+coord_flip()

#Sorted x-axis
df$statesName<-reorder(df$statesName,df$Murder)
ggplot(df, aes(x=statesName, y=Murder), angle=90)+geom_bar(stat = "identity", fill='white',color='black')+
  geom_text(aes(label=Murder),vjust=0.4,hjust=-1, color="red", size=3, angle=90) +
  ggtitle("Chart with the number of murders per state")+theme(axis.text.x=element_text(angle=90))

#Sorted x-axis with Percentover18 as the color of the bar
ggplot(df,aes(x=statesName, y=Murder, fill=percentovet18))+
  geom_bar(stat = "identity")+geom_text(aes(label=Murder),vjust=0.4,hjust=-1, color="red", size=3, angle=90) +
  ggtitle("Chart with the number of murders per state")+
  theme(axis.text.x=element_text(angle=90))