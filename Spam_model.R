# Load necessary libraries
library(readr)
library(dplyr)
library(e1071)
library(randomForest)
library(caret)

# Load data
spam <- read.csv("C:/Users/ka1404/Downloads/spam.csv")
spam$yesno <- as.factor(spam$yesno)

# Train/test split
set.seed(42)
index <- createDataPartition(spam$yesno, p = 0.8, list = FALSE)
train <- spam[index, ]
test <- spam[-index, ]

# Train model
model <- randomForest(yesno ~ ., data = train, ntree = 100)

# Save model
saveRDS(model, "spam_rf_model.rds")
