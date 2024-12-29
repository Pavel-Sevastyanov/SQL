SELECT SUM(running_time = MIN(running_time)) AS shortest_films, COUNT(*) AS longest_films
FROM Films
WHERE running_time = (SELECT MIN(running_time) FROM Films) OR running_time = (SELECT MAX(running_time) FROM Films)