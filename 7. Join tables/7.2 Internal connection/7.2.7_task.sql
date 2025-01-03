SELECT Categories.name AS category
FROM Sales INNER JOIN Products ON Sales.product_id = Products.id
		   INNER JOIN Categories ON Products.category_id = Categories.id
GROUP BY category
ORDER BY SUM(price) DESC
LIMIT 1