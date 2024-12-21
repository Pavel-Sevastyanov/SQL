SELECT name, surname,
	   CASE
           WHEN time = '01:00:00' THEN 70
           WHEN HOUR(time) > 0 THEN 0
           WHEN MINUTE(time) <= 30 THEN 100
           ELSE 130 - MINUTE(time)
       END AS 'score'
FROM Results
ORDER BY score DESC, name ASC, surname ASC