/* Business Question: Which subscription plans have the highest churn and lowest lifetime value?

SELECT
    plan_type,
    COUNT(*) AS customers,
    ROUND(AVG(churned) * 100, 2) AS churn_rate_pct,
    ROUND(AVG(lifetime_revenue), 2) AS avg_lifetime_revenue
FROM saas_subscription_churn
GROUP BY plan_type
ORDER BY churn_rate_pct DESC;
