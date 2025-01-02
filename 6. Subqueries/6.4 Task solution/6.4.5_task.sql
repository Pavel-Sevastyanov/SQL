SELECT id
FROM Candidates
WHERE years_of_exp >= 2 AND (SELECT SUM(Score)
							 FROM Rounds
                             WHERE interview_id = Candidates.interview_id) > 15