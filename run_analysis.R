# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement
# 3. Uses descriptive activity names to name the activities in the data set.
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second independent tidy set with the average of each variable for each activity and each subject.
setwd("/Users/davidlee/UCI HAR Dataset")

#activity_labels.txt   [6 different types of activities]
#1 WALKING
#2 WALKING_UPSTAIRS
#3 WALKING_DOWNSTAIRS
#4 SITTING
#5 STANDING
#6 LAYING 
activities_6 <- read.csv("activity_labels.txt", sep = "", header = FALSE)

##features.txt   [561 feature vectors]
features_561 <- read.csv("features.txt", sep = "", header = FALSE)[2]

#Load Sets
testSets <- read.csv("test/X_test.txt", sep = "", header = FALSE)
trainSets <- read.csv("train/X_train.txt", sep = "", header = FALSE)
combinedSet <- rbind(testSets,trainSets)        

#Load Moves
testMoves <- read.csv("test/Y_test.txt", sep = "", header = FALSE)
trainMoves <- read.csv("train/Y_train.txt", sep = "", header = FALSE)
combinedMoves <- rbind(testMoves, trainMoves)

#Load PersonID [30 Person total; 9 Person in testPerson; 21 Person in trainPerson]
testPerson <- read.csv("test/subject_test.txt", sep = "", header = FALSE)
trainPerson <- read.csv("train/subject_train.txt", sep = "", header = FALSE)
combinedPerson <- rbind(testPerson, trainPerson)

#Show Measurements for standard deviation & averages
names(combinedSet) <- features_561[ ,1]
combinedSet <- combinedSet[ grepl("std|mean", names(combinedSet), ignore.case = TRUE) ] 
combinedMoves <- merge(combinedMoves, activities_6, by.x = "V1", by.y = "V1")[2]
combinedSet <- cbind(combinedPerson, combinedMoves, combinedSet)
#Descriptive variable name column
names(combinedSet)[1:2] <- c("PersonID", "Types of Activities")
#Transformed raw data into tidy data set "combinedSet"
