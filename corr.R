corr <- function(directory, threshold = 0){
  #Import file
  files <- list.files(directory, full.names = TRUE)
  
  cor_vector <- c()
  for(i in 1:length(files)){
    tempData <- na.omit(read.csv(files[i]))
    if (nrow(tempData) > threshold){
      cor_vector <- append(cor_vector,cor(tempData$sulfate, tempData$nitrate))
    }
  }
  cor_vector
}