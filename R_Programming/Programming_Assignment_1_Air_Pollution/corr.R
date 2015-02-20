corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
  
  files <- list.files(directory, pattern=".csv", full.names=TRUE)
  result <- numeric()
  
  for (i in 1:length(files)) {
    data <- read.csv(files[i], header=TRUE, colClasses=c("NULL", NA, NA, "NULL"))
    #Append to the corrolation vector if threshold of complete data is met
    if (sum(complete.cases(data)) > threshold) {
      sulfate <- data[complete.cases(data),1]
      nitrate <- data[complete.cases(data), 2]
      result <- c(result, cor(sulfate, nitrate))
    }
  }
  result
}