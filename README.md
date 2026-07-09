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
- Logistic Regression Recall: 0.99
- Random Forest Recall: 1.00
- Logistic Regression AUC: 1.00
- Random Forest AUC: 1.00
- Random Forest selected for deployment

### Business Recommendations

1. Prioritize Retention of High-Value Customers
   

**Target Segment: Champions and Loyal Customers**

A relatively small group of customers generates a disproportionate share of revenue. The business should implement VIP loyalty programs, personalized offers, and proactive customer engagement to reduce churn among these high-value customers.

**Expected Impact: Increased customer retention and higher customer lifetime value among the most profitable customer segments.**

￼
2. Launch Win-Back Campaigns for Inactive Customers

**Target Segment: Lost Customers**

Customers who have not purchased recently represent an opportunity for revenue recovery. Personalized re-engagement emails, limited-time promotions, and targeted discounts can encourage previously active customers to return.

**Expected Impact: Recovery of inactive customers and incremental revenue growth through reactivation campaigns.**

￼
3. Develop Lifecycle Marketing for Regular Customers

**Target Segment: Regular Customers**

Regular customers represent the largest customer group and have the greatest potential to move into higher-value segments. Automated email campaigns, product recommendations, and repeat-purchase incentives can increase engagement and purchasing frequency.

**Expected Impact: Higher repeat purchase rates, improved customer engagement, and growth in the number of Loyal Customers.**
￼
**Strategic Takeaway**

Customer retention presents one of the highest-return opportunities identified in this analysis. Combining churn prediction with customer segmentation enables the business to target the right customers with the right retention strategy, helping improve customer lifetime value and support sustainable revenue growth.


📊 Kaggle Notebook: https://kaggle.com/igormlopes
