DELETE FROM Purchases
USING Purchases INNER JOIN Users ON user_id = Users.id
WHERE user = 'Matt Damon';

DELETE FROM Users
WHERE user = 'Matt Damon'
