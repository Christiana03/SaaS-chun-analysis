/* Business Question: How significant is early-stage churn (≤ 6 months) across plans?

SELECT
    plan_type,
    COUNT(*) AS customers,
    ROUND(
        AVG(CASE WHEN months_active <= 6 THEN churned ELSE 0 END) * 100,
        2
    ) AS early_churn_rate_pct
FROM saas_subscription_churn
GROUP BY plan_type
ORDER BY early_churn_rate_pct DESC;
