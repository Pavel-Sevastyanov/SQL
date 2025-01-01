SELECT name, 
       surname,
       (SELECT IFNULL(SUM(price), 0.00)
        FROM Films
        WHERE id IN (SELECT film_id
					 FROM Purchases
                     WHERE user_id = Users.id)) AS total_spending
FROM Users
ORDER BY total_spending DESC, name ASC