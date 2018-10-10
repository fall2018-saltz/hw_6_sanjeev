
library(tibble)
#library(dplyr)

clean<-function(){
  data=read.csv("scprc_est_2017_18_pop_res.csv",stringsAsFactors = FALSE)
  #Deleting unneeded columns
  data<-data[,-c(1:4)]
  #renaming columns
  colnames(data)<-c('statesName','population','popover18','percentover18')
  #Deleting the unneeded rows!!
  data<-data[-c(1,10,53),]
  #View(arrests)
  #nrow(data)
  #nrow(df)
  #Loading arrests dataset
  arrests<-USArrests
  #Converting rownames to column
  rownames(data)<-as.vector(data[,"statesName"])
  
  arrests<- arrests %>% rownames_to_column('statesName')
  #Assigning the intersect for the merge
  common<-intersect(names(arrests$statesName),names(data$STATE))
  #Merging the dataframes
  df<-merge(data,arrests,by.x='statesName',by.y = 'statesName')
  }

clean()
nrow(df)
