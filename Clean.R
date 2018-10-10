
#Creatin a function to clean the data

clean <- function(d){
# removes the first row and the last row, with state = USA and state = Puerto rico commonwealth
# and the first four columns SUMLEV REGION DIVISION STATE
d <- d[,-c(1:4)]
d <- d[c(-1,-53),]

#Using colnames() to replace the names of the columns in the dataframe.
colnames(d)[c(1,2,3,4)] <- c("stateName", "population", "popOver18", "percentOver18")
#returns the clean dataframe

  return(d)

}

clean_data <- clean(scprc_est_2017_18_pop_res)
str(clean_data)


