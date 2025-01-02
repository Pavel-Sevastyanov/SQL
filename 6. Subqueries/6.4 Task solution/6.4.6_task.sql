SELECT id, customer_id, order_type
FROM Orders
WHERE IF(
		 EXISTS (SELECT *
				 FROM Orders AS InnerOrders
				 WHERE order_type = 0 AND customer_id = Orders.customer_id), 
         order_type = 0, 
         order_type IN (0, 1))