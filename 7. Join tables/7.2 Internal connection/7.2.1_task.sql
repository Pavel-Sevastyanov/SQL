SELECT DISTINCT name AS product
FROM Sales INNER JOIN Products ON Sales.product_id = Products.id