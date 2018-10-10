
df$nMurder <- as.integer(df$population*df$Murder/100000)

#Bar Chart with the number of murders per state
murbar<-ggplot(df, aes(x=stateName, y=nMurder)+geom_bar(stat = "identity", fill='white',color='black')+
  ggtitle("Chart with the number of murders per state")+
  geom_text(aes(label=Murder),vjust=-1.75,hjust=0.75, color="red", size=3)+
  labs(x="State",y="Number of Murders")

#Bar Chart with the number of murders per state (with the x-axis labels rotated)
murbar2<-ggplot(df, aes(x=stateName, y=nMurder), angle=90)+geom_bar(stat = "identity", fill='white',color='black')+
  geom_text(aes(label=Murder),vjust=0.4,hjust=-0.25, color="red", size=3, angle=90) +
  ggtitle("Chart with the Murder Rate per state")+
  theme(axis.text.x=element_text(angle=90))+
  labs(x="State",y="Number of Murders")


#Another way to do achieve this is to rotate the whole chart 90 degrees
murbar3<-ggplot(df, aes(x=stateName, y=nMurder))+geom_bar(stat = "identity", fill='white',color='black')+
  ggtitle("Chart with the Murder Rate per state")+
  geom_text(aes(label=Murder),vjust=0.35,hjust=-1, color="red", size=3)+
  labs(x="State",y="Number of Murders")+coord_flip()

