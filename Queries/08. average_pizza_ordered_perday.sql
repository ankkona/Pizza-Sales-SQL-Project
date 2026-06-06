-- Group the orders by date and calculate the average number of pizzas ordered per day.

WITH dailyorders AS(
SELECT date,SUM(quantity) as total
FROM orderdetails od
JOIN orders o
ON od.order_id=o.order_id
GROUP BY date
)
SELECT AVG(total) as average_pizza_ordered
FROM dailyorders;


