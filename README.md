# GettingCleaningDataCourseProject
## Files:
run_analysis: code to download the raw dataset, merge sets, filter columns, and create the requested tidy dataset. 
tidydataset.txt: tidy data set with the average of each variable for each activity and each subject
codebook: describing each variable and its values in the tidy data set.

## System:
- rstduio: version 1.3
- R: version 3.3.3 (2017-03-06)
- Arch, OS: system x86_64, linux-gnu  

## Procedure executed in run_analysis:
- Download raw dataset from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
- Unzip downloaded file
- Merge train and test sets
- Extract only the mean and std measurements 
- Replace number Activities values by descriptive values
- Add header with descriptive variable names
- Create tidy data set with the average of Activity and Subject variables
