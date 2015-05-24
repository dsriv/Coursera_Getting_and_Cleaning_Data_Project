As discussed in the README, there are 2 data frames produced by the run_analysis.R script. 
The first dataframe consists of steps 1-4 of the project. 
The second dataframe is derived from the first, corresponding to step 5 of the project, and is written to a text file, step5.txt

Apart from the Subject_ID and Activity columns, both contain the following 79 variables. 
Acceleration based measurements are in g's, normalized to [-1,1]
Gyroscope based measurements are in rad/sec, normalized to [-1,1]
Frequency domain features are the outputs of a Fast Fourier Transform, normalized to [-1,1]
 
The following are the 79 columns, in order:
 
tBodyAcc-mean()-X      
tBodyAcc-mean()-Y             
tBodyAcc-mean()-Z              
tBodyAcc-std()-X           
tBodyAcc-std()-Y          
tBodyAcc-std()-Z              
tGravityAcc-mean()-X           
tGravityAcc-mean()-Y           
tGravityAcc-mean()-Z           
tGravityAcc-std()-X           
tGravityAcc-std()-Y          
tGravityAcc-std()-Z         
tBodyAccJerk-mean()-X          
tBodyAccJerk-mean()-Y          
tBodyAccJerk-mean()-Z          
tBodyAccJerk-std()-X       
tBodyAccJerk-std()-Y         
tBodyAccJerk-std()-Z       
tBodyGyro-mean()-X            
tBodyGyro-mean()-Y           
tBodyGyro-mean()-Z           
tBodyGyro-std()-X              
tBodyGyro-std()-Y            
tBodyGyro-std()-Z              
tBodyGyroJerk-mean()-X    
tBodyGyroJerk-mean()-Y   
tBodyGyroJerk-mean()-Z        
tBodyGyroJerk-std()-X          
tBodyGyroJerk-std()-Y      
tBodyGyroJerk-std()-Z          
tBodyAccMag-mean()            
tBodyAccMag-std()              
tGravityAccMag-mean()          
tGravityAccMag-std()         
tBodyAccJerkMag-mean()      
tBodyAccJerkMag-std()         
tBodyGyroMag-mean()        
tBodyGyroMag-std()             
tBodyGyroJerkMag-mean()      
tBodyGyroJerkMag-std()         
fBodyAcc-mean()-X          
fBodyAcc-mean()-Y             
fBodyAcc-mean()-Z             
fBodyAcc-std()-X             
fBodyAcc-std()-Y         
fBodyAcc-std()-Z            
fBodyAcc-meanFreq()-X          
fBodyAcc-meanFreq()-Y          
fBodyAcc-meanFreq()-Z         
fBodyAccJerk-mean()-X        
fBodyAccJerk-mean()-Y        
fBodyAccJerk-mean()-Z         
fBodyAccJerk-std()-X           
fBodyAccJerk-std()-Y           
fBodyAccJerk-std()-Z      
fBodyAccJerk-meanFreq()-X     
fBodyAccJerk-meanFreq()-Y   
fBodyAccJerk-meanFreq()-Z     
fBodyGyro-mean()-X          
fBodyGyro-mean()-Y             
fBodyGyro-mean()-Z           
fBodyGyro-std()-X              
fBodyGyro-std()-Y          
fBodyGyro-std()-Z           
fBodyGyro-meanFreq()-X        
fBodyGyro-meanFreq()-Y       
fBodyGyro-meanFreq()-Z        
fBodyAccMag-mean()      
fBodyAccMag-std()            
fBodyAccMag-meanFreq()         
fBodyBodyAccJerkMag-mean()     
fBodyBodyAccJerkMag-std()   
fBodyBodyAccJerkMag-meanFreq() 
fBodyBodyGyroMag-mean()        
fBodyBodyGyroMag-std()         
fBodyBodyGyroMag-meanFreq()  
fBodyBodyGyroJerkMag-mean()   
fBodyBodyGyroJerkMag-std()    
fBodyBodyGyroJerkMag-meanFreq()
