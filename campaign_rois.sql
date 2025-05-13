-- SQL Query to calculate campaign ROI by campaign type
SELECT 
    campaign_name,
    SUM(cost) AS total_cost,
    SUM(revenue) AS total_revenue,
    (SUM(revenue) - SUM(cost)) / SUM(cost) AS roi
FROM campaign_data
GROUP BY campaign_name
ORDER BY roi DESC;