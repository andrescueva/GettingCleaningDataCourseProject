## rstduio1.3
## version.string R version 3.3.3 (2017-03-06)
## system         x86_64, linux-gnu  
#1.Merges the training and the test sets to create one data set.
### Download dataset and unzip
fileUrl    <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dirDataset <- "./dataset"
if (!file.exists(dirDataset)){
  dir.create(dirDataset)
}
datasetZip <- paste0(dirDataset, "/dataset.zip")
print(datasetZip)
download.file(fileUrl, destfile = datasetZip, method = "curl")
list.files(dirDataset)
unzip(datasetZip, exdir=dirDataset, overwrite = TRUE)
list.files(dirDataset)
setwd(dirDataset)
###Merge training and test sets
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

# keep datasets as independent ones for step 2.
x_dataset <- rbind(x_test, x_train)
y_dataset <- rbind(y_test, y_train)
subject_dataset <- rbind(subject_test, subject_train)

#2.Extracts only the measurements on the mean and standard deviation 
  #for each measurement.
#3.Uses descriptive activity names to name the activities in the data set
#4.Appropriately labels the data set with descriptive variable names.
#5.From the data set in step 4, creates a second, 
  #independent tidy data set with the average of each variable for 
  #each activity and each subject