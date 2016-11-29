# run_analysis.R
#
# This script is part of the course project for Getting and Cleaning Data.
#
# The purpose of this project is to demonstrate an ability to collect,
# work with, and clean a data set. The goal is to prepare tidy data that
# can be used for later analysis.
#
# This script assumes the subdirectory "UCI HAR Dataset" containing the
# Samsung data is in the working directory.  The Samsung data can be
# downloaded from
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#
# The following functions are used from package dplyr:
#   select, group_by, summarize_each
#
run_analysis <- function() {
library(dplyr)
#
# Switch to Samsung data subdirectory, read all necessary data, and switch
# back to original working directory.
#
savewd <- getwd()
setwd("UCI HAR Dataset")
features <- read.table("features.txt")
activity_labels <- read.table("activity_labels.txt")
y_train <- read.table("train/y_train.txt")
X_train <- read.table("train/X_train.txt")
subject_train <- read.table("train/subject_train.txt")
y_test <- read.table("test/y_test.txt")
X_test <- read.table("test/X_test.txt")
subject_test <- read.table("test/subject_test.txt")
setwd(savewd)
#
# Add columns identifying activity and subject to measurement data.
#
wide_train <- cbind(cbind(y_train, subject_train), X_train)
wide_test <- cbind(cbind(y_test, subject_test), X_test)
#
# Merge the training and the test sets to create one data set.
#
allData <- rbind(wide_train, wide_test)
#
# Extract only the measurements on the mean and standard deviation for each measurement.
#
featureNames <- levels(features[[2]])
allColumns <- c("activityKey", "subject", featureNames)
meanFinder <- grepl("mean()", allColumns, fixed=TRUE)
stdFinder <- grepl("std()", allColumns, fixed=TRUE)
myColumns <- c(1, 2, which(meanFinder | stdFinder))
narrowData <- allData[myColumns]
narrowColumns <- allColumns[myColumns]
#
# Appropriately label the data set with descriptive variable names.
#
names(narrowData) <- narrowColumns
#
# Use descriptive activity names to name the activities in the data set.
#
names(activity_labels) <- c("activityKey", "activity")
activityData <- merge(activity_labels, narrowData, by="activityKey")
activityData <- select(activityData, -activityKey)
#
# Create a second, independent tidy data set with the average of each variable for each
# activity and each subject.  Save data set as a txt file created with write.table()
# using row.name=FALSE.
#
groupData <- group_by(activityData, activity, subject)
tidyData <- summarize_each(groupData, funs(mean))
write.table(tidyData, "tidyData.txt", row.name=FALSE)
}