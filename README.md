# GCData-Project
==============
Getting and Cleaning Data course project

The script run_analysis.R completes the task defined in the project description included at the bottom of the README.

## Instructions to execute the script
1. Save the script run_analysis.R in an empty directory
2. Save the data file "getdata-projectfiles-UCI HAR Dataset.zip" in the same directory
3. Ensure a new directory called "UCI HAR Dataset" is created and contains all the data files necessary (see below for a full list of the files needed)
4. Execute R or RStudio
5. Set the working directory to the directory that was just created (`setwd("/path/to/dir/")`)
6. Execute the script (`source("./run_analysis.R")`)
7. A file named `result-dataset.txt` containing the tidy data set will be created in the same directory

Note: some warning messages about masked obects may appear, but can be safely ignored.

## List of data files used by the script including relative path
* ./UCI HAR Dataset/activity_labels.txt
* ./UCI HAR Dataset/features.txt
* ./UCI HAR Dataset/train/X_train.txt
* ./UCI HAR Dataset/train/y_train.txt
* ./UCI HAR Dataset/train/subject_train.txt
* ./UCI HAR Dataset/test/X_test.txt
* ./UCI HAR Dataset/test/y_test.txt
* ./UCI HAR Dataset/test/subject_test.txt

### Getting and Cleaning Data Course Project
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

 You should create one R script called run_analysis.R that does the following. 
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
