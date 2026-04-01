# 🧾 Inventory & Demand Analysis using Excel, Sql and Tableau

---

## 🎯 Business Problem

The objective of this project is to analyze retail sales data to identify demand patterns, supply chain inefficiencies, and profitability issues, and provide actionable insights for inventory optimization.

---

## 🛠 Tools Used

- Excel (Data Cleaning & Feature Engineering)  
- SQL Server (Data Analysis)  
- Tableau (Dashboard & Visualization)  

---

## 📑 Dataset Description

- The dataset contains retail sales transactions with information on orders, customers, products, delivery, and financial metrics.

## 📋 Column Details

| Column Name         | Description                                                    |
| ------------------- | -------------------------------------------------------------- |
| Row_Id              | Unique identifier for each record                              |
| Order_Id            | Unique identifier for each order                               |
| Order_Date          | Date when the order was placed                                 |
| Ship_Date           | Date when the order was shipped                                |
| Ship_Mode           | Shipping method used (Standard, Second, First Class, Same Day) |
| Customer_Id         | Unique customer identifier                                     |
| Customer_Name       | Name of the customer                                           |
| Segment             | Customer segment (Consumer, Corporate, Home Office)            |
| Country             | Country of the customer                                        |
| City                | City of the customer                                           |
| State               | State of the customer                                          |
| Postal_Code         | Postal/ZIP code                                                |
| Region              | Region classification (West, East, Central, South)             |
| Sales_Rep           | Assigned sales representative                                  |
| Product_Id          | Unique product identifier                                      |
| Category            | Product category                                               |
| Sub_Category        | Product sub-category                                           |
| Product_Name        | Name of the product                                            |
| Returned            | Indicates if the product was returned (Yes/No)                 |
| Sales               | Revenue generated from the order                               |
| Quantity            | Number of units sold                                           |
| Discount            | Discount applied to the order                                  |
| Profit              | Profit earned from the order                                   |
| Delivery_Time_Day   | Number of days taken for delivery                              |
| Total_Demand        | Total demand (derived metric)                                  |
| Demand_Category     | Demand classification (High, Medium, Low)                      |
| Sales_Per_Unit      | Sales per unit (derived)                                       |
| Cost_Per_Unit       | Cost per unit (derived)                                        |
| Profit_Margin       | Profit margin ratio                                            |
| Shipping_Efficiency | Delivery performance category                                  |

--- 

## 📊 Dashboard Preview

- Live Dashboard: (https://public.tableau.com/app/profile/akash.maurya3794/viz/RetailInventoryDemandAnalysisDashboardExcelSQLTableauProject/Dashboard?publish=yes)


- ![Dashboard Preview](dashboard_screenshot.png)

---

## 📊 Key Analysis Performed

- Demand segmentation (fast vs slow-moving products)  
- Delivery performance analysis  
- Region-wise supply chain efficiency  
- Profit vs demand analysis  
- Returns analysis  
- Pareto analysis (top 20% products driving 80% sales)

---

## 🔍 Key Insights

### 1. High Demand Products
- Binders and Paper contribute the highest demand  
- These products require higher inventory levels  

### 2. Supply Chain Efficiency
- Most deliveries occur within 3–5 days  
- Standard Class shipping dominates but is slower  

### 3. Profit Leakage 🚨
- Tables and Bookcases generate losses despite strong demand  
- Indicates pricing or discount issues  

### 4. Returns Risk
- High-demand products also show higher return rates  
- Suggests potential quality or expectation gaps  

### 5. Product Concentration (Pareto Insight)
- ~80% of sales are driven by ~20% of products
- Inventory focus should be on high-impact SKUs

---

## 📈 Business Recommendations

- Increase stock levels for high-demand products  
- Optimize Standard Class shipping performance  
- Reevaluate pricing strategy for loss-making products
- Focus on top-performing products for inventory planning  
- Investigate high-return categories  

---

## 📊 Dashboard Features
- KPI summary (Sales, Profit, Demand, Delivery Time)
- Monthly demand trend analysis
- Top-performing product categories
- Profit and loss analysis
- Shipping mode distribution
- Pareto analysis for product contribution

---

## 📌 Project Outcome

- This project demonstrates how data-driven analysis can be used to:
    - Improve inventory planning
    - Optimize supply chain performance
    - Identify profit leakage
    - Support strategic decision-making

---
