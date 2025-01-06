SELECT suit, rankvalue
FROM Suits CROSS JOIN Ranks
ORDER BY CASE suit
			 WHEN 'Spades' THEN 1
			 WHEN 'Clubs' THEN 2
			 WHEN 'Diamonds' THEN 3
			 WHEN 'Hearts' THEN 4
		 END,
		 CASE rankvalue
			 WHEN 'Jack' THEN 11
			 WHEN 'Queen' THEN 12
			 WHEN 'King' THEN 13
			 WHEN 'ACE' THEN 14
		     ELSE CONVERT(rankvalue, SIGNED)
		 END