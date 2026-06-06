-- Calculate the percentage contribution of each pizza type to total revenue.

WITH percentageContribution AS(
SELECT category,
SUM(quantity*price) as revenue
FROM orderdetails AS od
JOIN pizza p
ON od.pizza_id=p.pizza_id
JOIN pizzatypes pt
ON p.pizza_type_id=pt.pizza_type_id
GROUP BY category
)
SELECT category,
ROUND(
revenue*100.0/SUM(revenue) OVER(),2
) as revenue_pct
FROM percentageContribution;