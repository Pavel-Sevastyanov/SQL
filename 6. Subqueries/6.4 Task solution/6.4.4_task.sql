SELECT DISTINCT id
FROM Orders
WHERE quantity > ALL(SELECT (SELECT AVG(quantity)
				            FROM Orders AS InnerOrders
                            WHERE id = IO.id)
					 FROM Orders AS IO)