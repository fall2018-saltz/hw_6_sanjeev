
clean<-function(){

    data<-data[,-c(1:4)] 
    #renaming columns
    colnames(data)<-c('statesName','population','popover18','percentover18')
    #Deleting the unneeded rows!!
    data<-data[-c(1,10,53),]
    rownames(data)<-as.vector(data[,"statesName"])
    nrow(data)
}

clean()
