SELECT CONCAT('[', CONCAT_WS('; ', a, b), ']') AS 'range',
	   ROUND(RAND() * (b - a) + a) AS random_value
FROM Ranges
ORDER BY id