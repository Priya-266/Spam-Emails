
# Spam Classifier – Random Forest (R)

A simple and interpretable machine learning model to detect spam email messages using basic text features like word and character frequency.  
Built using **Random Forest in R**, the model achieved **88% accuracy** on unseen test data. It was trained on the [TidyTuesday spam dataset (2023-08-15)](https://github.com/rfordatascience/tidytuesday/tree/main/data/2023/2023-08-15#spam-e-mail).

---

## Use Cases
- Email spam filtering for academic or demo purposes  
- Lightweight filter for SMS bots or contact forms  
- Introductory classification model for students and educators  

---

## Model Details

| Feature       | Description                        |
|---------------|------------------------------------|
| **Algorithm** | Random Forest                      |
| **Input**     | 6 numerical features from email text |
| **Target**    | spam (`y`) or ham (`n`)            |
| **Accuracy**  | 88.03% (on 20% holdout test set)   |

---

## Input Features (Predictors)

The model uses the following 6 numeric predictors, all automatically extracted from the email body:

- `crl.tot`: Total capital letters  
- `dollar`: Frequency of `$`  
- `bang`: Frequency of `!`  
- `money`: Frequency of the word “money”  
- `n000`: Frequency of “000”  
- `make`: Frequency of the word “make”  

No manual input is needed as these values are computed using basic text parsing.

---

## Training & Evaluation

- **Dataset:** 4,601 emails (UCI Spambase via TidyTuesday)  
- **Train/Test Split:** 80% training, 20% testing  

Two models were trained and evaluated using an 80/20 train-test split on the TidyTuesday spam dataset:

### 🔹 1. Random Forest Classifier
- **Accuracy:** 88.25%
- **Precision (spam):** 90.97%
- **Recall (spam):** 77.90%
- **Kappa:** 0.7475

### 🔹 2. Logistic Regression Classifier
- **Accuracy:** 84.33%
- **Precision (spam):** 93.25%
- **Recall (spam):** 64.92%
- **Kappa:** 0.6534

### 🔹 3. XGBoost Classifier
- **Accuracy:** 87.38%
- **Precision (spam):** 88.92%
- **Recall (spam):** 77.62%
- **Kappa:** 0.7296

Insights:

Random Forest remains the strongest performer overall.

XGBoost performs almost as well, with slightly lower accuracy but competitive metrics.

Logistic Regression is best for interpretability but has lower recall.

---

## Files in This Repository

- `spam.csv` – The dataset  
- `Spam_model.R` – Model training script for Random Forest
- `eval.Rmd` – Evaluation script for Random Forest 
- `README.md` – This documentation  
- `Spam_model_logreg.R` – Model training and evaluation script for Logistic regression
- `Spam_model_xgboost.R` – Model training and evaluation script for XGBoost Classifier

