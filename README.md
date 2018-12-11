---
# "Getting and Cleaning Data Course Project: Code Book"

---
## run_analysis.R

This is the Code Book document for the Getting and Cleanning Data coursera course. There is only one code file used to clean up the data required for this excercise. The script run_analysis.R script performs the following tasks:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Logical Process

1. Load the activity labels and the data column names
2. Merges the training and test datasets with their corresponding activities
3. Uses descriptive activity names to name the activities in the data set
4. Load all test and train data and merges it with the Activities data
5. Keeps only mean and std variables
6. Extracts only the measurements on the mean and standard deviation for each measurement.
7. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
8. Writes the data to a new txt files in the same working directory. The new file name is tidy_data.txt

## Dependencies

Script assumes the data.table and plyr are installed locally.


## The Results

The script will generate a new txt file called tidy_data.txt. The file will contain the with the average of each variable for each activity and each subject.
