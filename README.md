The solution to the project includes the following files in addition to this README. 

- Codebook.md : Contains description of the variables of the output datasets of step 4 and 5. 
- step5.txt : Tidy dataset corresponding to step 5 of the project 
- run_analysis.R : R script that can be used to reproduce results


Overview

1. run_analysis.R

This script implements the solution to the project. It can be run to reproduce the results.  

It assumes that the Unzipped UCI HAR Dataset folder is in the same folder as itself. 

It uses the dplyr package.

It produces two dataframes:
(i) All_data : This is a single data frame containing the results of steps 1-4 of the project.
(ii) Average_data: This is a second tidy data frame, corresponding to step 5. This is converted to the text file step5.txt. 

This is the flow of the script:

I. 
(a) Reads the features.txt file, and extracts the feature names. 
(b) It then selects those features that use involve a mean or standard deviation calculation by using the grep function. This results in 79 features being selected. Both the feature indices and names are stored. For more details on the features, consult the Codebook. 

II. 
(a) Reads the X_train.txt, y_train.txt into dataframes. Selects only the 79 columns of X_train from step I. Renames these columns of X_train using the names stored in step I. Names the column of y_train "Activity". 
(b) Reads the subject_train.txt file into a dataframe. This dataframe consists of the subject ID corresponding to each row of X_train. Renames the column of this dataframe as "Subject_ID"
(c) Reads the X_test.txt, y_test.txt into dataframes. Selects only the 79 columns of X_train from step I.Renames these columns of X_test using the names stored in step I. Names the column of y_test "Activity". 
(d) Reads the subject_test.txt file into a dataframe. This dataframe consists of the subject ID corresponding to each row of X_test. Renames the column of this dataframe as "Subject_ID"
(e) Creates a single training dataframe, by combinining the subject dataframe (1 column), X dataframe (79 columns) and y dataframe (1 column) (in that order) into a single dataframe, using cbind().
(f) Creates a single testing dataframe in a similar manner. 
(g) Combines the training and testing dataframes into a single dataframe called All_data using rbind()


III. 
At this stage there is a single combined data set, All_data. The column names are appropriate. The values of the "Activity" are integers taking values from 1 to 6. We can convert these into more descriptive values as follows:
(a) Get the descriptive activity names from the activity_labels.txt file.
(b) Convert the numeric activty values of the "Activity" column to a descriptive activity name using lapply().


IV. 
The All_data dataset now contains the single dataset with steps 1-4 of the project instructions taken care of. The next step is to create the second dataset which consists of the average of each variable using for each activity and each subjecy. 

This is accomplished by using the group_by and summarise_each functions of the dplyr package. Since there are 30 subjects and 6 activities, this creates a dataframe with 30*6 = 180 rows. Each row contains the average of the 79 selected features for a given (subject,activity) combination. 
