/*
========================================
DEMAND ANALYSIS
========================================
*/

-- 1. Demand Trend Over Time
SELECT YEAR(Order_Date) AS order_year,
       MONTH(Order_Date) AS order_month,
       SUM(Quantity) AS total_demand
FROM retail_data
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY order_year, order_month;


-- 2. Fast vs Slow Moving Products
SELECT Sub_Category,
       SUM(Quantity) AS total_demand,
       CASE 
           WHEN SUM(Quantity) > 5000 THEN 'Fast Moving'
           WHEN SUM(Quantity) > 2000 THEN 'Moderate'
           ELSE 'Slow Moving'
       END AS demand_type
FROM retail_data
GROUP BY Sub_Category
ORDER BY total_demand DESC;


-- 3. Top Demand Products (Pareto)
SELECT TOP 10 Sub_Category,
       SUM(Quantity) AS total_demand
FROM retail_data
GROUP BY Sub_Category
ORDER BY total_demand DESC;