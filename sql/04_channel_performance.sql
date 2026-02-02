/* Business Question: Which acquisition channels drive high churn vs long-term value?

SELECT
    acquisition_channel,
    COUNT(*) AS customers,
    ROUND(AVG(churned) * 100, 2) AS churn_rate_pct,
    ROUND(AVG(lifetime_revenue), 2) AS avg_ltv
FROM saas_subscription_churn
GROUP BY acquisition_channel
ORDER BY churn_rate_pct DESC;
