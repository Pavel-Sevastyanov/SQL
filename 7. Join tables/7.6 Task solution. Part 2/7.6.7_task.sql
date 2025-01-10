SELECT Salespersons.id, 
	   IFNULL(SUM(price), 0) AS total
FROM Orders LEFT OUTER JOIN Customers ON customer_id = Customers.id 
	 RIGHT OUTER JOIN Salespersons ON salesperson_id = Salespersons.id
GROUP BY Salespersons.id