# E-Commerce Return Rate Reduction Analysis

## Overview

This project analyzes e-commerce order and return data to identify return patterns and predict product return risk using Machine Learning. The project combines Python, SQLite, and Power BI to perform data cleaning, exploratory data analysis, SQL-based insights, return prediction, and interactive dashboard visualization.

---

## Project Objectives

- Clean and preprocess e-commerce order data.
- Analyze return patterns across categories, regions, and payment methods.
- Predict product return probability using Logistic Regression.
- Identify high-risk products based on prediction scores.
- Build an interactive Power BI dashboard with drill-through functionality.

---

## Tools & Technologies

- **Python**
  - Pandas
  - NumPy
  - Matplotlib
  - Seaborn
  - Scikit-learn
  - imbalanced-learn (SMOTE)
- **SQLite**
- **Power BI Desktop**

---

## Project Workflow

### 1. Data Cleaning
- Removed duplicate records
- Handled missing values
- Standardized categorical data
- Converted date columns
- Exported cleaned dataset

### 2. Exploratory Data Analysis (EDA)
- Category-wise order analysis
- Region-wise order analysis
- Monthly order trends
- Payment method distribution
- Customer demographic analysis

### 3. SQL Analysis
- Return analysis using SQLite
- Category and region analysis
- Monthly trend analysis
- Query optimization using indexes

### 4. Machine Learning
- Logistic Regression model
- SMOTE for handling class imbalance
- Model evaluation using Accuracy, Classification Report, ROC Curve, and AUC Score
- Generated return probability for each order
- Identified high-risk products

### 5. Power BI Dashboard
Interactive dashboard featuring:
- Orders by Category
- Orders by Region
- Monthly Order Trend
- Payment Method Distribution
- High-Risk Products Table
- Interactive Slicers
- Drill-through Product Details Page

---

## Project Structure

```
Ecommerce_Return_Rate_Reduction_Analysis/

├── Dataset/
│   ├── ecommerce_dataset.csv
│   ├── cleaned_ecommerce_dataset.csv
│   └── High_Risk_Products.csv
│
├── Notebooks/
│   ├── 01_Data_Cleaning.ipynb
│   ├── 02_Exploratory_Data_Analysis.ipynb
│   └── 03_Return_Prediction_Model.ipynb
│
├── SQL/
│   └── ecommerce_analysis.sql
│
├── Dashboard/
│   └── Ecommerce_Return_Risk_Dashboard.pbix
│
├── Screenshots/
│   └── dashboard.png
│
└── README.md
```

---

## Dashboard Features

- Interactive slicers
- Category and region analysis
- Monthly trend visualization
- Payment method distribution
- High-risk product identification
- Drill-through page for detailed product analysis

---

## Results

- Successfully cleaned and prepared the dataset.
- Performed exploratory and SQL-based analysis.
- Built a Logistic Regression model to predict return probability.
- Generated a High-Risk Products dataset.
- Developed an interactive Power BI dashboard for business insights.

---

## Future Improvements

- Improve prediction accuracy using ensemble models.
- Include supplier-level analysis when supplier data is available.
- Deploy the prediction model as a web application.

---

