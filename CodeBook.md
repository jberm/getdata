Variables
---------

* subject - A numeric id identifying the subject.  Range is 1-30.
* activity - The activity performed by the subject while the measurements were taken.  One of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
* tBodyAcc.mean.X - Mean acceleration (m/s^2)
* tBodyAcc.mean.Y - Mean acceleration (m/s^2)
* tBodyAcc.mean.Z - Mean acceleration (m/s^2)
* tBodyAcc.std.X - Mean acceleration (m/s^2)
* tBodyAcc.std.Y - Mean acceleration (m/s^2)
* tBodyAcc.std.Z - Mean acceleration (m/s^2)
* tGravityAcc.mean.X - Mean acceleration (m/s^2)
* tGravityAcc.mean.Y - Mean acceleration (m/s^2)
* tGravityAcc.mean.Z - Mean acceleration (m/s^2)
* tGravityAcc.std.X - Mean acceleration (m/s^2)
* tGravityAcc.std.Y - Mean acceleration (m/s^2)
* tGravityAcc.std.Z - Mean acceleration (m/s^2)
* tBodyAccJerk.mean.X - Mean acceleration (m/s^2)
* tBodyAccJerk.mean.Y - Mean acceleration (m/s^2)
* tBodyAccJerk.mean.Z - Mean acceleration (m/s^2)
* tBodyAccJerk.std.X - Mean acceleration (m/s^2)
* tBodyAccJerk.std.Y - Mean acceleration (m/s^2)
* tBodyAccJerk.std.Z - Mean acceleration (m/s^2)
* tBodyGyro.mean.X - Mean acceleration (m/s^2)
* tBodyGyro.mean.Y - Mean acceleration (m/s^2)
* tBodyGyro.mean.Z - Mean acceleration (m/s^2)
* tBodyGyro.std.X - Mean acceleration (m/s^2)
* tBodyGyro.std.Y - Mean acceleration (m/s^2)
* tBodyGyro.std.Z - Mean acceleration (m/s^2)
* tBodyGyroJerk.mean.X - Mean acceleration (m/s^2)
* tBodyGyroJerk.mean.Y - Mean acceleration (m/s^2)
* tBodyGyroJerk.mean.Z - Mean acceleration (m/s^2)
* tBodyGyroJerk.std.X - Mean acceleration (m/s^2)
* tBodyGyroJerk.std.Y - Mean acceleration (m/s^2)
* tBodyGyroJerk.std.Z - Mean acceleration (m/s^2)
* tBodyAccMag.mean - Mean acceleration (m/s^2)
* tBodyAccMag.std - Mean acceleration (m/s^2)
* tGravityAccMag.mean - Mean acceleration (m/s^2)
* tGravityAccMag.std - Mean acceleration (m/s^2)
* tBodyAccJerkMag.mean - Mean acceleration (m/s^2)
* tBodyAccJerkMag.std - Mean acceleration (m/s^2)
* tBodyGyroMag.mean - Mean acceleration (m/s^2)
* tBodyGyroMag.std - Mean acceleration (m/s^2)
* tBodyGyroJerkMag.mean - Mean acceleration (m/s^2)
* tBodyGyroJerkMag.std - Mean acceleration (m/s^2)
* fBodyAcc.mean.X - Mean acceleration (m/s^2)
* fBodyAcc.mean.Y - Mean acceleration (m/s^2)
* fBodyAcc.mean.Z - Mean acceleration (m/s^2)
* fBodyAcc.std.X - Mean acceleration (m/s^2)
* fBodyAcc.std.Y - Mean acceleration (m/s^2)
* fBodyAcc.std.Z - Mean acceleration (m/s^2)
* fBodyAccJerk.mean.X - Mean acceleration (m/s^2)
* fBodyAccJerk.mean.Y - Mean acceleration (m/s^2)
* fBodyAccJerk.mean.Z - Mean acceleration (m/s^2)
* fBodyAccJerk.std.X - Mean acceleration (m/s^2)
* fBodyAccJerk.std.Y - Mean acceleration (m/s^2)
* fBodyAccJerk.std.Z - Mean acceleration (m/s^2)
* fBodyGyro.mean.X - Mean acceleration (m/s^2)
* fBodyGyro.mean.Y - Mean acceleration (m/s^2)
* fBodyGyro.mean.Z - Mean acceleration (m/s^2)
* fBodyGyro.std.X - Mean acceleration (m/s^2)
* fBodyGyro.std.Y - Mean acceleration (m/s^2)
* fBodyGyro.std.Z - Mean acceleration (m/s^2)
* fBodyAccMag.mean - Mean acceleration (m/s^2)
* fBodyAccMag.std - Mean acceleration (m/s^2)
* fBodyBodyAccJerkMag.mean - Mean acceleration (m/s^2)
* fBodyBodyAccJerkMag.std - Mean acceleration (m/s^2)
* fBodyBodyGyroMag.mean - Mean acceleration (m/s^2)
* fBodyBodyGyroMag.std - Mean acceleration (m/s^2)
* fBodyBodyGyroJerkMag.mean - Mean acceleration (m/s^2)
* fBodyBodyGyroJerkMag.std - Mean acceleration (m/s^2)

Transformations
---------------

The output dataset was created by merging the training and test sets from the original UCI HAR Dataset.  The subjects and labels were appended to the observations by joining the observation data with the appropriate label and subject files.  Only the mean and standard devaition measurements were selected from the original training and test observations.  The dataset was then transformed by grouping observations by subject and activity and taking the mean of each variable to produce the final output.


