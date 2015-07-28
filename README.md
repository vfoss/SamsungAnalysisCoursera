---
title: "README.md"
author: "vfoss"
date: "24 de julio de 2015"
---

This R script "run_analysis.R" assumes that the working directory has been set to "UCI HAR Dataset", a directory that can be downloaded from the Course Project page of the "Getting and Cleaning Data" Coursera course (or by using the following URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The only non-base R package that needs to be pre-installed for this script to function correctly is the package "reshape2". 

The R script does the following: 

1. Sets the features labels as the column names for the training and testing data
2. Attaches the subject id numbers and activity labels to both data sets
3. Merges the training and the test sets to create one data set.
4. Retains only the measurements on the mean and standard deviation for each features variable.
5. Creates a second, independent tidy data set ("MyTidyData2") with the average of each variable for each activity and each subject.

Note that the values in columns 3 through 68 of the data set are means of all the recorded measurements of the indicated variable for a given SUBJECT performing the indicated ACTIVITY. Therefore, the dataset contains 180 rows (30 subjects x 6 activities).

For further information on the variables in the final data set, see "CodeBook.md"