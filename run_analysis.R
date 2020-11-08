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


#2.Extracts only the measurements on the mean and standard deviation 
  #for each measurement.
#3.Ues descriptive activity names to name the activities in the data set
#4.Appropriately labels the data set with descriptive variable names.
#5.From the data set in step 4, creates a second, 
  #independent tidy data set with the average of each variable for 
  #each activity and each subject