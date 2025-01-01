SELECT name,
	   surname,
       (SELECT title
		FROM Films
        WHERE id = (SELECT film_id
					FROM Purchases
                    WHERE user_id = Users.id
                    LIMIT 1)) AS first_film
FROM Users
WHERE EXISTS (SELECT * 
			  FROM Purchases
			  WHERE user_id = Users.id) 
ORDER BY name ASC