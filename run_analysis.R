## setwd("UCI HAR Dataset")
## install.packages("reshape2")

X_test = read.table('test/X_test.txt')        ## load all needed tables
X_train = read.table('train/X_train.txt')
y_test = read.table('test/y_test.txt')
y_train = read.table('train/y_train.txt')
features = read.table('features.txt')
subject_train = read.table('train/subject_train.txt')
subject_test = read.table('test/subject_test.txt')
activity_labels = read.table('activity_labels.txt')

names(X_train)<-features[,2] ## set the features labels as the column names for
                             ## the training and testing data
names(X_test)<-features[,2]


X_train<-cbind(subject_train,X_train) ## attach the subject id numbers to data
names(X_train)[1]<-"subject_id"
X_test<-cbind(subject_test,X_test)
names(X_test)[1]<-"subject_id"

X_test<-cbind(y_test,X_test)   ## attach the activity labels to the data
names(X_test)[1]<-"activity"
y_test2<-as.factor(y_test[[1]]) 
levels(y_test2)<-as.character(activity_labels[[2]])
X_test[1]<-y_test2

X_train<-cbind(y_train,X_train)
names(X_train)[1]<-"activity"
y_train2<-as.factor(y_train[[1]])
levels(y_train2)<-as.character(activity_labels[[2]])
X_train[1]<-y_train2

TestTrainAllData<-rbind(X_test,X_train) #merges the test and training sets

## use only the mean and standard deviation data; remove other columns
## including the "meanFreq" data
feature_mean<-grepl("mean()",as.character(features[[2]]))
feature_std<-grepl("std()",as.character(features[[2]]))
feature_mean_std<-feature_mean|feature_std
cols_to_use<-c(1,1,feature_mean_std)  ## keep the subject id and activity label
cols_to_use<-as.logical(cols_to_use)
AllData2<-TestTrainAllData[cols_to_use]
AllData3<-AllData2[!grepl("meanFreq",names(AllData2))]

library(reshape2)
MyTidyData<-melt(AllData3,id=c("activity","subject_id"),
                 measure.vars=names(AllData3[,3:68]))
## creates tidy data set

MyTidyData2<-dcast(MyTidyData,subject_id+activity~variable,mean)

View(MyTidyData2)

##write.table(MyTidyData2, file = "MyTidyData2.txt", row.names=FALSE)