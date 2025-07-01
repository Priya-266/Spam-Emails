# Load libraries
library(readr)
library(caret)
library(xgboost)
library(dplyr)

# Load data
spam <- read_csv("C:/Users/ka1404/Downloads/spam.csv")

# Convert target to factor
spam$yesno <- as.factor(spam$yesno)

# Train/test split
set.seed(123)
index <- createDataPartition(spam$yesno, p = 0.8, list = FALSE)
train <- spam[index, ]
test <- spam[-index, ]

# Set up training control
control <- trainControl(method = "cv", number = 5)

# Train XGBoost model using caret
xgb_model <- train(
  yesno ~ .,
  data = train,
  method = "xgbTree",
  trControl = control,
  verbosity = 0 )

# Make predictions
predictions <- predict(xgb_model, newdata = test)

# Evaluate model
confusionMatrix(predictions, test$yesno, positive = "y")

