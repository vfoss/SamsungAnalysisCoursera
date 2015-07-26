---
title: "README"
author: "Vicki"
date: "24 de julio de 2015"
---

This R script assumes that the working directory has been set to "UCI HAR Dataset", a directory that can be downloaded from the Course Project page of the "Getting and Cleaning Data" Coursera course (or by using the following URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The only non-base R package that needs to be pre-installed for this script to function correctly is the package "reshape2". 

The R script does the following: 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Finally, creates a second, independent tidy data set with the average of each variable for each activity and each subject.





