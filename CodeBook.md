---
# "Getting and Cleaning Data Course Project: Code Book"

The dataset contains a total of 10299 observations. These are distributed amongst 30 different users performing 6 different activities.
---
## Variables
1. 'features': 561 features.
2. 'activity_labels': list with all 6 different activities.

## Datasets
1. 'X_test.txt': Main Test dataset with 2947 observations and 79 variables
2. 'y_test.txt': Main Test dataset with 2947 observations and 2 variables containing all Avtivitiy types and IDs
3. 'y_test.subject':  Volunteer dataset which relates to each observation in the test dataset.
4. 'test_all': data frame with all the variables described above.
 
The training dataset contains 7352 observations and follows the same principles described above. The variable names are:
* 'X_train.txt' 
* 'y_train.txt' 
* 'y_train.subject' 
* 'train_all' 

## Tidy datasets and results
1. 'combined_data': combines the 'train_all' and 'test_all' data frames
2. 'data_average_tidy': calculates the average for each observation for each participant and activity type.
