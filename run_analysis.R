install.packages("dplyr", repos='http://cran.us.r-project.org')
library(dplyr)

#-----------------------------------------------------------------------------
# DATASET
#-----------------------------------------------------------------------------
#'
#' Constructs a dataset from the given data files, retaining only the mean
#' and standard deviation measurements.
#' 
#' @param observtions - A file of observations.
#' @param labels - A file of labels for the observations.
#' @param subjects - A file of subjects for observations.
#' @return The data frame.
#' 
dataset <- function(observations, labels, subjects) {
    read.table(observations, strip.white = TRUE) %>%
    select(
        tBodyAcc.mean.X = V1, 
        tBodyAcc.mean.Y = V2, 
        tBodyAcc.mean.Z = V3, 
        tBodyAcc.std.X = V4, 
        tBodyAcc.std.Y = V5, 
        tBodyAcc.std.Z = V6, 
        tGravityAcc.mean.X = V41, 
        tGravityAcc.mean.Y = V42, 
        tGravityAcc.mean.Z = V43, 
        tGravityAcc.std.X = V44, 
        tGravityAcc.std.Y = V45, 
        tGravityAcc.std.Z = V46, 
        tBodyAccJerk.mean.X = V81, 
        tBodyAccJerk.mean.Y = V82, 
        tBodyAccJerk.mean.Z = V83, 
        tBodyAccJerk.std.X = V84, 
        tBodyAccJerk.std.Y = V85, 
        tBodyAccJerk.std.Z = V86, 
        tBodyGyro.mean.X = V121, 
        tBodyGyro.mean.Y = V122, 
        tBodyGyro.mean.Z = V123, 
        tBodyGyro.std.X = V124, 
        tBodyGyro.std.Y = V125, 
        tBodyGyro.std.Z = V126, 
        tBodyGyroJerk.mean.X = V161,
        tBodyGyroJerk.mean.Y = V162,
        tBodyGyroJerk.mean.Z = V163,
        tBodyGyroJerk.std.X = V164,
        tBodyGyroJerk.std.Y = V165,
        tBodyGyroJerk.std.Z = V166,
        tBodyAccMag.mean = V201,
        tBodyAccMag.std = V202,
        tGravityAccMag.mean = V214,
        tGravityAccMag.std = V215,
        tBodyAccJerkMag.mean = V227,
        tBodyAccJerkMag.std = V228,
        tBodyGyroMag.mean = V240,
        tBodyGyroMag.std = V241,
        tBodyGyroJerkMag.mean = V253,
        tBodyGyroJerkMag.std = V254,
        fBodyAcc.mean.X = V266,
        fBodyAcc.mean.Y = V267,
        fBodyAcc.mean.Z = V268,
        fBodyAcc.std.X = V269,
        fBodyAcc.std.Y = V270,
        fBodyAcc.std.Z = V271,
        fBodyAccJerk.mean.X = V345,
        fBodyAccJerk.mean.Y = V346,
        fBodyAccJerk.mean.Z = V347,
        fBodyAccJerk.std.X = V348,
        fBodyAccJerk.std.Y = V349,
        fBodyAccJerk.std.Z = V350,
        fBodyGyro.mean.X = V424,
        fBodyGyro.mean.Y = V425,
        fBodyGyro.mean.Z = V426,
        fBodyGyro.std.X = V427,
        fBodyGyro.std.Y = V428,
        fBodyGyro.std.Z = V429,
        fBodyAccMag.mean = V503,
        fBodyAccMag.std = V504,
        fBodyBodyAccJerkMag.mean = V516,
        fBodyBodyAccJerkMag.std = V517,
        fBodyBodyGyroMag.mean = V529,
        fBodyBodyGyroMag.std = V530,
        fBodyBodyGyroJerkMag.mean = V542,
        fBodyBodyGyroJerkMag.std = V543
    ) %>%
    mutate(
        subject = readSubjects(subjects), 
        activity = readLabels(labels)
    )
}

#-----------------------------------------------------------------------------
# READ LABELS
#-----------------------------------------------------------------------------
#'
#' Reads a file of observation labels.
#' 
#' @param file - The file of labels
#' @retrun The observation labels as a factor vector.
#'
readLabels <- function(file) {
    labels <- read.table(file)
    factor(
        labels$V1, 
        levels = c("1","2","3","4","5","6"), 
        labels = c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")
    )
}

#-----------------------------------------------------------------------------
# READ SUBJECTS
#-----------------------------------------------------------------------------
#'
#' Reads a file of subject ids.
#' 
#' @param file - The file of subject ids.
#' @retrun The subject ids as a factor vector.
#'
readSubjects <- function(file) {
    subjects <- read.table(file)
    factor(subjects$V1, levels = 1:30)
}

#-----------------------------------------------------------------------------
# EXEC
#-----------------------------------------------------------------------------
if(!dir.exists("UCI\ HAR\ Dataset")) {
    download.file(
        "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
        method = "curl", 
        destfile = "dataset.zip"
    )
    unzip("dataset.zip")
    file.remove("dataset.zip")
}

data <- rbind(
    dataset(
        observations = "UCI\ HAR\ Dataset/train/X_train.txt",
        subjects = "UCI\ HAR\ Dataset/train/subject_train.txt",
        labels = "UCI\ HAR\ Dataset/train/y_train.txt"
    ),
    dataset(
        observations = "UCI\ HAR\ Dataset/test/X_test.txt",
        subjects = "UCI\ HAR\ Dataset/test/subject_test.txt",
        labels = "UCI\ HAR\ Dataset/test/y_test.txt"
    )
) %>% group_by(subject, activity) %>% summarise_each(funs(mean))

write.table(data, file = "output.txt", row.names = FALSE)
