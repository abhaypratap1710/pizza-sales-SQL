-- Group the orders by date and calculate the average number of pizzas ordered per day.


SELECT 
    AVG(quantity) avg_per_day
FROM
    (SELECT 
        (order_date) AS order_date,
            SUM(order_details.quantity) AS quantity
    FROM
        orders
    JOIN order_details ON order_details.order_id = orders.order_id
    GROUP BY order_date) AS order_quantity;