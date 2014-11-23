## Read activity labels
labels.activity <- read.table("C:\\Users\\JKJ\\Desktop\\DS Courses\\03 - Getting and Cleaning Data\\CourseProject\\activity_labels.txt", header = FALSE)[, 2]


## Read feature labels
labels.feature <- read.table("C:\\Users\\JKJ\\Desktop\\DS Courses\\03 - Getting and Cleaning Data\\CourseProject\\features.txt")[, 2]

extract_lables.feature <- grepl("mean|std", labels.feature)

## 1a) Read in all data before combining:
  
X_train<-read.table("C:\\Users\\JKJ\\Desktop\\DS Courses\\03 - Getting and Cleaning Data\\CourseProject\\train\\X_train.txt", header = FALSE)
	names(X_train) <- labels.feature
		X_train <- X_train[, extract_labels.feature]
X_test<-read.table("C:\\Users\\JKJ\\Desktop\\DS Courses\\03 - Getting and Cleaning Data\\CourseProject\\test\\X_test.txt", header = FALSE)
	names(X_test) <- labels.feature
		X_test <- X_test[, extract_labels.feature]
	
y_train<-read.table("C:\\Users\\JKJ\\Desktop\\DS Courses\\03 - Getting and Cleaning Data\\CourseProject\\train\\y_train.txt", header = FALSE)
	names(y_train) <- c('activity')
y_test<-read.table("C:\\Users\\JKJ\\Desktop\\DS Courses\\03 - Getting and Cleaning Data\\CourseProject\\test\\y_test.txt", header = FALSE)
	names(y_test) <- c('activity')

subject_train <- read.table("C:\\Users\\JKJ\\Desktop\\DS Courses\\03 - Getting and Cleaning Data\\CourseProject\\train\\subject_train.txt", header = FALSE)
	names(subject_train) <- c('Subject')

subject_test <- read.table("C:\\Users\\JKJ\\Desktop\\DS Courses\\03 - Getting and Cleaning Data\\CourseProject\\test\\subject_test.txt", header = FALSE)
	names(subject_test) <- c('Subject')

## 1b) Combine data:
 
X_merged <- rbind(X_train, X_test)
	names(X_merged) <- labels.feature
		X_matches <- grep("(mean|std)\\(\\)", names(merged))
		X_limited <- X_merged[, X_matches]

y_merged <- rbind(y_train, y_test)
	names(y_merged)<- 


sub <- rbind(subject_train, subject_test)
 
clean_data <- cbind(sub, y_, X_)

			
