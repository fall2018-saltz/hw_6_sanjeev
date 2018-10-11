
library(ggplot2)
library(ggmap)

us <- map_data("state")

df<-tolower(df$statename)

#map<-ggplot(df, aes(map_id=state))

map<-ggplot(df,aes(map_id=state))
map
#+geom_map(data=df,map=df,fill='white', color='black')+expand_limits(x=df$x,y=df$y)
