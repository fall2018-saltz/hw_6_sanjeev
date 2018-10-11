
library(ggplot2)
library(ggmap)
library(maps)

us <- map_data("state")

df$statename<-tolower(df$statename)

map<-ggplot(df, aes(map_id=statename))

map<-map+geom_map(data=df,map=us,fill='white', color='black')+expand_limits(x=5+df$x,y=df$y-5)

map
