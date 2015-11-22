This code book describes the variables, the data, and any transformations performed to clean up the data
When ran, run_analysis.R performs analysis for Companies like Fitbit, Nike, and Jawbone that are racing to develop the most advanced algorithms to attract new users. 

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 

The downloaded file gives access to the following files
features.txt - Contains names of the 561 features.
activity_labels.txt - Contains names and IDs for each of the 6 activities
test/subject_test.txt - Contains a vector of 2947 integers, denoting the ID of the volunteer related to each of the observations in X_test.txt 
test/y_test.txt - Contains a vector of 2947 integers, denoting the ID of the activity related to each of the observations in X_test.txt
test/X_test.txt - Contains 2947 observations of the 561 features, for 9 of the 30 volunteers.
train/subject_train.txt- Contains a vector of 7352 integers, denoting the ID of the volunteer related to each of the observations in X_train.txt
train/y_train.txt - Contains a vector of 7352 integers, denoting the ID of the activity related to each of the observations in X_train.txt
train/X_train.txt - Contains 7352 observations of the 561 features, for 21 of the 30 volunteers.

The X_test and X_train data set, will only filter columns that have mean or std in the column name
the test and train data will be merged together.
The activity label numbers provided by y_test and y_train will be replaced by the activity name is provided by the activity_labels.txt file.

The execution of this process is as follows:

1) Download and unzip file(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) to working directory 
2) Load the reshape2 package to allow the use of the melt function in step 5 
3) Merges the training and the test sets to create one data set. 
4) Extracts only the measurements on the mean and standard deviation for each measurement. 
5)Uses descriptive activity names to name the activities in the data set 
6)Appropriately labels the data set with descriptive variable names. 
7) From the data set in step 6, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
8) Create resulting file as a txt file created with write.table() using row.name=FALSE.
Cleaned up column names is provided by data by features.txt file.


