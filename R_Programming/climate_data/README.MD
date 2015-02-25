
# Dataset : hw1_data.csv

    Q : In the dataset provided for this Quiz, what are the column names of the dataset?

        col_name = read.csv('hw1_data.csv')
        names(col_name)

    Answer :  "Ozone"   "Solar.R" "Wind"    "Temp"    "Month"   "Day"


    Q : Extract the first 2 rows of the data frame and print them to the console. What does the output look like?
    
        data = read.csv('hw1_data.csv')
        data[c(1,2),]
         
    Answer

        Ozone Solar.R Wind Temp Month Day
         41     190  7.4   67     5   1
         36     118  8.0   72     5   2


    Q : How many observations (i.e. rows) are in this data frame?
        
        data = read.csv('hw1_data.csv')
        nrow(data)
        
    Answer : 153


	Q : Extract the last 2 rows of the data frame and print them to the console. What does the output look like?

        data = read.csv('hw1_data.csv')
        tail(data,2)
    
    Answer :
        
        Ozone Solar.R Wind Temp Month Day
        152    18     131  8.0   76     9  29
        153    20     223 11.5   68     9  30


	Q : What is the value of Ozone in the 47th row?

	    data = read.csv('hw1_data.csv')
		data[47,1]

	Answer : 21



	Q : How many missing values are in the Ozone column of this data frame?
		
		data = read.csv('hw1_data.csv')
		nrow(subset(data, is.na(Ozone)))

	Answer : 37


	Q : What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
		
		data = read.csv('hw1_data.csv')	
		mean(data$Ozone, na.rm=TRUE)
	
	Answer : 42.1


	Q : Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?

	Answer : 212.8

	
	Q : You need to construct a logical vector in R to match the question's requirements. Then use that logical vector to subset the data frame.

		data_solar = subset(data, Ozone>31 & Temp >90 & !is.na(Solar.R))
		mean(data_solar$Solar)

	Answer :  212.8 


	Q : What is the mean of "Temp" when "Month" is equal to 6?
	
		d = subset(data,Month==6)
		mean(d$Temp, na.rm=TRUE)
	
	Answer : 79.1


	Q : What was the maximum ozone value in the month of May (i.e. Month = 5)?

		data_sub = subset(data, Month == 5)
		max(data_sub$Ozone, na.rm = T)

	Answer : 115
