# coursera-getting-and-cleaning-data
Coursera Getting and Cleaning Data project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The steps taken to complete this task are as follows
1) Download and unzip file(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) to working directory
2) Load the reshape2 package to allow the use of the melt function in step 5
3) Merges the training and the test sets to create one data set.
4) Extracts only the measurements on the mean and standard deviation for each measurement. 
5)Uses descriptive activity names to name the activities in the data set
6)Appropriately labels the data set with descriptive variable names. 
7) From the data set in step 6, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
8) Create resulting file as a txt file created with write.table() using row.name=FALSE.
