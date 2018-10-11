
library("ggplot2")
library("ggmap")
library("maps")

us <- map_data("state")

df$stateName<-tolower(df$stateName)

str(df)
map<-ggplot(df, aes(map_id=stateName))
us<-map+geom_map(data=df,map=us, color='black', aes(fill=df$statearea))+
expand_limits(x=us$long,y=us$lat)+
coord_map()+ggtitle("State Area")

map2<-ggplot(df, aes(map_id=stateName))
murder<-map2+geom_map(data=df,map=us, color='black', aes(fill=df$Murder))+
expand_limits(x=us$long,y=us$lat)+
coord_map()+ggtitle("Murder Rate across US")


