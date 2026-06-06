-- Analyze the cumulative revenue generated over time.
WITH cumulativeRevenue AS(
SELECT date,
SUM(quantity*price) as revenue
FROM orderdetails AS od 
JOIN pizza AS p 
ON od.pizza_id = p.pizza_id
JOIN orders AS o ON o.order_id = od.order_id
GROUP BY date
)
SELECT TOP 10 date,
SUM(revenue) OVER (ORDER BY date) as revenue
FROM cumulativeRevenue;