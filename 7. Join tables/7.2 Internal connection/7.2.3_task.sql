SELECT name AS product,
	   CONCAT(SUM(price), '€') AS amount
FROM Sales INNER JOIN Products ON Sales.product_id = Products.id
GROUP BY product