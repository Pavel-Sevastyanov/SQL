SELECT DISTINCT O1.customer_id
FROM Orders AS O1 INNER JOIN Orders AS O2 ON O1.customer_id = O2.customer_id 
											 AND ABS(datediff(O1.order_date, O2.order_date)) < 7 
											 AND O1.id != O2.id
ORDER BY customer_id