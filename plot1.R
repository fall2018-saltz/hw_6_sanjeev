
library(ggplot2)
library(scales)

population<-ggplot(df, aes(df$population))+ geom_histogram(color="black", fill="white", bins = 50)+  scale_x_continuous("Population")+ scale_y_continuous("Count")
population
