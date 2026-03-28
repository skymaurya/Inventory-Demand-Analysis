/*
========================================
DEMAND vs SUPPLY ANALYSIS
========================================
*/

-- 1. High Demand vs Delivery Gap
SELECT Sub_Category,
       SUM(Quantity) AS total_demand,
       AVG(Delivery_Time_Day) AS avg_delivery
FROM retail_data
GROUP BY Sub_Category
HAVING SUM(Quantity) > 300
ORDER BY total_demand DESC;


-- 2. Region Demand vs Delivery
SELECT Region,
       SUM(Quantity) AS total_demand,
       AVG(Delivery_Time_Day) AS avg_delivery
FROM retail_data
GROUP BY Region
ORDER BY total_demand DESC;


-- 3. Inventory Risk Analysis
SELECT Sub_Category,
       SUM(Quantity) AS demand,
       AVG(Delivery_Time_Day) AS avg_delivery,
       CASE 
           WHEN SUM(Quantity) > 3000 AND AVG(Delivery_Time_Day) >= 3 
           THEN 'High Risk'
           ELSE 'Normal'
       END AS risk_level
FROM retail_data
GROUP BY Sub_Category
ORDER BY demand DESC;