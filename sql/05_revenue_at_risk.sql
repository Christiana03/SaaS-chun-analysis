/* Business Question: How much revenue is lost due to customer churn by plan type?

SELECT
    plan_type,
    ROUND(SUM(lifetime_revenue * churned), 2) AS revenue_lost
FROM saas_subscription_churn
GROUP BY plan_type
ORDER BY revenue_lost DESC;
