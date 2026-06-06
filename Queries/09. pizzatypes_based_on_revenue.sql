-- Determine the top 3 most ordered pizza types based on revenue.

SELECT TOP 3 name,category,SUM(quantity*price) as revenue
FROM orderdetails AS od
JOIN pizza p
ON od.pizza_id=p.pizza_id
JOIN pizzatypes pt
ON p.pizza_type_id=pt.pizza_type_id
GROUP BY name,category
ORDER BY revenue DESC;