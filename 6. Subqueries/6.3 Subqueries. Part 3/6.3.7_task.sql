SELECT name, surname
FROM Users
ORDER BY (SELECT COUNT(*)
	      FROM Purchases
          WHERE user_id = Users.id) DESC
LIMIT 1