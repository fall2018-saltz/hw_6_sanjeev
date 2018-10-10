
#Loading the arrests data
arrests<-USArrests
rownames(data)<-as.vector(data[,"stateName"])
df<-merge(data,arrests,by="row.names")
str(df)
