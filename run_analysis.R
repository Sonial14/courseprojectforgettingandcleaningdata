################################################
## course project for gettingandcleaningdata
################################################

##testing group
setwd("~/Desktop/Coursera/gettingandcleaningdata/wk1/data2/UCI HAR Dataset")

testactlabel <- read.table("./test/y_test.txt",sep="\t")
testactivitydata<- read.csv("./test/X_test.csv",head=F)
subjecttest <- read.table("./test/subject_test.txt",sep ="\t")
testactivity <- cbind(subjecttest,testactlabel,testactivitydata)


##training group

trainactlabel <- read.table("./train/y_train.txt",sep="\t")
trainactivitydata<- read.table("./train/X_train.txt")
subjecttrain <- read.table("./train/subject_train.txt",sep ="\t")
trainactivity <- cbind(subjecttrain,trainactlabel,trainactivitydata)


# step 1 : to combine data from two groups
activity <- rbind(testactivity,trainactivity)

# step 4 : to get descriptive names for variables
setwd("~/Desktop/Coursera/gettingandcleaningdata/wk1/data2/UCI HAR Dataset")
features <- read.table("features.txt")
feature4data<- as.vector(features[,2])
colnames(activity) <- c("ID","activityClassification",feature4data)

# step 3: to get descriptive names for activity
activityname <- read.table("activity_labels.txt")
activityname4data<- as.vector(activityname[,2])
datafinal <- data.frame()
for (i in 1:6) {
   datasubset <- subset(activity,activityClassification == i)
   datasubset$Activity <- rep(activityname4data[i],nrow(datasubset))
   datafinal <- rbind(datafinal,datasubset)
}

# step 2 :to extract only the measurements on the mean and standard deviation for each measurement.
dataActivity <- datafinal[,-c(1:2,564)]
first2col <- datafinal[,c(1,564)]

Activity<- dataActivity[,c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,266:271,345:350,424:429,503:504,516:517,529:530,542:543)]

Activitydata<- cbind(first2col,Activity)


### step 5: a 2nd dataset includes the average of each variable for each activity and each subject
library(reshape2)
names <- colnames(Activitydata)
Feature <- names[-(1:2)]
mean <- data.frame()
for (i in 1:30) {
   
       datasubset <- subset(Activitydata, Activitydata$ID == i)
       activitysubset <- split(datasubset,datasubset$Activity)
       meanvalue <- data.frame(sapply(activitysubset,function(x) colMeans(x[,3:68])))
       meanvaluemelt<- melt(meanvalue)
       colnames(meanvaluemelt) <- c("Activity","Mean")
       Subject <- rep(i, ncol(meanvaluemelt))
       meanvalue2 <- cbind(Subject,Feature,meanvaluemelt)
       
      mean <- rbind(mean,meanvalue2)
    }







