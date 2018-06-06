## Downloading and unzipping the datasets file in the workinbg directory

#download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "./c3project.zip")
#zipF<- "./c3project.zip"
#unzip(zipF,exdir="./.")

## Reading the train and test datasets and merging them in a data frame

df_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
df_test <- read.table("./UCI HAR Dataset/test/X_test.txt")

df_y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
df_y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

df_s_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
df_s_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

df <- rbind(df_train, df_test)
df_y <- rbind(df_y_train, df_y_test)
df_s <- rbind(df_s_train, df_s_test)

## labelling the resulting data frame and extracting measurements on mean & std.

features <- read.table("./UCI HAR Dataset/features.txt")
names(df) <- features[, 2]
names(df_s) <- "subject"
names(df_y) <- "activity"

mean_std_measurements <- sort(c(grep("mean", names(df)), grep("std", names(df))))
df <- df[, mean_std_measurements]
df <- cbind(df, df_y, df_s)

## Descriptive activity names to name the activities in the data set

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
df[,"activity"] <- sapply(df[,"activity"], FUN = function(x) {activity_labels[x, 2]})

## Labelling data set with descriptive variable names
names(df) <- gsub("^t", "time", names(df))
names(df) <- gsub("^f", "frequency", names(df))
names(df) <- gsub("Acc", "Accelerometer", names(df))
names(df) <- gsub("Gyro", "Gyroscope", names(df))
names(df) <- gsub("Mag", "Magnitude", names(df))
names(df) <- gsub("BodyBody", "Body", names(df))
names(df) <- gsub("\\(", "", names(df))
names(df) <- gsub("\\)", "", names(df))
names(df) <- gsub("-", "_", names(df))

## Creating independent dataset with average of each variable for each activity and each subject

tidy_df <- aggregate(df, by=list(activity=df$activity, subject=df$subject), mean)[, 1:81]
write.table(tidy_df, "./my_tidy_df.txt", row.names = FALSE)

