pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  
  files <- list.files(directory, pattern=".csv", full.names=TRUE)
  values <- numeric()
  
  ## Read 'pollutant 'values from 'id' file
  for (file in id) {
    data <- read.csv(files[file], header=TRUE)
    values <- c(values, data[[pollutant]])
  }
  
  ## Compute mean 
  mean <- mean(values, na.rm=TRUE)
  print(mean)
}

