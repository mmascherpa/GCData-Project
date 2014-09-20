# You should create one R script called run_analysis.R that does the following. 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# ---- Load necessary libraries
library(dplyr)

# ---- Load data files
activity_labels<-read.table(file = "./UCI HAR Dataset/activity_labels.txt")
features<-read.table(file = "./UCI HAR Dataset/features.txt")

# -- Train files
X_train<-read.table(file = "./UCI HAR Dataset/train/X_train.txt")
y_train<-read.table(file = "./UCI HAR Dataset/train/y_train.txt")
subject_train<-read.table(file = "./UCI HAR Dataset/train/subject_train.txt")

# -- Test files
X_test<-read.table(file = "./UCI HAR Dataset/test/X_test.txt")
y_test<-read.table(file = "./UCI HAR Dataset/test/y_test.txt")
subject_test<-read.table(file = "./UCI HAR Dataset/test/subject_test.txt")

# ---- Bind each dataset to respective subject and activity vector
trainset<-cbind(X_train,subject_train,y_train)
testset<-cbind(X_test,subject_test,y_test)

# 1. Merges the training and the test sets to create one data set.
dataset<-rbind(trainset,testset)

# 4. Appropriately labels the data set with descriptive variable names. 
colnames(dataset)<-c(as.character(features[,2]),"Subject","ActivityCode")

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
meanstdds<-select(dataset,contains("mean\\(\\)",ignore.case=FALSE),contains("std\\(\\)",ignore.case=FALSE),contains("Subject",ignore.case=FALSE),contains("Activity",ignore.case=FALSE))

# Name activity lables columns to match the dataset columns and match the names
colnames(activity_labels)<-c("ActivityCode","Activity")
finalds<-merge(meanstdds,activity_labels,by="ActivityCode")
finalds<-select(finalds,-ActivityCode)

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
newset<-finalds %>%
  group_by(Subject, Activity) %>%
  summarise_each(funs(mean))

# 3. Uses descriptive activity names to name the activities in the data set
colnames(newset)<-c("Subject",
                     "Activity",
                     "Body Acceleration mean on the X axis (t)",
                     "Body Acceleration mean on the Y axis (t)",
                     "Body Acceleration mean on the Z axis (t)",
                     "Gravity Acceleration mean on the X axis (t)",
                     "Gravity Acceleration mean on the Y axis (t)",
                     "Gravity Acceleration mean on the Z axis (t)",
                     "Body Acceleration Jerk mean on the X axis (t)",
                     "Body Acceleration Jerk mean on the Y axis (t)",
                     "Body Acceleration Jerk mean on the Z axis (t)",
                     "Body Gyroscope Acceleration mean on the X axis (t)",
                     "Body Gyroscope Acceleration mean on the Y axis (t)",
                     "Body Gyroscope Acceleration mean on the Z axis (t)",
                     "Body Gyroscope Acceleration Jerkmean on the X axis (t)",
                     "Body Gyroscope Acceleration Jerkmean on the Y axis (t)",
                     "Body Gyroscope Acceleration Jerkmean on the Z axis (t)",
                     "Body Acceleration Magnitide mean (t)",
                     "Gravity Acceleration Magnitide mean (t)",
                     "Body Acceleration Jerk Magnitide mean (t)",
                     "Body Gyroscope Acceleration Magnitide mean (t)",
                     "Body Gyroscope Acceleration Jerk Magnitide mean (t)",
                     "Body Acceleration mean on the X axis (f)",
                     "Body Acceleration mean on the Y axis (f)",
                     "Body Acceleration mean on the Z axis (f)",
                     "Body Acceleration Jerk mean on the X axis (f)",
                     "Body Acceleration Jerk mean on the Y axis (f)",
                     "Body Acceleration Jerk mean on the Z axis (f)",
                     "Body Gyroscope Acceleration mean on the X axis (f)",
                     "Body Gyroscope Acceleration mean on the Y axis (f)",
                     "Body Gyroscope Acceleration mean on the Z axis (f)",
                     "Body Acceleration Magnitide mean (f)",
                     "Body Acceleration Jerk Magnitide mean (f)",
                     "Body Gyroscope Acceleration Magnitide mean (f)",
                     "Body Gyroscope Acceleration Jerk Magnitide mean (f)",
                     "Body Acceleration standard deviation on the X axis (t)",
                     "Body Acceleration standard deviation on the Y axis (t)",
                     "Body Acceleration standard deviation on the Z axis (t)",
                     "Gravity Acceleration standard deviation on the X axis (t)",
                     "Gravity Acceleration standard deviation on the Y axis (t)",
                     "Gravity Acceleration standard deviation on the Z axis (t)",
                     "Body Acceleration Jerkstandard deviation on the X axis (t)",
                     "Body Acceleration Jerkstandard deviation on the Y axis (t)",
                     "Body Acceleration Jerkstandard deviation on the Z axis (t)",
                     "Body Gyroscope Acceleration standard deviation on the X axis (t)",
                     "Body Gyroscope Acceleration standard deviation on the Y axis (t)",
                     "Body Gyroscope Acceleration standard deviation on the Z axis (t)",
                     "Body Gyroscope Acceleration Jerkstandard deviation on the X axis (t)",
                     "Body Gyroscope Acceleration Jerkstandard deviation on the Y axis (t)",
                     "Body Gyroscope Acceleration Jerkstandard deviation on the Z axis (t)",
                     "Body Acceleration Magnitide standard deviation (t)",
                     "Gravity Acceleration Magnitide standard deviation (t)",
                     "Body Acceleration Jerk Magnitide standard deviation (t)",
                     "Body Gyroscope Acceleration Magnitide standard deviation (t)",
                     "Body Gyroscope Acceleration Jerk Magnitide standard deviation (t)",
                     "Body Acceleration standard deviation on the X axis (f)",
                     "Body Acceleration standard deviation on the Y axis (f)",
                     "Body Acceleration standard deviation on the Z axis (f)",
                     "Body Acceleration Jerkstandard deviation on the X axis (f)",
                     "Body Acceleration Jerkstandard deviation on the Y axis (f)",
                     "Body Acceleration Jerkstandard deviation on the Z axis (f)",
                     "Body Gyroscope Acceleration standard deviation on the X axis (f)",
                     "Body Gyroscope Acceleration standard deviation on the Y axis (f)",
                     "Body Gyroscope Acceleration standard deviation on the Z axis (f)",
                     "Body Acceleration Magnitide standard deviation (f)",
                     "Body Acceleration Jerk Magnitide standard deviation (f)",
                     "Body Gyroscope Acceleration Magnitide standard deviation (f)",
                     "Body Gyroscope Acceleration Jerk Magnitide standard deviation (f)")



# ---- Save the new tidy data set
write.table(newset,"result-dataset.txt",row.names=FALSE)

