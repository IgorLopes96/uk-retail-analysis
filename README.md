## Online UK Retail Customer Analytics, Churn & Segmentation

**Tools:** Python, SQL, Pandas, SQLite, Scikit-Learn

**Dataset:** UCI Online Retail Dataset (541,909 transactions)

### Project Overview
Analyzed a UK-based e-commerce dataset using SQL, Python, statistical analysis, and machine learning to understand customer behavior, revenue trends, churn risk, and customer segmentation. Generated data-driven recommendations focused on customer retention, customer lifetime value, and revenue growth.

### Key Analyses
- Month-over-month revenue growth analysis using SQL window functions (LAG)
- Top customers by country and global customer ranking using CTEs and RANK()
- Data cleaning, exploratory analysis, and revenue trend analysis in Python
- RFM (Recency, Frequency, Monetary) feature engineering to profile customer behavior
- Customer churn prediction using Logistic Regression, Decision Trees, and Random Forests
- Customer segmentation using K-Means clustering

### Key Insights
- Revenue is highly concentrated among a small number of customers
- Strong seasonality with peak performance toward year-end
- Certain international markets generate disproportionate revenue
- Recency was identified as the strongest predictor of customer churn
- Customer segmentation revealed four distinct groups: Champions, Loyal Customers, Regular Customers, and Lost Customers

### Machine Learning Results
- Built a Logistic Regression churn model achieving approximately 99% test accuracy
- Evaluated churn drivers using Decision Tree and Random Forest models
- Identified Recency as the most influential feature, accounting for approximately 88% of model importance
- Segmented customers into retention-focused groups to support lifecycle marketing strategies

### Model Evaluation

### Business Recommendations

📊 Kaggle Notebook: https://kaggle.com/igormlopes
