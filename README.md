courseprojectforgettingandcleaningdata
======================================
{\rtf1\ansi\ansicpg1252\cocoartf1138\cocoasubrtf510
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural

\f0\fs24 \cf0 ## Getting and Cleaning Data Course Project readme file\
\
* Data were downloaded to a local file and the files from both testing group and training group were reading into R with read.table function. The labels and the subjects of the data were integrated with the data by cbind function. \
\
* To combine the data from the testing group and the training group, rbind function was used to combine them.\
\
* To make the new file more readable, the descriptive names for each variable were introduced into the new file by adding column names.\
\
* Next step was to get the descriptive names for each activity. To achieve that, a for loop function was used to replaced the type of each activity one by one.\
\
* To extract only the measurements on the mean and standard deviation for each measurement, the corresponding columns were subset.\
\
* To generate a tidy data, in which the mean value of each combination of subject,feature and activity was exhibited, a for loop function to loop for each subject was performed.  In each loop, the data of this subject were subset and split by the type of activity. The mean value was calculated and the data was transformed with melt function.\
\
\
\
\
\
\
}