/*
========================================
SUPPLY CHAIN ANALYSIS
========================================
*/

-- 1. Ship Mode Performance
SELECT Ship_Mode,
       COUNT(*) AS total_orders,
       AVG(Delivery_Time_Day) AS avg_delivery
FROM retail_data
GROUP BY Ship_Mode
ORDER BY avg_delivery DESC;


-- 2. Region-wise Delivery Efficiency
SELECT Region,
       AVG(Delivery_Time_Day) AS avg_delivery
FROM retail_data
GROUP BY Region
ORDER BY avg_delivery DESC;


-- 3. Delivery Performance Distribution
SELECT Shipping_Efficiency,
       COUNT(*) AS total_orders
FROM retail_data
GROUP BY Shipping_Efficiency
ORDER BY total_orders DESC;