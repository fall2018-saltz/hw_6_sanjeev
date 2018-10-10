
arrests<-USArrests
rownames(data)<-as.vector(data[,"statesName"])
df<-merge(data,arrests,by="row.names")
str(df)
