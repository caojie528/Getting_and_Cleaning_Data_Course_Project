# CodeBook for tidydata.txt

Author: Jie Cao

Date: Nov 2, 2020

## Description

Information about variables, the data, and any transformations or work that has been done to create the tidydata.txt.

## Data source

The raw data is from [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). It is a human activity recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

The original dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. For both training and test sets, the dataset contains 561 features, a class label (one of six activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING), and a subject ID. 

## Overiew of the obtained tidydata

The obtained `tidydata` has 180 observations and 68 variables. The obatined dataset does not contain any missing value. The variable list, together with each variable's description, is provided in the **Variable list** section below. 

## Data cleaning and transformation work

Some data cleaning and transformation work has been done to obtain the `tidydata` dataset, including:

1. Merges the training and the test sets to create one data set.

The training data has 7352 observations from 9 subjects, and the test data has 2947 observations from 21 subjects. By combining training and test sets together, we obtained a combined dataset with 10299 observations from all 30 subjects. 

2. Extracts only the measurements on the mean and standard deviation for each measurement.

Both the training and test sets have 561 features extracted from the wearable devices. Among all these features, 66 features are the measurements on the mean and standard deviation for corresponding measurement. Thus, together with subject ID and activity label, the obtained combined dataset has 68 variables.

3. Uses descriptive activity names to name the activities in the data set

The activity is recorded in dataset as class using numbers from 1 to 6, corresponding to six different activites (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). Therefoe, the `activity` variable in the final dataset is converted to a factor variable, using these six labels to describe the meaning of each class.

4. Appropriately labels the data set with descriptive variable names.

The name of each variable in the obtained dataset is cleaned and labeled to have only letters (upper or lower) and underscore("_") in variable names. That is to say, parentheses ("()") and spaces are removed from variable names, dashes ("-") are replaced by underscores ("_"). Additionally, due to the transformation done in step 5, each measurement is summarized to an average for each activity and each subject, thus, a suffix "_mean" has been added to each feature to indicate that the value represents the mean value at the given group level. 

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The final `tidydata` summarizes these mean/std measurements to an average level for each activity + subject group. Thus, the final dataset contains one row per each (activity + subject) group, giving us a total of 180 observations and 68 variables. Among all 68 variables, 66 are mean of selected features with suffix "_mean", one records subject ID, and 
the rest one stores the descriptive activity names.

## Variable list

| Index | Variable Name                  | Variable type | Variable values                                                                                                     |
|-------|--------------------------------|---------------|---------------------------------------------------------------------------------------------------------------------|
| 1     | activity                       | Factor        | 1: WALKING<br>  2: WALKING_UPSTAIRS<br>  3: WALKING_DOWNSTAIRS<br>   4: SITTING<br>  5: STANDING<br>  6: LAYING<br> |
| 2     | subject                        | Int           | 1 - 30                                                                                                              |
| 3     | tBodyAcc_mean_X_mean           | Num           |                                                                                                                     |
| 4     | tBodyAcc_mean_Y_mean           | Num           |                                                                                                                     |
| 5     | tBodyAcc_mean_Z_mean           | Num           |                                                                                                                     |
| 6     | tBodyAcc_std_X_mean            | Num           |                                                                                                                     |
| 7     | tBodyAcc_std_Y_mean            | Num           |                                                                                                                     |
| 8     | tBodyAcc_std_Z_mean            | Num           |                                                                                                                     |
| 9     | tGravityAcc_mean_X_mean        | Num           |                                                                                                                     |
| 10    | tGravityAcc_mean_Y_mean        | Num           |                                                                                                                     |
| 11    | tGravityAcc_mean_Z_mean        | Num           |                                                                                                                     |
| 12    | tGravityAcc_std_X_mean         | Num           |                                                                                                                     |
| 13    | tGravityAcc_std_Y_mean         | Num           |                                                                                                                     |
| 14    | tGravityAcc_std_Z_mean         | Num           |                                                                                                                     |
| 15    | tBodyAccJerk_mean_X_mean       | Num           |                                                                                                                     |
| 16    | tBodyAccJerk_mean_Y_mean       | Num           |                                                                                                                     |
| 17    | tBodyAccJerk_mean_Z_mean       | Num           |                                                                                                                     |
| 18    | tBodyAccJerk_std_X_mean        | Num           |                                                                                                                     |
| 19    | tBodyAccJerk_std_Y_mean        | Num           |                                                                                                                     |
| 20    | tBodyAccJerk_std_Z_mean        | Num           |                                                                                                                     |
| 21    | tBodyGyro_mean_X_mean          | Num           |                                                                                                                     |
| 22    | tBodyGyro_mean_Y_mean          | Num           |                                                                                                                     |
| 23    | tBodyGyro_mean_Z_mean          | Num           |                                                                                                                     |
| 24    | tBodyGyro_std_X_mean           | Num           |                                                                                                                     |
| 25    | tBodyGyro_std_Y_mean           | Num           |                                                                                                                     |
| 26    | tBodyGyro_std_Z_mean           | Num           |                                                                                                                     |
| 27    | tBodyGyroJerk_mean_X_mean      | Num           |                                                                                                                     |
| 28    | tBodyGyroJerk_mean_Y_mean      | Num           |                                                                                                                     |
| 29    | tBodyGyroJerk_mean_Z_mean      | Num           |                                                                                                                     |
| 30    | tBodyGyroJerk_std_X_mean       | Num           |                                                                                                                     |
| 31    | tBodyGyroJerk_std_Y_mean       | Num           |                                                                                                                     |
| 32    | tBodyGyroJerk_std_Z_mean       | Num           |                                                                                                                     |
| 33    | tBodyAccMag_mean_mean          | Num           |                                                                                                                     |
| 34    | tBodyAccMag_std_mean           | Num           |                                                                                                                     |
| 35    | tGravityAccMag_mean_mean       | Num           |                                                                                                                     |
| 36    | tGravityAccMag_std_mean        | Num           |                                                                                                                     |
| 37    | tBodyAccJerkMag_mean_mean      | Num           |                                                                                                                     |
| 38    | tBodyAccJerkMag_std_mean       | Num           |                                                                                                                     |
| 39    | tBodyGyroMag_mean_mean         | Num           |                                                                                                                     |
| 40    | tBodyGyroMag_std_mean          | Num           |                                                                                                                     |
| 41    | tBodyGyroJerkMag_mean_mean     | Num           |                                                                                                                     |
| 42    | tBodyGyroJerkMag_std_mean      | Num           |                                                                                                                     |
| 43    | fBodyAcc_mean_X_mean           | Num           |                                                                                                                     |
| 44    | fBodyAcc_mean_Y_mean           | Num           |                                                                                                                     |
| 45    | fBodyAcc_mean_Z_mean           | Num           |                                                                                                                     |
| 46    | fBodyAcc_std_X_mean            | Num           |                                                                                                                     |
| 47    | fBodyAcc_std_Y_mean            | Num           |                                                                                                                     |
| 48    | fBodyAcc_std_Z_mean            | Num           |                                                                                                                     |
| 49    | fBodyAccJerk_mean_X_mean       | Num           |                                                                                                                     |
| 50    | fBodyAccJerk_mean_Y_mean       | Num           |                                                                                                                     |
| 51    | fBodyAccJerk_mean_Z_mean       | Num           |                                                                                                                     |
| 52    | fBodyAccJerk_std_X_mean        | Num           |                                                                                                                     |
| 53    | fBodyAccJerk_std_Y_mean        | Num           |                                                                                                                     |
| 54    | fBodyAccJerk_std_Z_mean        | Num           |                                                                                                                     |
| 55    | fBodyGyro_mean_X_mean          | Num           |                                                                                                                     |
| 56    | fBodyGyro_mean_Y_mean          | Num           |                                                                                                                     |
| 57    | fBodyGyro_mean_Z_mean          | Num           |                                                                                                                     |
| 58    | fBodyGyro_std_X_mean           | Num           |                                                                                                                     |
| 59    | fBodyGyro_std_Y_mean           | Num           |                                                                                                                     |
| 60    | fBodyGyro_std_Z_mean           | Num           |                                                                                                                     |
| 61    | fBodyAccMag_mean_mean          | Num           |                                                                                                                     |
| 62    | fBodyAccMag_std_mean           | Num           |                                                                                                                     |
| 63    | fBodyBodyAccJerkMag_mean_mean  | Num           |                                                                                                                     |
| 64    | fBodyBodyAccJerkMag_std_mean   | Num           |                                                                                                                     |
| 65    | fBodyBodyGyroMag_mean_mean     | Num           |                                                                                                                     |
| 66    | fBodyBodyGyroMag_std_mean      | Num           |                                                                                                                     |
| 67    | fBodyBodyGyroJerkMag_mean_mean | Num           |                                                                                                                     |
| 68    | fBodyBodyGyroJerkMag_std_mean  | Num           |                                                                                                                     |
