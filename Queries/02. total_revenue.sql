-- Calculate the total revenue generated from pizza sales.

SELECT ROUND(SUM(price*quantity),2) as total_revenue
FROM orderdetails o
INNER JOIN
pizza p
ON o.pizza_id=p.pizza_id;