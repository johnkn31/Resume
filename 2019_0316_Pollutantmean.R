pollutantmean <- function(directory, pollutant, id = 1:332) {
  directory <- "C:/Users/johnk/OneDrive/Desktop/specdata"
  setwd(directory)
  ##a <- vector(mode = "numeric", length = 332)
    a <- numeric(0)

	for (i in id) {
    if (i < 10) {
      x <- paste("00", i, ".csv", sep = "")
      data <- read.csv(x)
      print(x)
      a[i]<-mean(data[,pollutant],na.rm=TRUE)
      print(a)
    }
 	else
      if (i >= 10 && i < 100) {
        x <- paste("0", i, ".csv", sep = "")
        data <- read.csv(x)
        a[i] <- mean(data[, pollutant], na.rm = T)
        
      }
    
    else{
      x <- paste(i, ".csv", sep = "")
      
      data <- read.csv(x)
      
      a[i] <- mean(data[, pollutant], na.rm = T)
      
      
    }
		
    
  }
}
