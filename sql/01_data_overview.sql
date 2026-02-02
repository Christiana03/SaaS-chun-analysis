/* What is the overall state of the Saas subscription business?

SELECT
    COUNT(DISTINCT customer_id) AS total_customers,
    ROUND(AVG(churned) * 100, 2) AS churn_rate_pct,
    ROUND(AVG(months_active), 1) AS avg_months_active,
    ROUND(AVG(lifetime_revenue), 2) AS avg_lifetime_revenue
FROM saas_subscription_churn;
