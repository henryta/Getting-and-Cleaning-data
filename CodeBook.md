The features selected for this data come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Field Name                           	Variable Type                           	Description
activity_name                           	Character           	"Activities performed
                                                                WALKING, WALKING_UPSTAIRS, 
                                                                WALKING_DOWNSTAIRS, SITTING, 
                                                                STANDING AND LAYING"
subject_id                              	Numeric             	Range of values [ 1 to 30 ] representing the volunteers                         
tbodyacc-mean-x                         	Numeric             	Average of all the measurements taken                                           
tbodyacc-mean-y                         	Numeric             	Average of all the measurements taken                                           
tbodyacc-mean-z                         	Numeric             	Average of all the measurements taken                                           
tgravityacc-mean-x                      	Numeric             	Average of all the measurements taken                                           
tgravityacc-mean-y                      	Numeric             	Average of all the measurements taken                                           
tgravityacc-mean-z                      	Numeric             	Average of all the measurements taken                                           
tbodyaccjerk-mean-x                     	Numeric             	Average of all the measurements taken                                           
tbodyaccjerk-mean-y                     	Numeric             	Average of all the measurements taken                                           
tbodyaccjerk-mean-z                     	Numeric             	Average of all the measurements taken                                           
tbodygyro-mean-x                        	Numeric             	Average of all the measurements taken                                           
tbodygyro-mean-y                        	Numeric             	Average of all the measurements taken                                           
tbodygyro-mean-z                        	Numeric             	Average of all the measurements taken                                           
tbodygyrojerk-mean-x                    	Numeric             	Average of all the measurements taken                                           
tbodygyrojerk-mean-y                    	Numeric             	Average of all the measurements taken                                           
tbodygyrojerk-mean-z                    	Numeric             	Average of all the measurements taken                                           
tbodyaccmag-mean                        	Numeric             	Average of all the measurements taken                                           
tgravityaccmag-mean                     	Numeric             	Average of all the measurements taken                                           
tbodyaccjerkmag-mean                    	Numeric             	Average of all the measurements taken                                           
tbodygyromag-mean                       	Numeric             	Average of all the measurements taken                                           
tbodygyrojerkmag-mean                   	Numeric             	Average of all the measurements taken                                           
fbodyacc-mean-x                         	Numeric             	Average of all the measurements taken                                           
fbodyacc-mean-y                         	Numeric             	Average of all the measurements taken                                           
fbodyacc-mean-z                         	Numeric             	Average of all the measurements taken                                           
fbodyaccjerk-mean-x                     	Numeric             	Average of all the measurements taken                                           
fbodyaccjerk-mean-y                     	Numeric             	Average of all the measurements taken                                           
fbodyaccjerk-mean-z                     	Numeric             	Average of all the measurements taken                                           
fbodygyro-mean-x                        	Numeric             	Average of all the measurements taken                                           
fbodygyro-mean-y                        	Numeric             	Average of all the measurements taken                                           
fbodygyro-mean-z                        	Numeric             	Average of all the measurements taken                                           
fbodyaccmag-mean                        	Numeric             	Average of all the measurements taken                                           
fbodybodyaccjerkmag-mean                	Numeric             	Average of all the measurements taken                                           
fbodybodygyromag-mean                   	Numeric             	Average of all the measurements taken                                           
fbodybodygyrojerkmag-mean               	Numeric             	Average of all the measurements taken                                           
tbodyacc-std-x                          	Numeric             	Average of all the measurements taken                                           
tbodyacc-std-y                          	Numeric             	Average of all the measurements taken                                           
tbodyacc-std-z                          	Numeric             	Average of all the measurements taken                                           
tgravityacc-std-x                       	Numeric             	Average of all the measurements taken                                           
tgravityacc-std-y                       	Numeric             	Average of all the measurements taken                                           
tgravityacc-std-z                       	Numeric             	Average of all the measurements taken                                           
tbodyaccjerk-std-x                      	Numeric             	Average of all the measurements taken                                           
tbodyaccjerk-std-y                      	Numeric             	Average of all the measurements taken                                           
tbodyaccjerk-std-z                      	Numeric             	Average of all the measurements taken                                           
tbodygyro-std-x                         	Numeric             	Average of all the measurements taken                                           
tbodygyro-std-y                         	Numeric             	Average of all the measurements taken                                           
tbodygyro-std-z                         	Numeric             	Average of all the measurements taken                                           
tbodygyrojerk-std-x                     	Numeric             	Average of all the measurements taken                                           
tbodygyrojerk-std-y                     	Numeric             	Average of all the measurements taken                                           
tbodygyrojerk-std-z                     	Numeric             	Average of all the measurements taken                                           
tbodyaccmag-std                         	Numeric             	Average of all the measurements taken                                           
tgravityaccmag-std                      	Numeric             	Average of all the measurements taken                                           
tbodyaccjerkmag-std                     	Numeric             	Average of all the measurements taken                                           
tbodygyromag-std                        	Numeric             	Average of all the measurements taken                                           
tbodygyrojerkmag-std                    	Numeric             	Average of all the measurements taken                                           
fbodyacc-std-x                          	Numeric             	Average of all the measurements taken                                           
fbodyacc-std-y                          	Numeric             	Average of all the measurements taken                                           
fbodyacc-std-z                          	Numeric             	Average of all the measurements taken                                           
fbodyaccjerk-std-x                      	Numeric             	Average of all the measurements taken                                           
fbodyaccjerk-std-y                      	Numeric             	Average of all the measurements taken                                           
fbodyaccjerk-std-z                      	Numeric             	Average of all the measurements taken                                           
fbodygyro-std-x                         	Numeric             	Average of all the measurements taken                                           
fbodygyro-std-y                         	Numeric             	Average of all the measurements taken                                           
fbodygyro-std-z                         	Numeric             	Average of all the measurements taken                                           
fbodyaccmag-std                         	Numeric             	Average of all the measurements taken                                           
fbodybodyaccjerkmag-std                 	Numeric             	Average of all the measurements taken                                           
fbodybodygyromag-std                    	Numeric             	Average of all the measurements taken                                           
fbodybodygyrojerkmag-std                	Numeric             	Average of all the measurements taken                                           
