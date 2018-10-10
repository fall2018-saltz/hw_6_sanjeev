
clean_data <- function(states){
# removes the first row and the last row, with state = USA and state = Puerto rico commonwealth
# and the first four columns SUMLEV REGION DIVISION STATE
states <- states[,-c(1:4)]
states <- states[c(-1,-53),]

#Using colnames() to replace the names of the columns in the dataframe.
colnames(states)[c(1,2,3,4)] <- c("stateName", "population", "popOver18", "percentOver18")
#returns the clean dataframe

  return(states)

}

clean_data <- clean_data(raw_data)
str(clean_data)
