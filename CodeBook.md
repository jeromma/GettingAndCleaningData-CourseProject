# tidyData.txt
tidyData.txt is a space-delimited file with variable names in the first row.  It can be read with the following command:  
read.table("tidyData.txt", header=TRUE, check.names=FALSE)  
which returns a data.frame with 180 observations of 68 variables.

Following is a list and description of the variables:  
 $ activity                   : Factor w/ 6 levels  
   LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS
  
 $ subject                    : int 1:30  
 $ tBodyAcc-mean()-X          : num normalized and bounded within [-1,1]  
 $ tBodyAcc-mean()-Y          : num normalized and bounded within [-1,1]  
 $ tBodyAcc-mean()-Z          : num normalized and bounded within [-1,1]  
 $ tBodyAcc-std()-X           : num normalized and bounded within [-1,1]  
 $ tBodyAcc-std()-Y           : num normalized and bounded within [-1,1]  
 $ tBodyAcc-std()-Z           : num normalized and bounded within [-1,1]  
 $ tGravityAcc-mean()-X       : num normalized and bounded within [-1,1]  
 $ tGravityAcc-mean()-Y       : num normalized and bounded within [-1,1]  
 $ tGravityAcc-mean()-Z       : num normalized and bounded within [-1,1]  
 $ tGravityAcc-std()-X        : num normalized and bounded within [-1,1]  
 $ tGravityAcc-std()-Y        : num normalized and bounded within [-1,1]  
 $ tGravityAcc-std()-Z        : num normalized and bounded within [-1,1]  
 $ tBodyAccJerk-mean()-X      : num normalized and bounded within [-1,1]  
 $ tBodyAccJerk-mean()-Y      : num normalized and bounded within [-1,1]  
 $ tBodyAccJerk-mean()-Z      : num normalized and bounded within [-1,1]  
 $ tBodyAccJerk-std()-X       : num normalized and bounded within [-1,1]  
 $ tBodyAccJerk-std()-Y       : num normalized and bounded within [-1,1]  
 $ tBodyAccJerk-std()-Z       : num normalized and bounded within [-1,1]  
 $ tBodyGyro-mean()-X         : num normalized and bounded within [-1,1]  
 $ tBodyGyro-mean()-Y         : num normalized and bounded within [-1,1]  
 $ tBodyGyro-mean()-Z         : num normalized and bounded within [-1,1]  
 $ tBodyGyro-std()-X          : num normalized and bounded within [-1,1]  
 $ tBodyGyro-std()-Y          : num normalized and bounded within [-1,1]  
 $ tBodyGyro-std()-Z          : num normalized and bounded within [-1,1]  
 $ tBodyGyroJerk-mean()-X     : num normalized and bounded within [-1,1]  
 $ tBodyGyroJerk-mean()-Y     : num normalized and bounded within [-1,1]  
 $ tBodyGyroJerk-mean()-Z     : num normalized and bounded within [-1,1]  
 $ tBodyGyroJerk-std()-X      : num normalized and bounded within [-1,1]  
 $ tBodyGyroJerk-std()-Y      : num normalized and bounded within [-1,1]  
 $ tBodyGyroJerk-std()-Z      : num normalized and bounded within [-1,1]  
 $ tBodyAccMag-mean()         : num normalized and bounded within [-1,1]  
 $ tBodyAccMag-std()          : num normalized and bounded within [-1,1]  
 $ tGravityAccMag-mean()      : num normalized and bounded within [-1,1]  
 $ tGravityAccMag-std()       : num normalized and bounded within [-1,1]  
 $ tBodyAccJerkMag-mean()     : num normalized and bounded within [-1,1]  
 $ tBodyAccJerkMag-std()      : num normalized and bounded within [-1,1]  
 $ tBodyGyroMag-mean()        : num normalized and bounded within [-1,1]  
 $ tBodyGyroMag-std()         : num normalized and bounded within [-1,1]  
 $ tBodyGyroJerkMag-mean()    : num normalized and bounded within [-1,1]  
 $ tBodyGyroJerkMag-std()     : num normalized and bounded within [-1,1]  
 $ fBodyAcc-mean()-X          : num normalized and bounded within [-1,1]  
 $ fBodyAcc-mean()-Y          : num normalized and bounded within [-1,1]  
 $ fBodyAcc-mean()-Z          : num normalized and bounded within [-1,1]  
 $ fBodyAcc-std()-X           : num normalized and bounded within [-1,1]  
 $ fBodyAcc-std()-Y           : num normalized and bounded within [-1,1]  
 $ fBodyAcc-std()-Z           : num normalized and bounded within [-1,1]  
 $ fBodyAccJerk-mean()-X      : num normalized and bounded within [-1,1]  
 $ fBodyAccJerk-mean()-Y      : num normalized and bounded within [-1,1]  
 $ fBodyAccJerk-mean()-Z      : num normalized and bounded within [-1,1]  
 $ fBodyAccJerk-std()-X       : num normalized and bounded within [-1,1]  
 $ fBodyAccJerk-std()-Y       : num normalized and bounded within [-1,1]  
 $ fBodyAccJerk-std()-Z       : num normalized and bounded within [-1,1]  
 $ fBodyGyro-mean()-X         : num normalized and bounded within [-1,1]  
 $ fBodyGyro-mean()-Y         : num normalized and bounded within [-1,1]  
 $ fBodyGyro-mean()-Z         : num normalized and bounded within [-1,1]  
 $ fBodyGyro-std()-X          : num normalized and bounded within [-1,1]  
 $ fBodyGyro-std()-Y          : num normalized and bounded within [-1,1]  
 $ fBodyGyro-std()-Z          : num normalized and bounded within [-1,1]  
 $ fBodyAccMag-mean()         : num normalized and bounded within [-1,1]  
 $ fBodyAccMag-std()          : num normalized and bounded within [-1,1]  
 $ fBodyBodyAccJerkMag-mean() : num normalized and bounded within [-1,1]  
 $ fBodyBodyAccJerkMag-std()  : num normalized and bounded within [-1,1]  
 $ fBodyBodyGyroMag-mean()    : num normalized and bounded within [-1,1]  
 $ fBodyBodyGyroMag-std()     : num normalized and bounded within [-1,1]  
 $ fBodyBodyGyroJerkMag-mean(): num normalized and bounded within [-1,1]  
 $ fBodyBodyGyroJerkMag-std() : num normalized and bounded within [-1,1]  

This data set is derived from the Samsung data found in the "UCI HAR Dataset" directory, which can be downloaded from [this link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).  For further information on the Samsung data, see README.txt and features_info.txt in the "UCI HAR Dataset" directory.

The Samsung training and the test sets were merged to create one data set.

The features in tidyData.txt are only the mean and standard deviation reported for each measurement found in the original data set. These are 66 of the original 561 features.

For these 66 features, tidyData.txt contains the average of each variable for each activity and each subject.  This is a total of 180 observations (6 activities for each of 30 subjects).