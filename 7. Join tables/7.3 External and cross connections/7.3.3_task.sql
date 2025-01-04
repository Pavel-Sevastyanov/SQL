SELECT name AS product,
	   CONCAT(IF(SUM(product_id) IS NULL, 0, SUM(price)), '€') AS amount
FROM Sales RIGHT OUTER JOIN Products ON Sales.product_id = Products.id
GROUP BY name 