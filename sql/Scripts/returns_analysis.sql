/*
========================================
RETURNS ANALYSIS
========================================
*/

-- 1. Returns by Product Category
SELECT Sub_Category,
       COUNT(*) AS total_orders,
       SUM(CASE WHEN Returned = 'Yes' THEN 1 ELSE 0 END) AS return_count
FROM retail_data
GROUP BY Sub_Category
ORDER BY return_count DESC;


-- 2. Delivery vs Returns
SELECT *,
       CAST(return_count*100.0/total_orders AS DECIMAL(5,2)) AS pct_return
FROM (
    SELECT Shipping_Efficiency,
           COUNT(*) AS total_orders,
           SUM(CASE WHEN Returned = 'Yes' THEN 1 ELSE 0 END) AS return_count    
    FROM retail_data
    GROUP BY Shipping_Efficiency
) t
ORDER BY pct_return DESC;