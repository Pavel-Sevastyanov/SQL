SELECT score, 
	   (SELECT COUNT(DISTINCT score)
        FROM Scores AS InnerScores
        WHERE score >= Scores.score) AS gamer_rank
FROM Scores
ORDER BY gamer_rank DESC