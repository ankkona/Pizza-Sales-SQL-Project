-- List the top 5 most ordered pizza types along with their quantities.

SELECT TOP 5 name,SUM(quantity) as total_quantity
FROM orderdetails o
JOIN pizza p
ON o.pizza_id=p.pizza_id
JOIN pizzatypes pt
ON p.pizza_type_id=pt.pizza_type_id
GROUP BY name
ORDER BY SUM(quantity) DESC;