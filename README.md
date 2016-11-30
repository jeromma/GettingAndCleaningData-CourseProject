# GettingAndCleaningData-CourseProject
Course project for Coursera class Getting and Cleaning Data.

## Contents
* CodeBook.md (describes the variables, the data, and any transformations or work performed to produce the final tidy data set)
* README.md (this file)
* run_analysis.R

## run_analysis.R
### Description
This script is part of the course project for Getting and Cleaning Data.

The purpose of this project is to demonstrate an ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

### Input
This script assumes the subdirectory "UCI HAR Dataset" containing the Samsung data is in the working directory.  The Samsung data can be downloaded from [this link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

### Output
Output is a tidy data set named *tidyData.txt* written to the working directory.  The script creates the output data set with write.table() using row.name=FALSE.  The output data set contains the average of each variable for each activity and each subject.  Contents of the output data set are described more fully in CodeBook.md.

### Usage
run_analysis.R is an R script.  It can be run by pointing to it with the R source() function.

### Dependencies
run_analysis.R loads dplyr and uses the following dplyr functions
* select
* group_by
* summarize_each

### Details
run_analysis.R performns the following steps:
1. Read all necessary data from the Samsung data subdirectory
2. Add columns identifying activity and subject to measurement data
3. Merge the training and the test sets to create one data set
4. Extract only the measurements on the mean and standard deviation for each measurement
5. Appropriately label the data set with descriptive variable names
6. Use descriptive activity names to name the activities in the data set
7. Create a second, independent tidy data set with the average of each variable for each activity and each subject
8. Save data set as a txt file named *tidyData.txt* created with write.table() using row.name=FALSE