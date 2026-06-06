-- Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT category,SUM(quantity) as total_quantity
FROM orderdetails o
JOIN pizza p
ON o.pizza_id=p.pizza_id
JOIN pizzatypes pt
ON p.pizza_type_id=pt.pizza_type_id
GROUP BY category;