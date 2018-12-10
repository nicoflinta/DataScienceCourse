## SET WORKING DIRECTORY AND DOWNLOAD THE DATA 
setwd("D:/SVN - BIDs/branches/sandpit/flintan/Data Science Coursera/Getting and Cleaning Data Course Project/")
library("data.table")
library("reshape2")
library(plyr)

# Load the activity labels and the data column names
features <- read.table("./UCI HAR Dataset/features.txt")[, 2]

# Uses descriptive activity names to name the activities in the data set
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")[, 2]

# Load all test and train data and merges it with the Activities data
# Keeps only mean and std variables
# Extracts only the measurements on the mean and standard deviation for each measurement.
{
    X_test.txt <- read.table("./UCI HAR Dataset/test/X_test.txt")
    names(X_test.txt) <- features
    X_test.txt <- X_test.txt[, grepl("mean|std", names(X_test.txt))]
    y_test.txt <- read.table("./UCI HAR Dataset/test/y_test.txt")
    y_test.txt[, 2] = activity_labels[y_test.txt[, 1]]
    names(y_test.txt) <- c("ActivitiesID", "Activity")
    y_test.subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
    names(y_test.subject) <- c("SubjectID")
    test_all <- cbind(X_test.txt, y_test.subject, y_test.txt)

    X_train.txt <- read.table("./UCI HAR Dataset/train/X_train.txt")
    names(X_train.txt) <- features
    X_train.txt <- X_train.txt[, grepl("mean|std", names(X_train.txt))]
    y_train.txt <- read.table("./UCI HAR Dataset/train/y_train.txt")
    y_train.txt[, 2] = activity_labels[y_train.txt[, 1]]
    names(y_train.txt) <- c("ActivitiesID", "Activity")
    y_train.subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
    names(y_train.subject) <- c("SubjectID")
    train_all <- cbind(X_train.txt, y_train.subject, y_train.txt)
}
## Merges the training and the test sets to create one data set.
combined_data <- rbind(train_all, test_all)


# From the data set in step 4, creates a second, independent tidy data set with the 
# average of each variable for each activity and each subject.
data_average_tidy <- ddply(combined_data, .(SubjectID, ActivitiesID), numcolwise(mean))
write.table(data_average_tidy, file = "./tidy_data.txt", row.name = FALSE)