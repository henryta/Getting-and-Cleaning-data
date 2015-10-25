# Getting-and-Cleaning-data
This repository contains the R script, tidy data output file and Code Book produced as part of the Project assignment for the 
Coursera "Getting and Cleaning Data" course in the Data Science Track. 

The script run_analysis.R processes the data gathered from experiments carried out with a group of 30 volunteers within an age range of 19-48 years. 
Each person performed six activities (Walking, Walking_Upstairs, Walking_Downstairs, Sitting, Standing and Laying) while wearing a Samsung Galaxy S II smartphone. The embedded accelerometer and gyroscope captured the measurements for the subjects and the data obtained was partitioned into two data sets where 70% of the volunteers were selected for generating the training data and 30% the test data.

Following are the files processed by the script:
================================================
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'X_train.txt': Training set.
- 'y_train.txt': Training labels.
- 'X_test.txt': Test set.
- 'y_test.txt': Test labels.
- 'subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'ubject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

In summary the script processes the data as follows:
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The various transformations to the data are describe within the script. 






