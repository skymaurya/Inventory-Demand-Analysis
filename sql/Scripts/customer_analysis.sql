/*
========================================
CUSTOMER ANALYSIS
========================================
*/

-- 1. Segment-wise Demand
SELECT Segment,
       SUM(Quantity) AS total_demand,
       SUM(Sales) AS total_sales
FROM retail_data
GROUP BY Segment
ORDER BY total_demand DESC;


-- 2. Sales Rep Performance
SELECT Sales_Rep,
       SUM(Sales) AS total_sales,
       SUM(Profit) AS total_profit
FROM retail_data
GROUP BY Sales_Rep
ORDER BY total_sales DESC;