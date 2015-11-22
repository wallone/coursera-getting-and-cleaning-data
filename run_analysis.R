#load package for melt function
library(reshape2)

#1) Merges the training and the test sets to create one data set.

sub_train_df <- read.table("/Coursera/UCI HAR Dataset/train/subject_train.txt")
sub_test_df  <- read.table("/Coursera/UCI HAR Dataset/test/subject_test.txt")
X_train <- read.table("/Coursera/UCI HAR Dataset/train/X_train.txt")
X_test <- read.table("/Coursera/UCI HAR Dataset/test/X_test.txt")
y_train <- read.table("/Coursera/UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("/Coursera/UCI HAR Dataset/test/y_test.txt")

names(sub_train_df) <- "subjectID"
names(sub_test_df) <- "subjectID"

features <- read.table("/Coursera/UCI HAR Dataset/features.txt")
names(X_train) <- features$V2
names(X_test) <- features$V2

names(y_train) <- "activity"
names(y_test) <- "activity"

train_combined <- cbind(sub_train_df, y_train, X_train)
test_combined <- cbind(sub_test_df, y_test, X_test)
combined <- rbind(train_combined, test_combined)



#2)Extracts only the measurements on the mean and standard deviation for each measurement. 
mean_std <- grepl("(mean|std)\\(\\)", names(combined))
mean_std[1:2] <- TRUE
combined <- combined[, mean_std]

yMerged <- rbind(y_train, y_test)[, 1]

#3)Uses descriptive activity names to name the activities in the data set
activityNames <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")

#4)Appropriately labels the data set with descriptive variable names. 
activities <- activityNames[yMerged]

#5)From the data set in step 4, creates a second, independent tidy data set with the average 
#of each variable for each activity and each subject.
melted <- melt(combined, id=c("subjectID","activity"))
tidy <- dcast(melted, subjectID+activities ~ variable, mean)
write.table(tidy, "tidy.txt", row.names = FALSE)
