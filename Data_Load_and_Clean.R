
clean<-function(){
  data=read.csv("scprc_est_2017_18_pop_res.csv",stringsAsFactors = FALSE)
  data<-data[,-c(1:4)]
  #renaming columns
  colnames(data)<-c('statesName','population','popover18','percentover18')
  #Deleting the unneeded rows!!
  data<-data[-c(1,10,53),]
  #View(arrests)
  #nrow(data)
  #nrow(df)
  arrests<-USArrests
  arrests<- arrests %>% rownames_to_column('statesName') 
  common<-intersect(names(arrests$statesName),names(data$STATE))
  df<-merge(data,arrests,by.x='statesName',by.y = 'statesName')
  }

clean()
