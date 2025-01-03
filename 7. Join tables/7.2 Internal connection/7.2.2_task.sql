SELECT DISTINCT name AS product
FROM Sales INNER JOIN Products ON Sales.product_id = Products.id
WHERE sale_date = '2023-09-12'