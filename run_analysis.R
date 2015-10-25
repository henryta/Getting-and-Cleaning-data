## The following R script processes the data from activity measures 
## and creates a tidy data set of measurements for 30 subjects.


## Create data.frame activity_labels from ./data/activity_labels.txt	
	activity_labels <- read.table("./data/activity_labels.txt")
	colnames(activity_labels)[1] <- 'activity_id'
	colnames(activity_labels)[2] <- 'activity_name'

## Create data.frame features from ./data/features.txt	
	features <- read.table("./data/features.txt")
	colnames(features)[1] <- 'measurement_id'
	colnames(features)[2] <- 'measurement'

######################################################################

## Create data.frame sub_train from ./data/subject_train.txt
## Insert a column to hold the row number
## Update column value. Add column names.

	sub_train <- read.table("./data/subject_train.txt")
	sub_train$row_id <- c(1:nrow(sub_train))
	colnames(sub_train)[1] <- 'subject_id'



## Create data.frame activity_train from ./data/y_train.txt
## Insert a column to hold the row number
## Update column

	activity_train <- read.table("./data/y_train.txt")
	activity_train$row_id <- c(1:nrow(activity_train))
	colnames(activity_train)[1] <- 'activity_id'

## Create data.frame obs_train from ./data/x_train.txt
## Insert a column to hold the row number
## Update column

	obs_train <- read.table("./data/x_train.txt")
	colnames(obs_train) <- features$measurement
	obs_train$row_id <- c(1:nrow(obs_train))
	


## Merge sub_train, activity_train and obs_train data frames by row id
	
	m1 <- merge(sub_train, obs_train, by.x = 'row_id', by.y = 'row_id')
	m1 <- merge(activity_train,m1,  by.x = 'row_id', by.y = 'row_id')
	m1 <- merge(activity_labels,m1,  by.x = 'activity_id', by.y = 'activity_id')


#################################################################################

## Create data.frame sub_test from ./data/subject_test.txt
## Insert a column to hold the row number
## Update column value. Add column names.

	sub_test <- read.table("./data/subject_test.txt")
	sub_test$row_id <- c(1:nrow(sub_test))
	colnames(sub_test)[1] <- 'subject_id'



## Create data.frame activity_test from ./data/y_test.txt
## Insert a column to hold the row number
## Update column

	activity_test <- read.table("./data/y_test.txt")
	activity_test$row_id <- c(1:nrow(activity_test))
	colnames(activity_test)[1] <- 'activity_id'

## Create data.frame obs_test from ./data/x_test.txt
## Insert a column to hold the row number
## Update column

	obs_test <- read.table("./data/x_test.txt")
	colnames(obs_test) <- features$measurement
	obs_test$row_id <- c(1:nrow(obs_test))
	


## Merge sub_test, activity_test and obs_test data frames by row id

	m2 <- merge(sub_test, obs_test, by.x = 'row_id', by.y = 'row_id')
	m2 <- merge(activity_test,m2,  by.x = 'row_id', by.y = 'row_id')
	m2 <- merge(activity_labels,m2,  by.x = 'activity_id', by.y = 'activity_id')
	


###############################################################################

## Append training and test data sets

	m3 <- rbind(m1,m2)

###############################################################################




## Select mean() and std() measurements
	library(dplyr)
	m4 <- select(m3,activity_id,subject_id,contains("mean()",ignore.case=TRUE),contains("std()",ignore.case=TRUE))


## Select variables to group by and summarize
	xgroup <- group_by(m4,subject_id,activity_id)
	m5 <- summarise_each(xgroup,funs(mean))
	m6 <- merge(activity_labels,m5,  by.x = 'activity_id', by.y = 'activity_id')
	m7 <- m6[,c(2:69)]

## Remove "()" string from variable names and convert to lower case
## Write data frame to final tidy data output file
	colnames(m7) <- tolower(gsub("[()]","",colnames(m7)))
	write.table(m7, file = "./data/tidy_data_output.txt",row.name = FALSE)
	

