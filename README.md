# 📧 Spam Classifier – Random Forest (R)

A lightweight, interpretable machine learning model that classifies email messages as **spam** or **not spam** based on key text-derived features.

Deployed with an interactive **Shiny app GUI** and an **API endpoint** using `vetiver`, `plumber`, and Docker on [Hugging Face Spaces](https://huggingface.co/spaces/Kamalapriyaannavarapu/SpamEmailsClassifier).

---

## 🔍 Use Cases
- 🔪 Academic demo: ML model deployment and interface design
- 📩 Lightweight spam filter for SMS bots or contact forms
- 🎓 Teaching tool for classification modeling in R

---

## 🧠 Model Details

| Property        | Value                             |
|----------------|-----------------------------------|
| **Algorithm**   | Random Forest                     |
| **Input**       | 6 numeric features from email text |
| **Target**      | Binary classification: spam (y/n) |
| **Accuracy**    | **88.25%** on 20% test set         |
| **Training Set**| 4,601 emails (UCI Spambase dataset via TidyTuesday 2023-08-15) |

---

## 📅 Input Features

The model uses basic NLP features that are automatically parsed from email text (no manual extraction required):

| Feature   | Description                                |
|-----------|--------------------------------------------|
| `crl.tot` | Total capital letters in email             |
| `dollar`  | Frequency of the `$` symbol                |
| `bang`    | Frequency of the `!` symbol                |
| `money`   | Frequency of the word "money"              |
| `n000`    | Frequency of the sequence "000"            |
| `make`    | Frequency of the word "make"               |

---

## 📊 Model Comparison

| Model               | Accuracy | Precision (Spam) | Recall (Spam) | Kappa  |
|---------------------|----------|------------------|----------------|--------|
| **Random Forest**   | **88.25%** | 90.97%          | 77.90%         | 0.7475 |
| Logistic Regression | 84.33%   | 93.25%           | 64.92%         | 0.6534 |
| XGBoost             | 87.38%   | 88.92%           | 77.62%         | 0.7296 |

**Insight:**  
✅ Random Forest delivered the best balance of precision and recall.  
⚙️ XGBoost was competitive but slightly lower in accuracy.  
🔍 Logistic Regression is highly interpretable, though lower in recall.

---

## 🛠️ Files in This Repository

| File                      | Description                                          |
|---------------------------|------------------------------------------------------|
| `spam.csv`                | Cleaned dataset from UCI Spambase                    |
| `Spam_model.R`            | Random Forest training script                        |
| `eval.Rmd`                | Model evaluation notebook with visualizations        |
| `Spam_model_logreg.R`     | Logistic regression model training and evaluation    |
| `Spam_model_xgboost.R`    | XGBoost model training and evaluation                |
| `README.md`               | Project documentation (you’re reading it!)           |

---

## 🚀 Deployment

- Trained using `tidymodels` + `vetiver`
- API exposed via `plumber`
- Deployed with Docker to Hugging Face Spaces
- Live Shiny app connects to the API endpoint and provides user interface for predictions

---

## 📌 Try It Out

🔗 **[Live API endpoint (Plumber)](https://kamalapriyaannavarapu-spammail.hf.space/__docs__/)**  
🔗 **[Interactive Shiny App](https://huggingface.co/spaces/Kamalapriyaannavarapu/shinyapp)**

---

## ✅ Next Steps

- Add support for raw text input using text preprocessing (TF-IDF or token counts)
- Improve UI with styling and user feedback messages

