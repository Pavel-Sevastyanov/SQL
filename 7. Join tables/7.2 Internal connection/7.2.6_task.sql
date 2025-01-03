SELECT Sales.id AS sale_id, 
	   sale_date, 
       Products.name AS product, 
       Categories.name AS category
FROM Sales INNER JOIN Products ON Sales.product_id = Products.id
		   INNER JOIN Categories ON Products.category_id = Categories.id