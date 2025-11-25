-- % of Sales by Burger Size
SELECT burger_size, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from burger_db) AS DECIMAL(10,2)) AS PCT
FROM burger_db
GROUP BY burger_size
ORDER BY burger_size;

-- Total burgers Sold by burger Category
SELECT burger_category, SUM(quantity) as Total_Quantity_Sold
FROM burger_db
WHERE MONTH(order_date) = 2
GROUP BY burger_category
ORDER BY Total_Quantity_Sold DESC;

-- Top 5 Burger by Revenue
SELECT Top 5 burger_name, SUM(total_price) AS Total_Revenue
FROM burger_db
GROUP BY burger_name
ORDER BY Total_Revenue DESC

-- Bottom 5 Burger by Revenue
SELECT Top 5 burger_name, SUM(total_price) AS Total_Revenue
FROM burger_db
GROUP BY burger_name
ORDER BY Total_Revenue ASC

-- Top 5 Burger by Quantity
SELECT Top 5 burger_name, SUM(quantity) AS Total_burger_Sold
FROM burger_db
GROUP BY burger_name
ORDER BY Total_burger_Sold DESC

-- Bottom 5 Burger by Quantity
SELECT TOP 5 burger_name, SUM(quantity) AS Total_burger_Sold
FROM burger_db
GROUP BY burger_name
ORDER BY Total_burger_Sold ASC

-- Top 5 Burger by Total Order
SELECT Top 5 burger_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM burger_db
GROUP BY burger_name
ORDER BY Total_Orders DESC

-- Bottom 5 Burger by Total Order
SELECT Top 5 burger_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM burger_db
GROUP BY burger_name
ORDER BY Total_Orders ASC