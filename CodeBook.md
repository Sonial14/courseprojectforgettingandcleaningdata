## DATA DICTIONARY  -- HUMAN ACTIVITY RECOGNITION USING SMARTPHONES

Subject   Integer
       * 1.. 30 Unique identifier assigned to each volunteers

Feature   Factor w/ 66 levels  
       * 17 signals were analyzed for each subject, including : 
          tBodyAcc;
          tGravityAcc;
          tBodyAccJerk;
          tBodyGyro;
          tBodyGyroJerk;
          tBodyAccMag;
          tGravityAccMag;
          tBodyAccJerkMag;
          tBodyGyroMag;
          tBodyGyroJerkMag;
          fBodyAcc;
          fBodyAccJerk;
          fBodyGyro;
          fBodyAccMag;
          fBodyAccJerkMag;
          fBodyGyroMag;
          fBodyGyroJerkMag;
        '_mean' is used to denote Mean value;
        '_std' is used to denote standard deviation; 
        '_XYZ' is used to denote 3- axial signal in the X, Y and Z directions.

Activity   Factor w/ 6 levels
       * 6 activities were analyzed for each subject, including :
          WALKING;
          WALKING_UPSTAIRS;
          WALKING_DOWNSTAIRS;
          SITTING;
          STANDING;
          LAYING;

Mean   Number
      * The mean value of each combination of subject,feature and activity.

