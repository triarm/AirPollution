complete <- function(directory, id = 1:332){
  #Import file
  files <- list.files(directory, full.names = TRUE)[id]
  
  #Counting
  output <- data.frame()
  for(i in 1:length(files)){
    data_id <- read.csv(files[i])
    count <- 0
    for(j in 1:dim(data_id)[1]){
      if(is.na(data_id$sulfate[j]) == FALSE & is.na(data_id$nitrate[j]) == FALSE){
       count <- count + 1
      }
    }
    output <- rbind(output, c(id[i], count))
  }
  colnames(output) <- c("id", "nobs")
  output
}