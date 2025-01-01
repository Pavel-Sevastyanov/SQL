SELECT name,
	   surname,
       (SELECT title
        FROM Films
        WHERE id = (SELECT film_id
					FROM Purchases
                    WHERE user_id = Users.id
                    ORDER BY (SELECT price
							  FROM Films
                              WHERE id = film_id) DESC, (SELECT title
														 FROM Films
                                                         WHERE id = film_id) ASC
                    LIMIT 1)) AS most_expensive_film
FROM Users
WHERE EXISTS (SELECT *
			  FROM Purchases
              WHERE user_id = Users.id)
ORDER BY (SELECT price
		  FROM Films
          WHERE title = most_expensive_film) DESC,
          most_expensive_film ASC,
          name ASC