SELECT COUNT(*) AS num_of_users
FROM Purchases
WHERE film_id = (SELECT id
				 FROM Films
                 WHERE title = 'Toy Story 2')