
library("ggplot2")
library("ggmap")
library("maps")

us <- map_data("state")

df$stateName<-tolower(df$stateName)

str(df)
map<-ggplot(df, aes(map_id=stateName))

us<-map+geom_map(data=df,map=us,fill='white', color='black')+expand_limits(x=us$long,y=us$lat)

us<-us+geom_map(map=us, aes(fill=df$statearea)
