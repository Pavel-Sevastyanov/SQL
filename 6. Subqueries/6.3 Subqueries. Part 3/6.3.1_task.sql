SELECT name, surname 
FROM Users
WHERE NOT EXISTS (SELECT *
			      FROM Purchases
			      WHERE user_id = Users.id)