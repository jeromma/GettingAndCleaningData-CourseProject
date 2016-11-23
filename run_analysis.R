library(dplyr)
setwd("UCI HAR Dataset")
features <- read.table("features.txt")
y_train <- read.table("train/y_train.txt")
names(y_train) <- "activityKey"
X_train <- read.table("train/X_train.txt")
names(X_train) <- features[[2]]
subject_train <- read.table("train/subject_train.txt")
names(subject_train) <- "subject"
wide_train <- cbind(cbind(y_train, subject_train), X_train)

y_test <- read.table("test/y_test.txt")
names(y_test) <- "activityKey"
X_test <- read.table("test/X_test.txt")
names(X_test) <- features[[2]]
subject_test <- read.table("test/subject_test.txt")
names(subject_test) <- "subject"
wide_test <- cbind(cbind(y_test, subject_test), X_test)

allData <- rbind(wide_train, wide_test)

meanFinder <- grepl("mean()", names(allData), fixed=TRUE)
stdFinder <- grepl("std()", names(allData), fixed=TRUE)
myColumns <- c(1, 2, which(meanFinder | stdFinder))
narrowData <- allData[myColumns]

activity_labels <- read.table("activity_labels.txt")
names(activity_labels) <- c("activityKey", "activity")

activityData <- merge(activity_labels, narrowData, by="activityKey")

activityData <- select(activityData, -activityKey)

groupData <- group_by(narrowData, activityKey, subject)
tidyData <- summarize_each(groupData, funs(mean))


