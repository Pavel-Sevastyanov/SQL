SELECT team, 
	   day,
       (SELECT SUM(score_points)
		FROM Scores AS S
		WHERE day <= Scores.day AND team = Scores.team) AS total
FROM Scores
ORDER BY team ASC, day ASC