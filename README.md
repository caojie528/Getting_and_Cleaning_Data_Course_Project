# Getting_and_Cleaning_Data_Course_Project
Repository for Coursera course "Getting and Cleaning Data" course project

Author: Jie Cao

Date: Nov 2, 2020

## Description

The repository is used to complete the course project assigned by the Coursera course "Getting and Cleaning Data" Week 4.

Execution of the analysis code in this repository will complete following tasks, as instructed in the course page:

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement.

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive variable names.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## File description

[README.md](https://github.com/caojie528/Getting_and_Cleaning_Data_Course_Project/blob/main/README.md): Overview of the repository, description of each file, instruction for running the R script to generate the tidy data.

[run_analysis.R](https://github.com/caojie528/Getting_and_Cleaning_Data_Course_Project/blob/main/run_analysis.R): The R script that can be used to generate the tidy dataset (`tidydata.txt`) as instructed in the course project. 

[CodeBook.md](https://github.com/caojie528/Getting_and_Cleaning_Data_Course_Project/blob/main/CodeBook.md): Description of the original dataset, data cleaning and transfomation steps done, overview of the obtained tidy data, and variable list of the obtained tidy data. 

[tidydata.txt](https://github.com/caojie528/Getting_and_Cleaning_Data_Course_Project/blob/main/tidydata.txt): The final tidy data obtained as a result of executing the `run_analysis.R` script. The dataset has column names, but no row names. 

## Instruction

1. Download [the signal data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). The data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. For more information about the data, please go to [UCI data repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

2. Move the zipped file to your desired working directory and unzip the downloaded file. 

3. Save the R script [run_analysis.R](https://github.com/caojie528/Getting_and_Cleaning_Data_Course_Project/blob/main/run_analysis.R) in your desired working directory, execute it.

4. The executed code should generate a tidydata.txt file in your working directory, and the file should be same as the one provided in this repository.

## Software
R 3.6.0
