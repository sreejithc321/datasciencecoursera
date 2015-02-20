complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  
  files <- list.files(directory, pattern=".csv", full.names=TRUE)
  row_id <- numeric()
  rnobs <- numeric()
  
  #Read data
  for (i in id) 
    {
      data <- read.csv(files[i], header=TRUE)
      row_id <- c(row_id, i)
    
      # sum complete cases
      rnobs <- c(rnobs, sum(complete.cases(data)))
    }
    
    df <- data.frame(id = row_id, nobs = rnobs)
    print(df)
  }
