
library("ggplot2")
library("ggmap")
library("maps")

us <- map_data("state")

df$stateName<-tolower(df$stateName)

str(df)
map<-ggplot(df, aes(map_id=stateName))
usa<-map+geom_map(data=df,map=us, color='black', aes(fill=df$statearea))+
expand_limits(x=us$long,y=us$lat)+
coord_map()+ggtitle("State Area")

map2<-ggplot(df, aes(map_id=stateName))
murder<-map2+geom_map(data=df,map=us, color='black', aes(fill=df$Murder))+
expand_limits(x=us$long,y=us$lat)+
coord_map()+ggtitle("Murder Rate across US")


map3<-ggplot(df, aes(map_id=stateName))
point<-map3+geom_map(data=df,map=us, color='black', aes(fill=df$Murder))+
expand_limits(x=us$long,y=us$lat)+
coord_map()+ggtitle("Murder Rate across US")

point<-point+geom_point(x=df$x,y=df$y,aes(size=df$population),color='white')

map4<-ggplot(df, aes(map_id=stateName))
point2<-map3+geom_map(data=df,map=us, color='black', aes(fill=df$Murder))+
expand_limits(x=us$long,y=us$lat)+
coord_map(xlim=c(-64,-84),ylim=c(-30.71,50.71))+ggtitle("Murder Rate across US")

zoom<-point+geom_point(x=df$x,y=df$y,aes(size=df$population),color='white')


