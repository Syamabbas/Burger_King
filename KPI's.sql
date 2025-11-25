-- 1. Total Revenue:
SELECT SUM(total_price) AS Total_Revenue FROM burger_db;

-- 2. Average Order Value
SELECT (SUM(total_price) / COUNT(DISTINCT order_id)) AS Avg_order_Value FROM burger_db;

-- 3. Total Pizzas Sold
SELECT SUM(quantity) AS Total_pizza_sold FROM burger_db;

-- 4. Total Orders
SELECT COUNT(DISTINCT order_id) AS Total_Orders FROM burger_db;

-- 5. Average Pizzas Per Order
SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / 
CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2))
AS Avg_Pizzas_per_order
FROM burger_db;