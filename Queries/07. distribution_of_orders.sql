-- Determine the distribution of orders by hour of the day.
SELECT DATEPART(HOUR,time) as hour,
COUNT(order_id) as order_count
FROM orders
GROUP BY DATEPART(HOUR,time)
ORDER BY DATEPART(HOUR,time)
