
library('ggmap')
df2<-data.frame(state.name,state.center, state.area)
colnames(df2)[colnames(df2) == 'state.name'] <- 'statename'
colnames(df2)[colnames(df2) == 'state.area'] <- 'statearea'
df<-merge(df,df2,by="row.names")
df<-df[-c(1)]
str(df)
