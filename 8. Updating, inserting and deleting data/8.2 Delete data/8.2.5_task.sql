DELETE FROM Purchases
USING Purchases INNER JOIN Films ON Films.id = film_id
WHERE title LIKE 'Toy Story%';

DELETE FROM Films
WHERE title LIKE 'Toy Story%'