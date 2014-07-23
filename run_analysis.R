## Load the reshape2 package
library(reshape2)

## Working with the UCI_HAR_Dataset downloaded from 
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
## on 7/21/2014

## The zipped data was unzipped, and the "run_analysis.R" (this) script should sit in the same 
## directory as the upzipped data.

## Read in the training data sets
     subject_train <- as.data.frame(read.table("./UCI_HAR_Dataset/train/subject_train.txt"))
     X_train <- as.data.frame(read.table("./UCI_HAR_Dataset/train/X_train.txt"))
     y_train <- as.data.frame(read.table("./UCI_HAR_Dataset/train/y_train.txt"))

## Read in the test data sets
     subject_test <- as.data.frame(read.table("./UCI_HAR_Dataset/test/subject_test.txt"))
     X_test <- as.data.frame(read.table("./UCI_HAR_Dataset/test/X_test.txt"))
     y_test <- as.data.frame(read.table("./UCI_HAR_Dataset/test/y_test.txt"))

## establish the number of records in the test and training datasets
     testr <- length(subject_test[,1])
     trainr <- length(subject_train[,1])

## start the merge with the training data sets
     subject_total <- subject_train
     X_total <- X_train
     y_total <- y_train

## Add the test data sets to the end of the training data sets

     for (i in 1:testr) {
          subject_total[trainr+i,] <- subject_test[i,]
          y_total[trainr+i,] <- y_test[i,]
          X_total[trainr+i,] <- X_test[i,]
          }

## Read in and set up the labels
     type <- c(rep("train", times=trainr),rep("test", times=testr))
     activity_labels <- read.table("./UCI_HAR_Dataset/activity_labels.txt")
     features <- read.table("./UCI_HAR_Dataset/features.txt")

## Add the Activity Labels to the Activity file
     for(i in 1:(testr+trainr)) {
          y_total$activity[i] <- as.character(activity_labels[y_total[i,1],2])
          }

## and the lables to the large data file
     names(X_total) <- features$V2

## label the subject data as "subject"
     names(subject_total) <- c("subject")


## Since we want only the mean and standard deviations of each of the 
## measurements, we want the following:
## (this may be more than required, but wanted to be thorough.)
##       1 tBodyAcc-mean()-X
##       2 tBodyAcc-mean()-Y
##       3 tBodyAcc-mean()-Z
##       4 tBodyAcc-std()-X
##       5 tBodyAcc-std()-Y
##       6 tBodyAcc-std()-Z
##       
##       41 tGravityAcc-mean()-X
##       42 tGravityAcc-mean()-Y
##       43 tGravityAcc-mean()-Z
##       44 tGravityAcc-std()-X
##       45 tGravityAcc-std()-Y
##       46 tGravityAcc-std()-Z
##       
##       81 tBodyAccJerk-mean()-X
##       82 tBodyAccJerk-mean()-Y
##       83 tBodyAccJerk-mean()-Z
##       84 tBodyAccJerk-std()-X
##       85 tBodyAccJerk-std()-Y
##       86 tBodyAccJerk-std()-Z
##       
##       121 tBodyGyro-mean()-X
##       122 tBodyGyro-mean()-Y
##       123 tBodyGyro-mean()-Z
##       124 tBodyGyro-std()-X
##       125 tBodyGyro-std()-Y
##       126 tBodyGyro-std()-Z
##       
##       161 tBodyGyroJerk-mean()-X
##       162 tBodyGyroJerk-mean()-Y
##       163 tBodyGyroJerk-mean()-Z
##       164 tBodyGyroJerk-std()-X
##       165 tBodyGyroJerk-std()-Y
##       166 tBodyGyroJerk-std()-Z
##       
##       201 tBodyAccMag-mean()
##       202 tBodyAccMag-std()
##       
##       214 tGravityAccMag-mean()
##       215 tGravityAccMag-std()
##       
##       227 tBodyAccJerkMag-mean()
##       228 tBodyAccJerkMag-std()
##       
##       240 tBodyGyroMag-mean()
##       241 tBodyGyroMag-std()
##       
##       253 tBodyGyroJerkMag-mean()
##       254 tBodyGyroJerkMag-std()
##       
##       266 fBodyAcc-mean()-X
##       267 fBodyAcc-mean()-Y
##       268 fBodyAcc-mean()-Z
##       269 fBodyAcc-std()-X
##       270 fBodyAcc-std()-Y
##       271 fBodyAcc-std()-Z
##       
##       345 fBodyAccJerk-mean()-X
##       346 fBodyAccJerk-mean()-Y
##       347 fBodyAccJerk-mean()-Z
##       348 fBodyAccJerk-std()-X
##       349 fBodyAccJerk-std()-Y
##       350 fBodyAccJerk-std()-Z
##       
##       424 fBodyGyro-mean()-X
##       425 fBodyGyro-mean()-Y
##       426 fBodyGyro-mean()-Z
##       427 fBodyGyro-std()-X
##       428 fBodyGyro-std()-Y
##       429 fBodyGyro-std()-Z
##       
##       503 fBodyAccMag-mean()
##       504 fBodyAccMag-std()
##       
##       516 fBodyBodyAccJerkMag-mean()
##       517 fBodyBodyAccJerkMag-std()
##       
##       529 fBodyBodyGyroMag-mean()
##       530 fBodyBodyGyroMag-std()
##       
##       542 fBodyBodyGyroJerkMag-mean()
##       543 fBodyBodyGyroJerkMag-std()


## Set up the columns we want to extract:
     columns <- c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,266:271,345:350,424:429,503:504,516:517,529:530,542:543)

## Extract the columns into a subset of data file:
data_sub <- X_total[,columns]

## Add the type of record, the subject, 
## and the activity name to the front of the dataset:
data <- cbind(type,subject_total,y_total[2],data_sub)

## Reshape the file to be able to extract the average 
## of each variable for each activity and each subject
dataMelt <- melt(data,id=c("activity","subject"),measure.vars=c(names(data[4:69])))

## Extract the average of each variable for each activity (actData) 
## and each subject (subData)
actData <- dcast(dataMelt,activity ~ variable,mean)
subData <- dcast(dataMelt,subject ~ variable,mean)

## Set up some dummy columns in order to have the same columns and names for rbind
## use zeros in the subject column in order to add additional numbers later
subject <- c(rep(0,length(actData[,1])))
activity <- c(rep("",length(subData[,1])))

## bind the new subject column to the actData
actData1 <- cbind(subject,actData)

## pull out the subject column from the subData set, 
## so we can rebind it in the correct order.
subject <- subData$subject

## cbind the subData with the subject column and the dummy activity column 
## in order to have the same columns as actData1
subData1 <- cbind(subject, activity, subData[,2:67])

## put the subject and the activity average means and standard deviations together:
tidyData <- rbind(actData1,subData1)

## Remove the zeros from the subject column 
for (i in 1:length(tidyData[,1])){
    if(tidyData[i,1]==0) {tidyData[i,1] <- ""}
     }

## write a label for the record number
names(tidyData[1]) <- c("recno")

## And we should be done!  Write out the data in csv format...
write.csv(tidyData,"./tidyData.txt")



