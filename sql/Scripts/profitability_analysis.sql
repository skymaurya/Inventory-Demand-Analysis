/*
========================================
PROFITABILITY ANALYSIS
========================================
*/

-- 1. High Demand but Low Profit
SELECT Sub_Category,
       SUM(Quantity) AS total_demand,
       SUM(Profit) AS total_profit,
       CAST(SUM(Quantity)*100.0/(SELECT SUM(Quantity) FROM retail_data) AS DECIMAL(5,2)) AS demand_percent
FROM retail_data
GROUP BY Sub_Category
HAVING SUM(Quantity)>300
ORDER BY demand_percent DESC;


-- 2. Discount Impact on Profit
SELECT 
       CASE 
           WHEN Discount = 0 THEN 'No Discount'
           WHEN Discount <= 0.2 THEN 'Low'
           WHEN Discount <= 0.5 THEN 'Medium'
           ELSE 'High'
       END AS discount_category,
       SUM(Sales) AS total_sales,
       SUM(Profit) AS total_profit
FROM retail_data
GROUP BY 
       CASE 
           WHEN Discount = 0 THEN 'No Discount'
           WHEN Discount <= 0.2 THEN 'Low'
           WHEN Discount <= 0.5 THEN 'Medium'
           ELSE 'High'
       END
ORDER BY total_profit;


-- 3. Profit Margin Analysis
SELECT Sub_Category,
       AVG(Profit_Margin) AS avg_margin
FROM retail_data
GROUP BY Sub_Category
ORDER BY avg_margin;