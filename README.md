# Customer Churn Prediction Dashboard

A full-stack data analytics and machine learning project to analyze and predict customer churn using SQL, Python, and Power BI. This project simulates a real business scenario and offers data-driven insights to reduce customer attrition.

---

## Table of Contents

1. [Tools & Technologies Used](#-tools--technologies-used)  
2. [Project Workflow](#-project-workflow)  
3. [Graphical EDA in Python](#-graphical-eda-in-python)  
4. [Key Insights](#-key-insights)  
5. [Folder Structure](#-folder-structure)  
6. [Dashboard Preview](#-dashboard-preview)  
7. [Dataset Source](#-dataset-source)  
8. [SQL Analysis Output](#-sql-analysis-output)  
9. [Contact](#-contact)

---

## Tools & Technologies Used

- SQL (MySQL Workbench)
- Python (Pandas, Seaborn, Matplotlib, Scikit-learn)
- Power BI
- Logistic Regression
- Telco Customer Churn Dataset (Kaggle)

---

## Project Workflow

### 1. SQL Data Loading & Analysis
- Imported Telco churn data into MySQL using `LOAD DATA INFILE`.
- Created SQL queries to analyze:
  - Average monthly Charges by churn
  - Number of Churned Customers by contract type
  - Senior citizen churn trends
SQL script included in: [`Churn Analysis.sql`](https://github.com/ShivamNnautiyal/Customer-Churn-Data-Analysis-And-Dashboard/blob/main/Churn%20Analysis.sql)

### 2. Python Cleaning, EDA & ML
- Connected Python to MySQL for analysis.
- Cleaned data: handled nulls, converted types, encoded categories.
- Created visual EDA with heatmaps, boxplots, and distributions.
![Churn Bar Chart](https://github.com/ShivamNnautiyal/Customer-Churn-Data-Analysis-And-Dashboard/blob/main/graph1.PNG)
  - ~74% of customers were retained
  - ~26% of customers churned
![Monthly Charges Boxplot](https://github.com/ShivamNnautiyal/Customer-Churn-Data-Analysis-And-Dashboard/blob/main/graph2.PNG)
   -Customers who churned had noticeably **higher monthly charges** compared to those who stayed
  - Median monthly charges for churned customers were around ₹80+
  - Customers who did not churn had a much broader range of charges, including lower cost plans
- Correlation Heatmap Insights
  -The correlation heatmap helped identify features that influence churn:
  - Customers with **month-to-month contracts** and **fiber optic internet** are more likely to churn
  - Customers with **long tenure**, **tech support**, and **two-year contracts** are less likely to churn
  - Higher **monthly charges** and **paperless billing** are mildly correlated with higher churn
  ![Correlation Heatmap](https://github.com/ShivamNnautiyal/Customer-Churn-Data-Analysis-And-Dashboard/blob/main/graph3.PNG)

- Built **Logistic Regression** model with ROC AUC ≈ 0.85.
  -The logistic regression model showed strong performance:
  - **Accuracy:** 79%
  - **ROC AUC Score:** 0.84
  - **Precision (Churn):** 64%
  - **Recall (Churn):** 53%
  - **F1-Score (Churn):** 0.58
  - While the model performed well in identifying non-churned customers, recall for churned customers can be improved using advanced models or balancing techniques.
  ![Model Evaluation](https://github.com/ShivamNnautiyal/Customer-Churn-Data-Analysis-And-Dashboard/blob/main/graph%204.PNG)

- Predicted churn probability for each customer.

### 3. Power BI Dashboard
- Created an interactive Power BI dashboard with:
  - Churn KPIs & Revenue loss
  - Churn by customer type, contract, service
  - Churn risk segmentation: High, Medium, Low
  - Exported predictions and top at-risk customers
 
### Dashboard Preview

![Dashboard Overview Page 1](https://github.com/ShivamNnautiyal/Customer-Churn-Data-Analysis-And-Dashboard/blob/main/Dashboard1.PNG)

![Churn Dashboard View Page 2](https://github.com/ShivamNnautiyal/Customer-Churn-Data-Analysis-And-Dashboard/blob/main/Dashboard2%20(2).PNG)

---

## Key Insights

- **Total Customers Analyzed:** 7,043  
- **Actual Churn Rate:** ~26.5%  
- **Predicted Churn Rate:** ~22%

#### Highlights:
- Month-to-month contracts → highest churn rate
- Fiber optic users churn more often than DSL users
- Senior citizens show slightly higher churn tendency
- **3 current customers** were flagged as **high-risk for churn**, even though they haven’t left yet a critical proactive insight for retention teams

---

## Business Takeaways:
- Retention strategies should focus on:
 - Month to month customers
 - Customers without online security or tech support
 - Fiber optic users with high bills
- Encouraging long term contracts or bundling tech support services may help reduce churn.


## Contact

**Created by:** Shivam Nautiyal  
**LinkedIn:** (https://www.linkedin.com/in/shivam-nautiyal-6807a1311/)

