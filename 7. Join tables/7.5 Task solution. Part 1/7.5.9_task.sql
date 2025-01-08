SELECT name, surname, COUNT(*) AS votes_count
FROM Votes INNER JOIN Candidates ON Votes.candidate_id = Candidates.id
GROUP BY name, surname
ORDER BY votes_count DESC
LIMIT 1