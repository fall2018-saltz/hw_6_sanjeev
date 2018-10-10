
library(ggplot2)
library(scales)

population<-ggplot(df, aes(df$population))+ geom_histogram(color="black", fill="white", bins = 500)+  scale_x_continuous("Population")+ scale_y_continuous("Count")
population

murder<-ggplot(df, aes(df$Murder))+ geom_histogram(color="black", fill="red", bins = 50)+  scale_x_continuous("Murder Rate")+ scale_y_continuous("Count")
murder

#Histogram for Assault
assault<-ggplot(df, aes(df$Murder))+ geom_histogram(color="black", fill="red", bins = 50)+  scale_x_continuous("Assault")+ scale_y_continuous("Count")
assault

#Histogram for UrbanPop
urbanpop<-ggplot(df, aes(df$UrbanPop))+ geom_histogram(color="black", fill="red", bins = 50)+  scale_x_continuous("Murder Rate")+ scale_y_continuous("Count")
urbanpop

#Box plot for population
popbox<-ggplot(df, aes(x="", y=df$population, color=population))+geom_boxplot()+scale_y_continuous(name="Population", labels = comma)+
  stat_summary(fun.ymin=median, fun.ymax=median, fun.y=median, geom="crossbar")
popbox

#Box plot for Murder Rate
murbox<-ggplot(df, aes(x="", y=df$Murder, color=Murder))+geom_boxplot()+scale_y_continuous(name="Murder", labels = comma)+
  stat_summary(fun.ymin=median, fun.ymax=median, fun.y=median, geom="crossbar")
murbox

#Bar Charts
#Most number of murder rates
murbar<-ggplot(df, aes(x=stateName, y=Murder))+geom_bar(stat = "identity", fill='white',color='red')
murbar

#Bar Chart with the number of murders per state
ggplot(df, aes(x=stateName, y=(Murder*population)/1000))+geom_bar(stat = "identity", fill='white',color='black')+
  ggtitle("Chart with the number of murders per state")+geom_text(aes(label=Murder),vjust=-1.75,hjust=0.75, color="red", size=3)+labs(x="State",y="Murder Rate")

#Bar Chart with the number of murders per state (with the x-axis labels rotated)
ggplot(df, aes(x=stateName, y=Murder), angle=90)+geom_bar(stat = "identity", fill='white',color='black')+
  geom_text(aes(label=Murder),vjust=0.4,hjust=-0.25, color="red", size=3, angle=90) +
  ggtitle("Chart with the Murder Rate per state")+
  theme(axis.text.x=element_text(angle=90))+
  labs(x="State",y="Murder Rate")

#Another way to do achieve this is to rotate the whole chart 90 degrees
ggplot(df, aes(x=stateName, y=Murder))+geom_bar(stat = "identity", fill='white',color='black')+
  ggtitle("Chart with the Murder Rate per state")+geom_text(aes(label=Murder),vjust=0.35,hjust=-1, color="red", size=3)+labs(x="State",y="Murder Rate")+coord_flip()

#Sorted x-axis
df$stateName<-reorder(df$stateName,df$Murder)
ggplot(df, aes(x=stateName, y=Murder), angle=90)+geom_bar(stat = "identity", fill='white',color='black')+
  geom_text(aes(label=Murder),vjust=0.4,hjust=-1, color="red", size=3, angle=90) +
  ggtitle("Chart with the number of murders per state")+theme(axis.text.x=element_text(angle=90))

#Sorted x-axis with Percentover18 as the color of the bar
ggplot(df,aes(x=stateName, y=Murder, fill=percentOver18))+
  geom_bar(stat = "identity")+geom_text(aes(label=Murder),vjust=0.4,hjust=-1, color="red", size=3, angle=90) +
  ggtitle("Chart with the number of murders per state")+
  theme(axis.text.x=element_text(angle=90))
