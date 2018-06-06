# course3Project
Getting and Cleaning Data / week4 Project submission

### Getting and Cleaning Data / week4 Project submission

===============================================================================

The script called run_analysis.R does the following:

1 - Downloading and unzipping the datasets file in the workinbg directory
  This script requires the availability of the zip file in the working directory.
  Please set the name of the file in the script before running.
2 - Merges the training and the test sets to create one data set.
3 - Extracts only the measurements on the mean and standard deviation for each measurement.
4 - Uses descriptive activity names to name the activities in the data set
5 - Appropriately labels the data set with descriptive variable names.
6 - Creates a tidy data set with the average of each variable for each activity and each subject.
7 - Save the output data set in a text file called "my_tidy_df.txt"

===============================================================================

Variables code book:
===
The original data set is from : Human Activity Recognition Using Smartphones Dataset Version 1.0
===
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

===
** activities labels
"activity"

** subject ids
"subject"

** all the remaining variables are average values for each activity and for each subject 
drived from the original dat set 

## please refer to the original data set for a better comprehension of the features.

"timeBodyAccelerometer_mean_X"
"timeBodyAccelerometer_mean_Y"
"timeBodyAccelerometer_mean_Z"                     
"timeBodyAccelerometer_std_X"                     
"timeBodyAccelerometer_std_Y"
"timeBodyAccelerometer_std_Z"
"timeGravityAccelerometer_mean_X"
"timeGravityAccelerometer_mean_Y"
"timeGravityAccelerometer_mean_Z"
"timeGravityAccelerometer_std_X"
"timeGravityAccelerometer_std_Y"
"timeGravityAccelerometer_std_Z"
"timeBodyAccelerometerJerk_mean_X"
"timeBodyAccelerometerJerk_mean_Y"
"timeBodyAccelerometerJerk_mean_Z"                 
"timeBodyAccelerometerJerk_std_X"                 
"timeBodyAccelerometerJerk_std_Y"                  
"timeBodyAccelerometerJerk_std_Z"                 
"timeBodyGyroscope_mean_X"                         
"timeBodyGyroscope_mean_Y"                        
"timeBodyGyroscope_mean_Z"                         
"timeBodyGyroscope_std_X"                         
"timeBodyGyroscope_std_Y"                          
"timeBodyGyroscope_std_Z"                         
"timeBodyGyroscopeJerk_mean_X"                     
"timeBodyGyroscopeJerk_mean_Y"                    
"timeBodyGyroscopeJerk_mean_Z"                     
"timeBodyGyroscopeJerk_std_X"                     
"timeBodyGyroscopeJerk_std_Y"                      
"timeBodyGyroscopeJerk_std_Z"                     
"timeBodyAccelerometerMagnitude_mean"              
"timeBodyAccelerometerMagnitude_std"              
"timeGravityAccelerometerMagnitude_mean"           
"timeGravityAccelerometerMagnitude_std"           
"timeBodyAccelerometerJerkMagnitude_mean"          
"timeBodyAccelerometerJerkMagnitude_std"          
"timeBodyGyroscopeMagnitude_mean"                  
"timeBodyGyroscopeMagnitude_std"                  
"timeBodyGyroscopeJerkMagnitude_mean"              
"timeBodyGyroscopeJerkMagnitude_std"              
"frequencyBodyAccelerometer_mean_X"                
"frequencyBodyAccelerometer_mean_Y"               
"frequencyBodyAccelerometer_mean_Z"                
"frequencyBodyAccelerometer_std_X"                
"frequencyBodyAccelerometer_std_Y"                 
"frequencyBodyAccelerometer_std_Z"                
"frequencyBodyAccelerometer_meanFreq_X"            
"frequencyBodyAccelerometer_meanFreq_Y"           
"frequencyBodyAccelerometer_meanFreq_Z"            
"frequencyBodyAccelerometerJerk_mean_X"           
"frequencyBodyAccelerometerJerk_mean_Y"            
"frequencyBodyAccelerometerJerk_mean_Z"           
"frequencyBodyAccelerometerJerk_std_X"             
"frequencyBodyAccelerometerJerk_std_Y"            
"frequencyBodyAccelerometerJerk_std_Z"             
"frequencyBodyAccelerometerJerk_meanFreq_X"       
"frequencyBodyAccelerometerJerk_meanFreq_Y"        
"frequencyBodyAccelerometerJerk_meanFreq_Z"       
"frequencyBodyGyroscope_mean_X"                    
"frequencyBodyGyroscope_mean_Y"                   
"frequencyBodyGyroscope_mean_Z"                    
"frequencyBodyGyroscope_std_X"                    
"frequencyBodyGyroscope_std_Y"                     
"frequencyBodyGyroscope_std_Z"                    
"frequencyBodyGyroscope_meanFreq_X"                
"frequencyBodyGyroscope_meanFreq_Y"               
"frequencyBodyGyroscope_meanFreq_Z"                
"frequencyBodyAccelerometerMagnitude_mean"        
"frequencyBodyAccelerometerMagnitude_std"          
"frequencyBodyAccelerometerMagnitude_meanFreq"    
"frequencyBodyAccelerometerJerkMagnitude_mean"     
"frequencyBodyAccelerometerJerkMagnitude_std"     
"frequencyBodyAccelerometerJerkMagnitude_meanFreq" 
"frequencyBodyGyroscopeMagnitude_mean"            
"frequencyBodyGyroscopeMagnitude_std"              
"frequencyBodyGyroscopeMagnitude_meanFreq"        
"frequencyBodyGyroscopeJerkMagnitude_mean"         
"frequencyBodyGyroscopeJerkMagnitude_std"         
"frequencyBodyGyroscopeJerkMagnitude_meanFreq"   
