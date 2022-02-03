print(getwd())
setwd("E:/isha/1-ONLINE CLASS/sem-5/project/dm project/dataset")")

# Importing the dataset
dataset = read.csv('StudentsPerformance.csv')

# Adding average column in the dataset
dataset$average<-(dataset[,6]+dataset[,7]+dataset[,8])/3
print(dataset)
View(dataset)

library(rpart)
library(rpart.plot)

s<-sample(1000,100)
s
dataset_train <- dataset[s,]
dataset_test <- dataset[-s,]

tree<-rpart(race.ethnicity~average, dataset_train)
tree
plot(tree)
text(tree)
rpart.plot(tree)

tree<-rpart(gender~average, dataset_train,method="class")
tree
plot(tree)
text(tree)
rpart.plot(tree)

tree<-rpart(gender~math.score+reading.score+writing.score, dataset_train, method="class")
tree
plot(tree)
text(tree)
rpart.plot(tree)


