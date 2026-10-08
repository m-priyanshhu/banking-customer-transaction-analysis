SELECT COUNT(*) AS total_records
FROM banking_transactions;

SELECT *
FROM banking_transactions
LIMIT 5;

--Q1. What is the overall transaction volume, customer base, account base, and average transaction and account balance?
SELECT
    COUNT(*) AS total_transactions,
    COUNT(DISTINCT customer_id) AS total_customers,
    COUNT(DISTINCT account_id) AS total_accounts,
    SUM(transaction_amount) AS total_transaction_value,
    AVG(transaction_amount) AS avg_transaction_amount,
    AVG(account_balance) AS avg_account_balance
FROM banking_transactions;


--Q2. Which account types have the highest number of accounts, total account balance, and average account balance?
SELECT
    account_type,
    COUNT(DISTINCT account_id) AS total_accounts,
    SUM(account_balance) AS total_balance,
    AVG(account_balance) AS avg_balance
FROM banking_transactions
GROUP BY account_type
ORDER BY total_balance DESC;


--Q3. Which transaction types generate the highest transaction volume and transaction value?
SELECT
    transaction_type,
    COUNT(*) AS total_transactions,
    SUM(transaction_amount) AS total_transaction_value,
    AVG(transaction_amount) AS avg_transaction_amount
FROM banking_transactions
GROUP BY transaction_type
ORDER BY total_transaction_value DESC;


--Q4. What is the distribution of completed, failed, and pending transactions, and how much transaction value is associated with each status?
SELECT
    transaction_status,
    COUNT(*) AS total_transactions,
    SUM(transaction_amount) AS total_transaction_value,
    AVG(transaction_amount) AS avg_transaction_amount,
    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),
        2
    ) AS transaction_percentage
FROM banking_transactions
GROUP BY transaction_status
ORDER BY total_transactions DESC;


--Q5. Which transaction channels are most frequently used and generate the highest transaction value?
SELECT
    transaction_channel,
    COUNT(*) AS total_transactions,
    SUM(transaction_amount) AS total_transaction_value,
    AVG(transaction_amount) AS avg_transaction_amount,
    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),
        2
    ) AS transaction_percentage
FROM banking_transactions
GROUP BY transaction_channel
ORDER BY total_transaction_value DESC;


--Q6. How are customers and account balances distributed across active, dormant, and closed accounts?
SELECT
    account_status,
    COUNT(DISTINCT account_id) AS total_accounts,
    SUM(account_balance) AS total_balance,
    AVG(account_balance) AS avg_balance,
    ROUND(
        COUNT(DISTINCT account_id) * 100.0 /
        SUM(COUNT(DISTINCT account_id)) OVER (),
        2
    ) AS account_percentage
FROM banking_transactions
GROUP BY account_status
ORDER BY total_accounts DESC;


--Q7. How has transaction activity changed over time on a monthly basis?
SELECT
    DATE_TRUNC('month', transaction_date)::date AS transaction_month,
    COUNT(*) AS total_transactions,
    SUM(transaction_amount) AS total_transaction_value,
    AVG(transaction_amount) AS avg_transaction_amount
FROM banking_transactions
GROUP BY DATE_TRUNC('month', transaction_date)
ORDER BY transaction_month;


--Q8. How do transaction activity and account balances vary across different customer risk categories?
SELECT
    risk_category,
    COUNT(*) AS total_transactions,
    SUM(transaction_amount) AS total_transaction_value,
    AVG(transaction_amount) AS avg_transaction_amount,
    AVG(account_balance) AS avg_account_balance,
    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),
        2
    ) AS transaction_percentage
FROM banking_transactions
GROUP BY risk_category
ORDER BY total_transaction_value DESC;


--Q9. Which transaction channels have the highest number and percentage of failed transactions?
SELECT
    transaction_channel,
    COUNT(*) AS total_transactions,
    COUNT(*) FILTER (WHERE transaction_status = 'Failed') AS failed_transactions,
    ROUND(
        COUNT(*) FILTER (WHERE transaction_status = 'Failed') * 100.0
        / COUNT(*),
        2
    ) AS failed_transaction_rate
FROM banking_transactions
GROUP BY transaction_channel
ORDER BY failed_transaction_rate DESC;


--Q10. How many transactions result in zero account balance, and how does this vary across account types?
SELECT
    account_type,
    COUNT(*) AS total_transactions,
    COUNT(*) FILTER (
        WHERE balance_after_transaction = 0
    ) AS zero_balance_transactions,
    ROUND(
        COUNT(*) FILTER (
            WHERE balance_after_transaction = 0
        ) * 100.0 / COUNT(*),
        2
    ) AS zero_balance_rate
FROM banking_transactions
GROUP BY account_type
ORDER BY zero_balance_rate DESC;