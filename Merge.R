
#Loading the arrests data
arrests<-USArrests

#Creating a new column in to merge the two datasets
rownames(data)<-as.vector(data[,"stateName"])

#Merging the two datasets
df<-merge(data,arrests,by="row.names")
str(df)
str(data)
