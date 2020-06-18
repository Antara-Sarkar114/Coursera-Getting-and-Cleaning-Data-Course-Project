`{r setup, include=FALSE} knitr::opts_chunk$set(echo = TRUE)`

Getting and cleaning data Course Project
========================================

The assignment required us to merge test and training datasets, extract
particular column from the merged set, use descriptive activity names
instead of numbers along with descriptive labels and variable names and
finally creating a second tidy data set which is a summary of all the
variables averaged by test subjects (1-30) and activities performed by
them.

## Script used The following explains the code used to perform the
analysis:
`{r eval=FALSE} read_mult_files<-function(file_ext){   a<-list.dirs()   b<-grep("(test|train)$",a)   files<-as.list(paste0(a[b],file_ext))   df<- lapply(files,function(i){     read.table(i)   })   df<-rbind_all(df)}`
The above code creates a function to read in multiple files. It starts
by listing all the directories whithin the current working directory
since there are multiple folders and files where the required data for
the assignment is stored Then it selects the folders that contain the
test and training data. The function takes character vector of file
extensions as input. Here *file\_ext* is the character vector of file
extensions of files to be merged. The function then reads the data and
binds them together in a dataframe.

### Step 1 `{r eval=FALSE} merged_set<-read_mult_files(data_file)` 
Theabove line merges the data files together

### Step 2
`{r eval=FALSE} var_names<-read_lines("./UCI HAR Dataset/features.txt") colnames(merged_set)<-var_names`
This reads column names and assigns them as variable names to merged
dataframe from step 1.
`{r eval=FALSE} df_1<-select(merged_set,matches("-mean()|-std()"),-matches("meanFreq()"))`
Extracts only the measurements on the mean and standard deviation for
each measurement. 

### Step 3
`{r eval=FALSE} Activity<-read_mult_files(act_label_file)` reading test
and training activity files
`{r eval=FALSE} label<- readLines("./UCI HAR Dataset/activity_labels.txt") %>%   strsplit(" ") %>%   sapply(function(i){i[2]})`
reading the activity label file and trimming to consider only text
`{r eval=FALSE} df_1$activity<-factor(Activity$V1,levels = 1:6, labels = label)`
adding the activity column to merged dataframe and converting to factor
variable Similarly, as for activity above, for subject we use following:
`{r eval=FALSE} subject<-read_mult_files(subject_file) df_1$subject_num<-factor(subject$V1,levels = 1:30)`

### Step 4
`{r eval=FALSE} pattern<-c("^[0-9]* f","^[0-9]* t", "Acc", "Mag", "std") replacement<-c("Frequency", "Time", "Accelerometer", "Magnitude", "standard deviation") for(i in 1:length(pattern)){   names(df_1)<-sub(pattern[i],replacement[i], names(df_1)) }`
Replacing f, t, Acc, Mag and std with Frequency, Time, Accelerometer,
Magnitude and standard deviation respectively. Using for loop to replace
multiple strings together. 

### Step 5
`{r eval=FALSE} df_2<-df_1%>%group_by(activity,subject_num)%>%summarise_all(mean) write.table(df_2,file = "tidy data.txt", row.names = FALSE)`
Creating a second tidy dataset named **df\_2** by summarising **df\_1**
for all the variables by subject and activity. The second tidy dataset
is then stored in a separate file called *tidy data.txt*

Further explanation on data and variables is in CodeBook.md
