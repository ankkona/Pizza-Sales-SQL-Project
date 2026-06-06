-- Identify the highest-priced pizza.

SELECT TOP 1 name,price as highest_priced_pizza
FROM pizza p1
INNER JOIN
pizzatypes p2
ON p1.pizza_type_id=p2.pizza_type_id
ORDER BY price DESC;