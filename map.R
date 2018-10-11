
library('ggplot2')
library('ggmap')

us <- map_data("state")

df$statesName<-tolower(df$statesName)

map<-ggplot(df, aes(map_id=statesName))

map<-map+geom_map(data=df,map=us,fill='white', color='black')+expand_limits(x=5+df$x,y=df$y-5)

map
