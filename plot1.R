
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
