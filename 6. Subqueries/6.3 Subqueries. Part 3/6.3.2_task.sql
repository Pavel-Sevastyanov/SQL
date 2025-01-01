SELECT title, director
FROM Films
WHERE EXISTS (SELECT *
			  FROM Purchases
              WHERE film_id = Films.id)
ORDER BY title