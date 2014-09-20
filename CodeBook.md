### Codebook

# The Data
The data represent observations taken by the Accelerometer and the Gyroscope of a phone held by each of 30 test subjects while performing each of six activities (walking, laying, sitting, standing, walking downstairs and walking upstairs). Each observation is relative to a subject and an activity and measures one of 66 variables related to the accelearation measures taken by the device. The data was extracted from a different data set and consolidated as follows.

# Data Transformation Process
The original data came in two unlabelled data sets in the same format, the training data set and the test data set. The description of the columns came separately, as did the respective test subjects and activity codes relative to each observation. Finally another set binds each activity code to the descriptive activity name.

Step zero in the process is to load in memory all the data, namely the two data sets, the relative sets of subjects and activities, and the variable names.

The first step is to bind each dataset with its respective subject vector and activity vector, therefore binding each observation to a subject and a performed activity.

Then the two sets, traing and tests are concatenated, by simply appending the rows of one to those of the other (rbind).

Third each column is given a name: "Subject" and "ActivityCode" for the subject number column and the activity code column, and the respective labels provided by the original dataset for all other variables.

This allows in a subsequent step to reduce the dataset to the measurements that are required, by selecting only the variables that include "mean()" or "std()" in their name.

The resulting dataset is combined with the activity labels by using the activity codes in a way that the activity names replace activity codes, as per tidy dataset requirements.

The sixth step groups the observations by Subject and by activity and calculates the mean of each observed variable.

Finally the name of each variable is replaced by a more clear and understandable description as per following paragraphs.

The resulting dataset is then saved to a text file.

# Description of Variables (if not self explanatory)
The test subject is represented by a number from 1 to 30. The activity performed can be one of LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS. The rest of the variables are self explanatory. The variables with a (t) are in the domain of time, while variables with a (f) are in the domain of frequency.

# List of Variables
Subject
Activity
Body Acceleration mean on the X axis (t)
Body Acceleration mean on the Y axis (t)
Body Acceleration mean on the Z axis (t)
Gravity Acceleration mean on the X axis (t)
Gravity Acceleration mean on the Y axis (t)
Gravity Acceleration mean on the Z axis (t)
Body Acceleration Jerk mean on the X axis (t)
Body Acceleration Jerk mean on the Y axis (t)
Body Acceleration Jerk mean on the Z axis (t)
Body Gyroscope Acceleration mean on the X axis (t)
Body Gyroscope Acceleration mean on the Y axis (t)
Body Gyroscope Acceleration mean on the Z axis (t)
Body Gyroscope Acceleration Jerk mean on the X axis (t)
Body Gyroscope Acceleration Jerk mean on the Y axis (t)
Body Gyroscope Acceleration Jerk mean on the Z axis (t)
Body Acceleration Magnitide mean (t)
Gravity Acceleration Magnitide mean (t)
Body Acceleration Jerk Magnitide mean (t)
Body Gyroscope Acceleration Magnitide mean (t)
Body Gyroscope Acceleration Jerk Magnitide mean (t)
Body Acceleration mean on the X axis (f)
Body Acceleration mean on the Y axis (f)
Body Acceleration mean on the Z axis (f)
Body Acceleration Jerkmean on the X axis (f)
Body Acceleration Jerkmean on the Y axis (f)
Body Acceleration Jerkmean on the Z axis (f)
Body Gyroscope Acceleration mean on the X axis (f)
Body Gyroscope Acceleration mean on the Y axis (f)
Body Gyroscope Acceleration mean on the Z axis (f)
Body Acceleration Magnitide mean (f)
Body Acceleration Jerk Magnitide mean (f)
Body Gyroscope Acceleration Magnitide mean (f)
Body Gyroscope Acceleration Jerk Magnitide mean (f)
Body Acceleration standard deviation on the X axis (t)
Body Acceleration standard deviation on the Y axis (t)
Body Acceleration standard deviation on the Z axis (t)
Gravity Acceleration standard deviation on the X axis (t)
Gravity Acceleration standard deviation on the Y axis (t)
Gravity Acceleration standard deviation on the Z axis (t)
Body Acceleration Jerkstandard deviation on the X axis (t)
Body Acceleration Jerkstandard deviation on the Y axis (t)
Body Acceleration Jerkstandard deviation on the Z axis (t)
Body Gyroscope Acceleration standard deviation on the X axis (t)
Body Gyroscope Acceleration standard deviation on the Y axis (t)
Body Gyroscope Acceleration standard deviation on the Z axis (t)
Body Gyroscope Acceleration Jerkstandard deviation on the X axis (t)
Body Gyroscope Acceleration Jerkstandard deviation on the Y axis (t)
Body Gyroscope Acceleration Jerkstandard deviation on the Z axis (t)
Body Acceleration Magnitide standard deviation (t)
Gravity Acceleration Magnitide standard deviation (t)
Body Acceleration Jerk Magnitide standard deviation (t)
Body Gyroscope Acceleration Magnitide standard deviation (t)
Body Gyroscope Acceleration Jerk Magnitide standard deviation (t)
Body Acceleration standard deviation on the X axis (f)
Body Acceleration standard deviation on the Y axis (f)
Body Acceleration standard deviation on the Z axis (f)
Body Acceleration Jerkstandard deviation on the X axis (f)
Body Acceleration Jerkstandard deviation on the Y axis (f)
Body Acceleration Jerkstandard deviation on the Z axis (f)
Body Gyroscope Acceleration standard deviation on the X axis (f)
Body Gyroscope Acceleration standard deviation on the Y axis (f)
Body Gyroscope Acceleration standard deviation on the Z axis (f)
Body Acceleration Magnitide standard deviation (f)
Body Acceleration Jerk Magnitide standard deviation (f)
Body Gyroscope Acceleration Magnitide standard deviation (f)
Body Gyroscope Acceleration Jerk Magnitide standard deviation (f)