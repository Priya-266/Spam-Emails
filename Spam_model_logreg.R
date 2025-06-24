# Spam_model_logreg.R

# Load libraries
# Load necessary libraries
library(readr)
library(dplyr)
library(caret)
library(readr)

# Load the dataset
spam <- read_csv("C:/Users/ka1404/Downloads/spam.csv")

# Convert target to factor
spam$yesno <- as.factor(spam$yesno)

# Train/test split
set.seed(42)
index <- createDataPartition(spam$yesno, p = 0.8, list = FALSE)
train <- spam[index, ]
test <- spam[-index, ]

# Train logistic regression model
log_model <- train(yesno ~ ., data = train, method = "glm", family = "binomial")

# Save the model
saveRDS(log_model, "log_model.rds")

log_model <- readRDS("C:/Users/ka1404/OneDrive - USNH/Documents/log_model.rds")

predictions <- predict(log_model, newdata = test)

confusionMatrix(predictions, test$yesno, positive = "y")
