SELECT Categories.name AS category,
	   CONCAT(
			  ROUND(
					IFNULL(
						   AVG(price), 0), 0), '€') AS avg_amount
FROM Sales INNER JOIN Products ON Sales.product_id = Products.id
		   RIGHT OUTER JOIN Categories ON Products.category_id = Categories.id
GROUP BY Categories.name