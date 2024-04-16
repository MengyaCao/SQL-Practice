
SELECT customer_number
FROM orders
GROUP BY customer_number
ORDER BY COUNT(order_number) DESC LIMIT 1;

------------------------------------------------------

SELECT customer_number
FROM orders
GROUP BY customer_number
HAVING COUNT(order_number) >= ALL (SELECT COUNT(order_number) 
                                   FROM orders 
                                   GROUP BY customer_number)