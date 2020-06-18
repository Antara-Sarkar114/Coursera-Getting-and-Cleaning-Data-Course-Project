Variables in Tidy Dataset 1
---------------------------

The features selected for this database come from the accelerometer(Acc)
and gyroscope(Gyro) 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These
time domain signals (prefix ‘t’ to denote time) were captured at a
constant rate of 50 Hz. Then they were filtered using a median filter
and a 3rd order low pass Butterworth filter with a corner frequency of
20 Hz to remove noise. Similarly, the acceleration signal was then
separated into body and gravity acceleration signals (tBodyAcc-XYZ and
tGravityAcc-XYZ) using another low pass Butterworth filter with a corner
frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were
derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and
tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional
signals were calculated using the Euclidean norm (tBodyAccMag,
tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these
signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ,
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the ‘f’ to
indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for
each pattern:  
‘-XYZ’ is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ tGravityAcc-XYZ tBodyAccJerk-XYZ tBodyGyro-XYZ
tBodyGyroJerk-XYZ tBodyAccMag tGravityAccMag tBodyAccJerkMag
tBodyGyroMag tBodyGyroJerkMag fBodyAcc-XYZ fBodyAccJerk-XYZ
fBodyGyro-XYZ fBodyAccMag fBodyAccJerkMag fBodyGyroMag fBodyGyroJerkMag

The set of variables estimated and used are: mean(): Mean value std():
Standard deviation

After tidying the data the variables used are as follows: \[1\]
“TimeBodyAccelerometer-mean()-X”  
\[2\] “TimeBodyAccelerometer-mean()-Y”  
\[3\] “TimeBodyAccelerometer-mean()-Z”  
\[4\] “TimeBodyAccelerometer-standard deviation()-X”  
\[5\] “TimeBodyAccelerometer-standard deviation()-Y”  
\[6\] “TimeBodyAccelerometer-standard deviation()-Z”  
\[7\] “TimeGravityAccelerometer-mean()-X”  
\[8\] “TimeGravityAccelerometer-mean()-Y”  
\[9\] “TimeGravityAccelerometer-mean()-Z”  
\[10\] “TimeGravityAccelerometer-standard deviation()-X”  
\[11\] “TimeGravityAccelerometer-standard deviation()-Y”  
\[12\] “TimeGravityAccelerometer-standard deviation()-Z”  
\[13\] “TimeBodyAccelerometerJerk-mean()-X”  
\[14\] “TimeBodyAccelerometerJerk-mean()-Y”  
\[15\] “TimeBodyAccelerometerJerk-mean()-Z”  
\[16\] “TimeBodyAccelerometerJerk-standard deviation()-X”  
\[17\] “TimeBodyAccelerometerJerk-standard deviation()-Y”  
\[18\] “TimeBodyAccelerometerJerk-standard deviation()-Z”  
\[19\] “TimeBodyGyro-mean()-X”  
\[20\] “TimeBodyGyro-mean()-Y”  
\[21\] “TimeBodyGyro-mean()-Z”  
\[22\] “TimeBodyGyro-standard deviation()-X”  
\[23\] “TimeBodyGyro-standard deviation()-Y”  
\[24\] “TimeBodyGyro-standard deviation()-Z”  
\[25\] “TimeBodyGyroJerk-mean()-X”  
\[26\] “TimeBodyGyroJerk-mean()-Y”  
\[27\] “TimeBodyGyroJerk-mean()-Z”  
\[28\] “TimeBodyGyroJerk-standard deviation()-X”  
\[29\] “TimeBodyGyroJerk-standard deviation()-Y”  
\[30\] “TimeBodyGyroJerk-standard deviation()-Z”  
\[31\] “TimeBodyAccelerometerMagnitude-mean()”  
\[32\] “TimeBodyAccelerometerMagnitude-standard deviation()”  
\[33\] “TimeGravityAccelerometerMagnitude-mean()”  
\[34\] “TimeGravityAccelerometerMagnitude-standard deviation()”  
\[35\] “TimeBodyAccelerometerJerkMagnitude-mean()”  
\[36\] “TimeBodyAccelerometerJerkMagnitude-standard deviation()”  
\[37\] “TimeBodyGyroMagnitude-mean()”  
\[38\] “TimeBodyGyroMagnitude-standard deviation()”  
\[39\] “TimeBodyGyroJerkMagnitude-mean()”  
\[40\] “TimeBodyGyroJerkMagnitude-standard deviation()”  
\[41\] “FrequencyBodyAccelerometer-mean()-X”  
\[42\] “FrequencyBodyAccelerometer-mean()-Y”  
\[43\] “FrequencyBodyAccelerometer-mean()-Z”  
\[44\] “FrequencyBodyAccelerometer-standard deviation()-X”  
\[45\] “FrequencyBodyAccelerometer-standard deviation()-Y”  
\[46\] “FrequencyBodyAccelerometer-standard deviation()-Z”  
\[47\] “FrequencyBodyAccelerometerJerk-mean()-X”  
\[48\] “FrequencyBodyAccelerometerJerk-mean()-Y”  
\[49\] “FrequencyBodyAccelerometerJerk-mean()-Z”  
\[50\] “FrequencyBodyAccelerometerJerk-standard deviation()-X”  
\[51\] “FrequencyBodyAccelerometerJerk-standard deviation()-Y”  
\[52\] “FrequencyBodyAccelerometerJerk-standard deviation()-Z”  
\[53\] “FrequencyBodyGyro-mean()-X”  
\[54\] “FrequencyBodyGyro-mean()-Y”  
\[55\] “FrequencyBodyGyro-mean()-Z”  
\[56\] “FrequencyBodyGyro-standard deviation()-X”  
\[57\] “FrequencyBodyGyro-standard deviation()-Y”  
\[58\] “FrequencyBodyGyro-standard deviation()-Z”  
\[59\] “FrequencyBodyAccelerometerMagnitude-mean()”  
\[60\] “FrequencyBodyAccelerometerMagnitude-standard deviation()”  
\[61\] “FrequencyBodyBodyAccelerometerJerkMagnitude-mean()”  
\[62\] “FrequencyBodyBodyAccelerometerJerkMagnitude-standard
deviation()” \[63\] “FrequencyBodyBodyGyroMagnitude-mean()”  
\[64\] “FrequencyBodyBodyGyroMagnitude-standard deviation()”  
\[65\] “FrequencyBodyBodyGyroJerkMagnitude-mean()”  
\[66\] “FrequencyBodyBodyGyroJerkMagnitude-standard deviation()”  
\[67\] “activity”  
\[68\] “subject\_num”

Variables in Tidy Dataset 2
---------------------------

In the second tidy data set, the above variables in tidy dataset 1 were
summarised over 30 subjects/ participants and 6 activities, namely 1
WALKING 2 WALKING\_UPSTAIRS 3 WALKING\_DOWNSTAIRS 4 SITTING 5 STANDING 6
LAYING

The code used to do the analysis is explained step wise, in detail in
the README file.
