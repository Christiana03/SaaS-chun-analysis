/* Business Question: How does customer retention change as subscription tenure increases?

SELECT
    months_active,
    COUNT(*) AS customers,
    ROUND(AVG(churned) * 100, 2) AS churn_rate_pct
FROM saas_subscription_churn
GROUP BY months_active
ORDER BY months_active;
