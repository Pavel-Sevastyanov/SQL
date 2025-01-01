SELECT name, surname
FROM Users
WHERE (SELECT COUNT(*)
	   FROM Purchases
       WHERE user_id = Users.id) = 2
ORDER BY name ASC