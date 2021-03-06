# Getting-and-Cleaning-Data-Course-Week4 Assignment
Young Lee (Student) - January 2017
###
*** Purpose:  Demonstrate ability to collect, work with, and clean a data set. ***   
###
Initial data for the project:  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip   
Data Description:  
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  

Instruction for the project:  
1. Merges the training and the test sets to create one data set.  
2. Extracts only the measurements on the mean and standard deviation for each measurement.  
3. Uses descriptive activity names to name the activities in the data set.  
4. Appropriately labels the data set with descriptive variable names.  
5. From the data set in step 4, creates a second independent tidy set with the average of each variable for each activity and each subject.  
#Getting and Cleaning Data
###
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
###
# For each record, it is provided with:
1. Triaxial acceleration from the accelerometer (total accleration) and the estimated body acceleration.
2. Triaxial angular velocity from the gyroscope.
3. A 561-feature vector with time and frequency domain variables.
4. Its activity label.
5. An identifier of the subject who carried out the experiment.

# The repository includes the following files:
1. 'README.md'
2. 'CodeBook.md'
3. 'run_analysis.R'
