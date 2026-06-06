-- Identify the most common pizza size ordered.

SELECT size,SUM(quantity) as common_pizza_size
FROM orderdetails o
JOIN
pizza p
ON o.pizza_id=p.pizza_id
GROUP BY size;

