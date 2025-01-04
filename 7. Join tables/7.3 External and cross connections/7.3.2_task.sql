SELECT name AS product,
	   IFNULL(MIN(sale_date), 'Not sold') AS first_sale
FROM Sales RIGHT OUTER JOIN Products ON Sales.product_id = Products.id
GROUP BY name