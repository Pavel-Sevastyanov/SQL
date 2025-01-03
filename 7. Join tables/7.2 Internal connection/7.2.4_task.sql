SELECT name AS bestseller
FROM Sales INNER JOIN Products ON Sales.product_id = Products.id
WHERE sale_date = '2023-09-12'
GROUP BY bestseller
ORDER BY COUNT(*) DESC
LIMIT 1