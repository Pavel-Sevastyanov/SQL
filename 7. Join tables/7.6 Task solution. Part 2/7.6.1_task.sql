SELECT Users.id, 
	   IFNULL(COUNT(order_date), 0) AS purchases_in_2023
FROM Orders RIGHT OUTER JOIN Users ON buyer_id = Users.id AND YEAR(order_date) = '2023' 
GROUP BY Users.id