The variables of "MyTidyData2" are as follows:

1 "subject_id" = An identifier of the subject who carried out the experiment (30 subjects in total, each within an age bracket of 19-48 years), who wore a smartphone (Samsung Galaxy S II) on the waist whose embedded accelerometer and gyroscope captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 

2 "activity" = One of the six activities performed for the tests (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING)

3 The remaining 66 variables (the features listed below) are taken from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Notes: 
The total acceleration was orignially recorded in standard gravity units 'g', the body acceleration signals were obtained by subtracting the gravity from the total acceleration, and the angular velocity vector was measured by the gyroscope in radians/second. HOWEVER, all the features were then normalized and bounded within [-1,1], meaning the values for these variables in the dataset are unitless.

The set of variables that were estimated from the signals above which are included in the present dataset are: 

mean(): Mean value
std(): Standard deviation

The values in columns 3 through 68 of the dataset are means of all the recorded measurements of the indicated variable for a given SUBJECT performing the indicated ACTIVITY. Therefore, the dataset contains 180 rows (30 subjects x 6 activities).

Source: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones