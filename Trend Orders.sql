-- 1. Daily Trend for Total Orders
SELECT DATENAME(DW, order_date) AS order_day, 
COUNT(DISTINCT order_id) AS total_orders 
FROM burger_db
GROUP BY DATENAME(DW, order_date);

-- 2. Monthly Trend for Orders
select DATENAME(MONTH, order_date) as Month_Name, 
COUNT(DISTINCT order_id) as Total_Orders
from burger_db
GROUP BY DATENAME(MONTH, order_date);