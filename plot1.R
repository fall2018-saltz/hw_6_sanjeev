
library(ggplot2)
library(scales)

population<-ggplot(df, aes(df$population))+ geom_histogram(color="black", fill="white", bins = 5000000)+  scale_x_continuous("Population")+ scale_y_continuous("Count")
population
