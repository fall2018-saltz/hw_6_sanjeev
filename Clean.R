
clean<-function(){
  data=read.csv("scprc_est_2017_18_pop_res.csv",stringsAsFactors = FALSE)
  #Deleting unneeded columns
  data<-data[,-c(1:4)]
  #renaming columns
  colnames(data)<-c('statesName','population','popover18','percentover18')
  #Deleting the unneeded rows!!
  data<-data[-c(1,10,53),]
  rownames(data)<-as.vector(data[,"statesName"])
  }
  
clean()
View(data)
