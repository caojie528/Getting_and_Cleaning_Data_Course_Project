# Getting and Cleaning Data - Course Project
# Author: Jie Cao
# Last updated on: Nov 2, 2020

# This R script performs following: 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation 
#    for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, 
#    independent tidy data set with the average of each variable 
#    for each activity and each subject.

# Load packages
library(dplyr)
library(tidyr)

# Read training data
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subj_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# Read test data
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subj_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Read feature names
feature_names <- read.table("./UCI HAR Dataset/features.txt", 
                       col.names = c("index", "featurename"))
selected_feats <- grep("(mean|std)\\(\\)", feature_names$featurename)
feature_names$featurename <- gsub("[()]", "", feature_names$featurename)
feature_names$featurename <- gsub("-", "_", feature_names$featurename)

# Read activity labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",
                              col.names = c("class", "activity"))

# Merges training and test, selected wanted features
train <- cbind(subj_train, Y_train, X_train[, selected_feats])
test <- cbind(subj_test, Y_test, X_test[, selected_feats])

# Add descriptive names for features
combined <- rbind(train, test)
names(combined) <- c("subject", "activity", 
                     as.character(feature_names$featurename[selected_feats]))

# Use descriptive names for activity (class)
combined$activity <- factor(combined$activity, 
                            levels = activity_labels$class, 
                            labels = activity_labels$activity)

# Create a tidy data with the average of each variable 
# for each activity and each subject
avg_feats <- combined %>% 
  group_by(activity, subject) %>% 
  summarise_all(list(mean = mean))

# Save the generated tidy data
write.table(avg_feats, file = "./UCI HAR Dataset/tidydata.txt", row.names = FALSE)
