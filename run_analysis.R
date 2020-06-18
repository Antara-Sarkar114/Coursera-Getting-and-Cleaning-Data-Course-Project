#Loading the required r packages
library(dplyr)
library(readr)
library(tidyr)
#creating character vectors of file extensions for files to be used
data_file<-c("./X_test.txt","./X_train.txt")#data file extentions
act_label_file<-c("./y_test.txt","./y_train.txt")#activity label files
subject_file<-c("./subject_test.txt","./subject_train.txt")#subject number file
#creating a function to read multiple files together and give a merged 
#dataframe as output
read_mult_files<-function(file_ext){
  a<-list.dirs()
  b<-grep("(test|train)$",a)
  files<-as.list(paste0(a[b],file_ext))
  df<- lapply(files,function(i){
    read.table(i)
  })
  df<-rbind_all(df)
}
#1.Merges the training and the test sets to create one data set.
merged_set<-read_mult_files(data_file)
#Reading column names and assigning them as variable names to merged dataframe
var_names<-read_lines("./UCI HAR Dataset/features.txt")
colnames(merged_set)<-var_names
#2.Extracts only the measurements on the mean and standard deviation for each measurement.
df_1<-select(merged_set,matches("-mean()|-std()"),-matches("meanFreq()"))
#3.Uses descriptive activity names to name the activities in the data set
Activity<-read_mult_files(act_label_file)#reading test and training activity files
#reading the activity label file and trimming to consider only text
label<- readLines("./UCI HAR Dataset/activity_labels.txt") %>%
  strsplit(" ") %>%
  sapply(function(i){i[2]})
#adding the activity column to merged dataframe and converting to factor variable
df_1$activity<-factor(Activity$V1,levels = 1:6, labels = label)
#reading the test and training subject files
subject<-read_mult_files(subject_file)
#adding the subject column to merged dataframe and converting to factor variable
df_1$subject_num<-factor(subject$V1,levels = 1:30)
#4.Appropriately labels the data set with descriptive variable names.
#Replacing f, t, Acc, Mag and std with Frequency, Time, Accelerometer,
#Magnitude and standard deviation respectively.
pattern<-c("^[0-9]* f","^[0-9]* t", "Acc", "Mag", "std")
replacement<-c("Frequency", "Time", "Accelerometer", "Magnitude", "standard deviation")
for(i in 1:length(pattern)){
  names(df_1)<-sub(pattern[i],replacement[i], names(df_1))
}
#5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#The second tidy dataset is df_2
df_2<-df_1%>%group_by(activity,subject_num)%>%summarise_all(mean)
write.table(df_2,file = "tidy data.txt", row.names = FALSE)