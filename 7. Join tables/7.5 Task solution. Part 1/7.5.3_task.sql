SELECT user_id, SUM(price * quantity) AS spending
FROM Orders INNER JOIN Products ON Orders.product_id = Products.id
GROUP BY user_id
ORDER BY spending DESC