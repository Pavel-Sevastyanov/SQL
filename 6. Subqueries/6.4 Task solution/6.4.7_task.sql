SELECT CASE
			WHEN (SELECT COUNT(*)
				  FROM Moscow
                  WHERE score >= 90) 
                  > 
                  (SELECT COUNT(*)
				   FROM SaintPetersburg
                   WHERE score >= 90) 
			THEN 'Moscow University'
			WHEN (SELECT COUNT(*)
				  FROM SaintPetersburg
                  WHERE score >= 90) 
                  > 
                  (SELECT COUNT(*)
                   FROM Moscow
                   WHERE score >= 90)  
			THEN 'Saint Petersburg University'
			ELSE 'No winner'
	   END AS winner