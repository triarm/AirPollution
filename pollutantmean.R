pollutantmean <- function(directory, pollutant, id = 1:322){
  #Import file
  files <- list.files(directory, full.names = TRUE)[id]
  
  #Combine Data
  pollutantdata <- data.frame()
  for(i in 1:length(files)){
    pollutantdata <- rbind(pollutantdata, read.csv(files[i]))
  }
  
  #Take the pollutant needed
  pollutantType <- pollutantdata[,pollutant]
  
  #Mean
  mean(pollutantType, na.rm = 1)
  
}