DELETE FROM Purchases
WHERE user_id = (SELECT id
				 FROM users
                 WHERE user = 'Matt Damon')
ORDER BY id DESC
LIMIT 2