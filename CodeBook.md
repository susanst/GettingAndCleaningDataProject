Data Dictionary - "tidyData.txt" for Coursera "Getting and Cleaning Data" class project 7/31/2014

	Derived from:
	[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
	Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly 
	Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). 
	Vitoria-Gasteiz, Spain. Dec 2012

	This dataset is distributed AS-IS and no responsibility implied or explicit can be 
	addressed to the authors or their institutions for its use or misuse. Any commercial 
	use is prohibited.

	Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


The following describes the columns of data in "tidyData.txt"

The first column is the Record Number.  A unique identifier for each record.

"subject": in an identifyer of the subject who carried out the experiment.  
	If empty, then all subjects were averaged for that activity.

"activity": the descriptive label of the activity the subject was carrying out.  
	Consists of WALKING
, WALKING_UPSTAIRS
, WALKING_DOWNSTAIRS, SITTING
, STANDING, and LAYING.

	If empty, then all activities were averaged for that subject.

The following data was derived from measurements taken from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

"tBodyAcc-mean()-X": The average of the mean body linear acceleration in the x direction for each subject or activity.

"tBodyAcc-mean()-Y": The average of the mean body linear acceleration in the y direction for each subject or activity.

"tBodyAcc-mean()-Z": The average of the mean body linear acceleration in the z direction for each subject or activity.

"tBodyAcc-std()-X": The average of the standard deviation of the body linear acceleration in the x direction for each subject or activity.

"tBodyAcc-std()-Y": The average of the standard deviation of the body linear acceleration in the y direction for each subject or activity.

"tBodyAcc-std()-Z": The average of the standard deviation of the body linear acceleration in the z direction for each subject or activity.

"tGravityAcc-mean()-X": The average of the mean gravity acceleration in the x directiono for each subject or activity.

"tGravityAcc-mean()-Y": The average of the mean gravity acceleration in the y directiono for each subject or activity.

"tGravityAcc-mean()-Z": The average of the mean gravity acceleration in the z directiono for each subject or activity.

"tGravityAcc-std()-X": The average of the standard deviation of the gravity acceleration in the x direction for each subject or activity.

"tGravityAcc-std()-Y": The average of the standard deviation of the gravity acceleration in the y direction for each subject or activity.

"tGravityAcc-std()-Z": The average of the standard deviation of the gravity acceleration in the z direction for each subject or activity.   

"tBodyAccJerk-mean()-X": The average of the mean body acceleration jerk signal in the x direction for each subject or activity.
       
"tBodyAccJerk-mean()-Y": The average of the mean body acceleration jerk signal in the y direction for each subject or activity.

"tBodyAccJerk-mean()-Z": The average of the mean body acceleration jerk signal in the z direction for each subject or activity.

"tBodyAccJerk-std()-X": The average of the standard deviation of the body acceleration jerk signal in the x direction for each subject or activity.

"tBodyAccJerk-std()-Y": The average of the standard deviation of the body acceleration jerk signal in the y direction for each subject or activity.

"tBodyAccJerk-std()-Z": The average of the standard deviation of the body acceleration jerk signal in the z direction for each subject or activity.
 
"tBodyGyro-mean()-X": The average of the mean angular velocity Gyro signal in the X direction for each subject or activity.

"tBodyGyro-mean()-Y": The average of the mean angular velocity Gyro signal in the y direction for each subject or activity.

"tBodyGyro-mean()-Z": The average of the mean angular velocity Gyro signal in the z direction for each subject or activity.

"tBodyGyro-std()-X": The average of the standard deviation of the angular velocity Gyro signal in the x direction for each subject or activity.

"tBodyGyro-std()-Y": The average of the standard deviation of the angular velocity Gyro signal in the y direction for each subject or activity.

"tBodyGyro-std()-Z": The average of the standard deviation of the angular velocity Gyro signal in the z direction for each subject or activity.
 
"tBodyGyroJerk-mean()-X": The average of the mean angular velocity Gyro Jerk signal in the X direction for each subject or activity.

"tBodyGyroJerk-mean()-Y": The average of the mean angular velocity Gyro Jerk signal in the y direction for each subject or activity.

"tBodyGyroJerk-mean()-Z": The average of the mean angular velocity Gyro Jerk signal in the z direction for each subject or activity.

"tBodyGyroJerk-std()-X": The average of the standard deviation of the angular velocity Gyro jerk signal in the x direction for each subject or activity.

"tBodyGyroJerk-std()-Y": The average of the standard deviation of the angular velocity Gyro jerk signal in the y direction for each subject or activity.

"tBodyGyroJerk-std()-Z": The average of the standard deviation of the angular velocity Gyro jerk signal in the z direction for each subject or activity.
     
"tBodyAccMag-mean()": The average of the mean magnitude of the body linear acceleration for each subject or activity.

"tBodyAccMag-std()": The average of the standard deviation of the magnitude of the body linear acceleration for each subject or activity.

"tGravityAccMag-mean()": The average of the mean magnitude of the gravity acceleration for each subject or activity.

"tGravityAccMag-std()": The average of the standard deviation of the gravity acceleration for each subject or activity.    

"tBodyAccJerkMag-mean()": The average of the mean magnitude of the body acceleration jerk signal for each subject or activity.

"tBodyAccJerkMag-std()": The average of the standard deviation of the magnitude of the body acceleration jerk signal for each subject or activity.
  
"tBodyGyroMag-mean()": The average of the mean magnitude of the angular velocity Gyro signal for each subject or activity.

"tBodyGyroMag-std()": The average of the standard deviation of the magnitude of the angular velocity Gyro signal for each subject or activity.

"tBodyGyroJerkMag-mean()": The average of the mean magnitude of the angular velocity Gyro Jerk signal for each subject or activity.

"tBodyGyroJerkMag-std()": The average of the standard deviation of the magnitude of the angular velocity Gyro Jerk signal for each subject or activity.

"fBodyAcc-mean()-X": The average of the mean Fast Fourier Transform of the body acceleration in the x direction for each subject or activity.

"fBodyAcc-mean()-Y": The average of the mean Fast Fourier Transform of the body acceleration in the y direction for each subject or activity.

"fBodyAcc-mean()-Z": The average of the mean Fast Fourier Transform of the body acceleration in the z direction for each subject or activity.

"fBodyAcc-std()-X": The average of the standard deviation of the Fast Fourier Transform of the body acceleration in the x direction for each subject or activity.

"fBodyAcc-std()-Y": The average of the standard deviation of the Fast Fourier Transform of the body acceleration in the y direction for each subject or activity.

"fBodyAcc-std()-Z": The average of the standard deviation of the Fast Fourier Transform of the body acceleration in the z direction for each subject or activity.

"fBodyAccJerk-mean()-X": The average of the mean Fast Fourier Transform of the body acceleration jerk signal in the x direction for each subject or activity.

"fBodyAccJerk-mean()-Y": The average of the mean Fast Fourier Transform of the body acceleration jerk signal in the y direction for each subject or activity.
 
"fBodyAccJerk-mean()-Z": The average of the mean Fast Fourier Transform of the body acceleration jerk signal in the z direction for each subject or activity.

"fBodyAccJerk-std()-X": The average of the standard deviation of the Fast Fourier Transform of the body acceleration jerk signal in the x direction for each subject or activity.

"fBodyAccJerk-std()-Y": The average of the standard deviation of the Fast Fourier Transform of the body acceleration jerk signal in the x direction for each subject or activity.

"fBodyAccJerk-std()-Z": The average of the standard deviation of the Fast Fourier Transform of the body acceleration jerk signal in the x direction for each subject or activity.

"fBodyGyro-mean()-X": The average of the mean Fast Fourier Transform of the angular velocity Gyro signal in the x direction for each subject or activity.

"fBodyGyro-mean()-Y": The average of the mean Fast Fourier Transform of the angular velocity Gyro signal in the y direction for each subject or activity.

"fBodyGyro-mean()-Z": The average of the mean Fast Fourier Transform of the angular velocity Gyro signal in the z direction for each subject or activity.

"fBodyGyro-std()-X": The average of the standard deviation of the Fast Fourier Transform of the angular velocity Gyro signal in the x direction for each subject or activity.

"fBodyGyro-std()-Y": The average of the standard deviation of the Fast Fourier Transform of the angular velocity Gyro signal in the y direction for each subject or activity.

"fBodyGyro-std()-Z": The average of the standard deviation of the Fast Fourier Transform of the angular velocity Gyro signal in the z direction for each subject or activity.
  
"fBodyAccMag-mean()": The average of the mean Fast Fourier Transform of the magnitude of the body acceleration for each subject or activity.

"fBodyAccMag-std()": The average of the standard deviation of the Fast Fourier Transform of the magnitude of the body acceleration for each subject or activity.

"fBodyBodyAccJerkMag-mean()": The average of the mean Fast Fourier Transform of the magnitude of the body acceleration jerk signal for each subject or activity.

"fBodyBodyAccJerkMag-std()": The average of the standard deviation of the Fast Fourier Transform of the magnitude of the body acceleration jerk signal for each subject or activity.

"fBodyBodyGyroMag-mean()": The average of the mean magnitude of the Fast Fourier Transform of the angular velocity Gyro signal for each subject or activity.

"fBodyBodyGyroMag-std()": The average of the standard deviation of the Fast Fourier Transform of the angular velocity Gyro signal for each subject or activity.

"fBodyBodyGyroJerkMag-mean()": The average of the mean magnitude of the Fast Fourier Transform of the angual velocity Gyro Jerk signal for eadh subject or activity.

"fBodyBodyGyroJerkMag-std()": The average of the standard deviation of the magnitude of the Fast Fourier Transform of the angual velocity Gyro Jerk signal for eadh subject or activity.

For additional information on the original data, see the README.txt and features_info.txt files in the zipped dataset.

____________________________________________________________________

Processing was completed by exectuing in R, the script: "run_analysis.R".  
Note: the reshape2 package is required.

This script reads in the test and training data from the UCI_HAR_Dataset, then appends the test data to the training data.  The labels and names are applied to the data, and selected measurements are extracted. The data set is reshaped and the averages of the selected measurements are avereaged for each subject and activity.  The subject averages and the activity averages are joined into one file, and written to a file: "tidyData.txt".

Written by Susan Stitt on 7/23/2014.
