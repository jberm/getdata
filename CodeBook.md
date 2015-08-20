Variables
---------

* subject - A numeric id identifying the subject.  Range is 1-30.
* activity - The activity performed by the subject while the measurements were taken.  One of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
* tBodyAcc.mean.X - Mean acceleration.
* tBodyAcc.mean.Y - Mean acceleration.
* tBodyAcc.mean.Z - Mean acceleration.
* tBodyAcc.std.X - Mean acceleration.
* tBodyAcc.std.Y - Mean acceleration.
* tBodyAcc.std.Z - Mean acceleration.
* tGravityAcc.mean.X - Mean acceleration.
* tGravityAcc.mean.Y - Mean acceleration.
* tGravityAcc.mean.Z - Mean acceleration.
* tGravityAcc.std.X - Mean acceleration.
* tGravityAcc.std.Y - Mean acceleration.
* tGravityAcc.std.Z - Mean acceleration.
* tBodyAccJerk.mean.X - Mean acceleration.
* tBodyAccJerk.mean.Y - Mean acceleration.
* tBodyAccJerk.mean.Z - Mean acceleration.
* tBodyAccJerk.std.X - Mean acceleration.
* tBodyAccJerk.std.Y - Mean acceleration.
* tBodyAccJerk.std.Z - Mean acceleration.
* tBodyGyro.mean.X - Mean acceleration.
* tBodyGyro.mean.Y - Mean acceleration.
* tBodyGyro.mean.Z - Mean acceleration.
* tBodyGyro.std.X - Mean acceleration.
* tBodyGyro.std.Y - Mean acceleration.
* tBodyGyro.std.Z - Mean acceleration.
* tBodyGyroJerk.mean.X - Mean acceleration.
* tBodyGyroJerk.mean.Y - Mean acceleration.
* tBodyGyroJerk.mean.Z - Mean acceleration.
* tBodyGyroJerk.std.X - Mean acceleration.
* tBodyGyroJerk.std.Y - Mean acceleration.
* tBodyGyroJerk.std.Z - Mean acceleration.
* tBodyAccMag.mean - Mean acceleration.
* tBodyAccMag.std - Mean acceleration.
* tGravityAccMag.mean - Mean acceleration.
* tGravityAccMag.std - Mean acceleration.
* tBodyAccJerkMag.mean - Mean acceleration.
* tBodyAccJerkMag.std - Mean acceleration.
* tBodyGyroMag.mean - Mean acceleration.
* tBodyGyroMag.std - Mean acceleration.
* tBodyGyroJerkMag.mean - Mean acceleration.
* tBodyGyroJerkMag.std - Mean acceleration.
* fBodyAcc.mean.X - Mean acceleration.
* fBodyAcc.mean.Y - Mean acceleration.
* fBodyAcc.mean.Z - Mean acceleration.
* fBodyAcc.std.X - Mean acceleration.
* fBodyAcc.std.Y - Mean acceleration.
* fBodyAcc.std.Z - Mean acceleration.
* fBodyAccJerk.mean.X - Mean acceleration.
* fBodyAccJerk.mean.Y - Mean acceleration.
* fBodyAccJerk.mean.Z - Mean acceleration.
* fBodyAccJerk.std.X - Mean acceleration.
* fBodyAccJerk.std.Y - Mean acceleration.
* fBodyAccJerk.std.Z - Mean acceleration.
* fBodyGyro.mean.X - Mean acceleration.
* fBodyGyro.mean.Y - Mean acceleration.
* fBodyGyro.mean.Z - Mean acceleration.
* fBodyGyro.std.X - Mean acceleration.
* fBodyGyro.std.Y - Mean acceleration.
* fBodyGyro.std.Z - Mean acceleration.
* fBodyAccMag.mean - Mean acceleration.
* fBodyAccMag.std - Mean acceleration.
* fBodyBodyAccJerkMag.mean - Mean acceleration.
* fBodyBodyAccJerkMag.std - Mean acceleration.
* fBodyBodyGyroMag.mean - Mean acceleration.
* fBodyBodyGyroMag.std - Mean acceleration.
* fBodyBodyGyroJerkMag.mean - Mean acceleration.
* fBodyBodyGyroJerkMag.std - Mean acceleration.

Transformations
---------------

The output dataset was created by merging the training and test sets from the original UCI HAR Dataset.  The subjects and labels were appended to the observations by joining the observation data with the appropriate label and subject files.  Only the mean and standard devaition measurements were selected from the original training and test observations.  The dataset was then transformed by grouping observations by subject and activity and taking the mean of each variable to produce the final output.


