SELECT CONCAT_WS(', ', Meals.name, Drinks.name) AS combo,
	   CONCAT(Meals.price + Drinks.price, '€') AS price
FROM Meals CROSS JOIN Drinks
ORDER BY Meals.price + Drinks.price ASC, combo ASC