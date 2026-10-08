# Banking Customer & Transaction Analysis

An end-to-end data analytics project focused on analyzing banking customers, accounts, transactions, transaction channels, account balances, risk categories, and financial trends.

## 📌 Project Overview

This project analyzes 34,998 banking transaction records to understand customer behavior, account performance, transaction activity, transaction status, risk distribution, and monthly trends.

The project follows a complete data analytics workflow:

**Excel → Python → SQL → Power BI**

## 🎯 Objectives

- Analyze overall customer and transaction activity
- Understand transaction types and transaction channels
- Analyze completed, failed, and pending transactions
- Compare different account types and account balances
- Analyze customer risk categories
- Identify monthly transaction trends
- Analyze zero-balance transaction patterns
- Build an interactive Power BI dashboard
- Generate business-oriented insights from banking data

## 🛠️ Tools & Technologies

- **Excel** – Data cleaning and preprocessing
- **Python (Pandas)** – Data validation, cleaning and exploratory analysis
- **PostgreSQL / SQL** – Business analysis and data aggregation
- **Power BI** – Dashboard and data visualization
- **GitHub** – Project documentation and portfolio

## 📊 Dataset

The original dataset contained:

- **35,060** records
- **24** columns

After data cleaning and validation:

- **34,998** final records
- **34,995** unique customers
- **34,995** unique accounts
- **0** remaining null values
- **0** duplicate rows

The dataset contains information related to:

- Customer demographics
- Account details
- Account balances
- Transaction details
- Transaction channels
- Transaction status
- Recent transaction activity
- Risk categories

## 🧹 Data Cleaning

### Excel

Initial cleaning included:

- Removing duplicate records
- Handling missing categorical values
- Filling missing annual income values using the median
- Cleaning currency formatting
- Standardizing date formats
- Validating numeric and ID fields

### Python

Python was used for:

- Data type validation
- Missing value checks
- Duplicate validation
- Categorical standardization
- Descriptive statistics
- Transaction trend analysis
- Account and transaction analysis
- Risk and status analysis

Five records containing dates beyond the analysis cutoff of **8 October 2026** were removed.

## 🔎 SQL Analysis

The cleaned dataset was imported into PostgreSQL and analyzed using business-focused SQL queries.

Key analyses include:

1. Overall Banking Summary
2. Account Type Analysis
3. Transaction Type Analysis
4. Transaction Status Analysis
5. Transaction Channel Analysis
6. Account Status Analysis
7. Monthly Transaction Trend
8. Risk Category Analysis
9. Failed Transaction Rate by Channel
10. Zero Balance Analysis

## 📈 Key Results

| Metric | Result |
|---|---:|
| Total Transactions | 34,998 |
| Unique Customers | 34,995 |
| Unique Accounts | 34,995 |
| Total Transaction Value | ₹4.39 Billion |
| Average Transaction Amount | ₹125,369.77 |
| Average Account Balance | ₹94,381.00 |
| Completed Transactions | 20,981 |
| Failed Transactions | 7,032 |
| Transaction Success Rate | 59.95% |

## 💡 Key Insights

### Transaction Types

Payment transactions generated the highest transaction value at approximately **₹898.36 million**, followed by UPI at approximately **₹889.17 million**.

### Transaction Status

Completed transactions represented **59.95%** of all transactions, while failed and pending transactions together represented approximately **40%**.

### Transaction Channels

UPI generated the highest transaction value among the major transaction channels at approximately **₹886.16 million**.

### Account Types

Savings accounts were the largest account category with **19,431 accounts** and approximately **₹1.67 billion** in total balance.

Current accounts had the highest average account balance at approximately **₹140,666**.

### Risk Categories

High, Medium, and Low risk categories were relatively evenly distributed.

The High Risk category generated the highest transaction value at approximately **₹1.47 billion**.

### Monthly Trends

Transaction activity showed a strong overall increase from 2024 through 2026.

May 2026 recorded the highest transaction count at **2,376**, while July 2026 recorded the highest monthly transaction value at approximately **₹292.25 million**.

### Zero Balance

There were **10,868** records where the balance after transaction was zero, representing approximately **31%** of all records.

Savings accounts had the highest zero-balance rate at **33.54%**.

## 📊 Power BI Dashboard

The Power BI dashboard includes:

- Total Transactions
- Total Transaction Value
- Average Transaction Amount
- Transaction Success Rate
- Transaction Value by Type
- Transaction Status Distribution
- Transactions by Channel
- Monthly Transaction Trend
- Average Balance by Account Type
- Transaction Distribution by Risk Category

## 📸 Dashboard Preview

![Banking Customer & Transaction Analysis Dashboard](banking_customer_transaction_analysis_dashboard_image.png)

## 📁 Project Files

| File | Description |
|---|---|
| `banking_customer_transaction_analysis_data.csv` | Final cleaned dataset |
| `banking_customer_transaction_analysis_python.ipynb` | Python cleaning and analysis |
| `banking_customer_transaction_analysis_queries.sql` | SQL business analysis queries |
| `banking_customer_transaction_analysis_dashboard.pbix` | Power BI dashboard |
| `banking_customer_transaction_analysis_dashboard_image.png` | Dashboard preview |
| `banking_customer_transaction_analysis_report.pdf` | Detailed project report |

## 💼 Business Recommendations

- Monitor failed and pending transactions to improve transaction success rates.
- Investigate failure patterns across digital transaction channels.
- Monitor high-risk customer activity because this segment contributes the highest transaction value.
- Investigate zero-balance patterns, especially within Savings accounts.
- Use monthly transaction growth for capacity and operational planning.
- Use account-type and customer behavior patterns for targeted banking products.

## ⚠️ Project Limitations

- The dataset is a project/analytical dataset and does not represent real production banking data.
- October 2026 contains partial-month data and should not be directly compared with complete months.
- Risk-category analysis is descriptive and does not establish actual fraud or credit risk.
- Customer and account counts depend on the identifiers available in the dataset.

## 👨‍💻 Project Workflow

```text
Raw Excel Data
      ↓
Excel Cleaning
      ↓
Python Validation & EDA
      ↓
PostgreSQL / SQL Analysis
      ↓
Power BI Dashboard
      ↓
Business Insights & Reporting

## 📝 Conclusion

This project demonstrates an end-to-end data analytics workflow, from data cleaning and validation to SQL-based business analysis and Power BI visualization.

The analysis provides insights into transaction performance, customer and account behavior, transaction channels, risk categories, account balances, and monthly trends. The final Power BI dashboard presents these findings in a clear and business-friendly format, making the project suitable for portfolio and business analytics use cases.
