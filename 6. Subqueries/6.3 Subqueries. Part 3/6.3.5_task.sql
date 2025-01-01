SELECT name, 
	   surname, 
       (SELECT COUNT(*)
        FROM Purchases
        WHERE user_id = Users.id) AS num_of_films
FROM Users
ORDER BY num_of_films DESC, name ASC