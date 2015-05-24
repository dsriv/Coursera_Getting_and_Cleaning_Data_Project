library(dplyr)

#Make sure to set the working directory to this script's location
#It is assumed that the data folder UCI HAR Dataset is present in the working directory as well. 

#I. Get mean and standard deviation related features

features <- read.table("./UCI HAR Dataset/features.txt", header=FALSE)

#Feature names
feature_names <- as.character(features$V2)

#Get the column numbers of all mean related features
mean_features <- grep("mean", feature_names)

#Get the column numbers of all std dev. related features
std_features <- grep("std", feature_names)

#Sort the selected columns to keep the same order as the original data sets. 
mean_std_features <- sort(c(mean_features,std_features))


#II. Merge Test and Train Data Sets

#(a) Read in all data
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE)
names(X_train) <- feature_names

y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE)
names(y_train) <- c("Activity")

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE)
names(subject_train) <- c("Subject_ID")


X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE)
names(X_test) <- feature_names

y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE)
names(y_test) <- c("Activity")

subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE)
names(subject_test) <- c("Subject_ID")


#(b) select only Mean & Std. Deviation related columns
X_train <- X_train[,mean_std_features]
X_test <- X_test[,mean_std_features]


#(c) Create a single Training frame, and a single Testing frame
Training_data <- cbind(subject_train, X_train, y_train)
Testing_data <- cbind(subject_test,X_test,y_test)

#(d) Merge into a single data frame
All_data <- rbind(Training_data, Testing_data) 


#III. Add descriptive activity names
activities <- read.table("./UCI HAR Dataset/activity_labels.txt", header=FALSE)
activity_int_list <- activities$V1
activity_factor_list <- activities$V2

rename_activity <- function(x) {
  result <- activity_factor_list[x]
  return(result)
}

All_data["Activity"] <- lapply(All_data["Activity"], rename_activity)


#IV Convert Subject ID to Factor. This tidy dataset is the culmination of steps 1-4 of instructions. 
All_data["Subject_ID"] <- lapply(All_data["Subject_ID"], as.factor)


#V. Create second tidy data set
Average_data <- group_by(All_data,Subject_ID,Activity) %>% summarise_each(funs(mean))
write.table(Average_data, file = "./step5.txt", row.name=FALSE)
