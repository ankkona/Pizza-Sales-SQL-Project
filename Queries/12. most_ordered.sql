-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.

WITH mostOrdered AS(
SELECT name,category,
ROUND(SUM(quantity*price),1) as revenue
FROM orderdetails o
JOIN pizza p
ON o.pizza_id=p.pizza_id
JOIN pizzatypes pt
ON p.pizza_type_id=pt.pizza_type_id
GROUP BY name,category
),
rankedPizzas AS(
SELECT name,category,revenue,
ROW_NUMBER() OVER (PARTITION BY category
ORDER BY revenue) as ranking
FROM mostOrdered
)
SELECT name,category,revenue,ranking
FROM rankedPizzas
WHERE ranking <=3;


 