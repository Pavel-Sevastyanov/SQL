SELECT title, (price * purchases) AS profit
FROM Films
ORDER BY price * purchases DESC
LIMIT 3