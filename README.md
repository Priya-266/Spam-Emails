
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
- **Accuracy:** 88.03%  
- **Precision (spam):** 90.91%  
- **Recall (spam):** 77.35%  
- **Kappa:** 0.7426  

---

## Files in This Repository

- `spam.csv` – The dataset  
- `spam_model.R` – Model training script  
- `eval.Rmd` – Evaluation script  
- `README.md` – This documentation  

