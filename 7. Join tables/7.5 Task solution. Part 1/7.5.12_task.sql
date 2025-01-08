SELECT DISTINCT buyer_id
FROM Sales
WHERE buyer_id NOT IN (SELECT DISTINCT buyer_id
					   FROM Sales INNER JOIN Products ON product_id = id AND product_id = 6) 
                       AND buyer_id IN (SELECT DISTINCT buyer_id
										FROM Sales INNER JOIN Products ON product_id = id AND product_id = 8)

