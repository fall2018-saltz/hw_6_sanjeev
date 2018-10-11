
library("ggplot2")
library("ggmap")
library("maps")

us <- map_data("state")

df$stateName<-tolower(df$stateName)

str(df)
map<-ggplot(df, aes(map_id=stateName))

us<-map+geom_map(data=df,map=us, color='black', fill=df$statearea)+expand_limits(x=us$long,y=us$lat)


