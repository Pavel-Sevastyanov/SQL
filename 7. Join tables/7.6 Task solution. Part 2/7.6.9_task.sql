SELECT Members.id, 
	   name,
       CASE
		   WHEN IFNULL(100 * COUNT(visit_id) / COUNT(Visits.id), 0) >= 80 THEN 'Diamond'
           WHEN IFNULL(100 * COUNT(visit_id) / COUNT(Visits.id), 0) >= 50 THEN 'Gold'
           WHEN COUNT(Visits.id) = 0 THEN 'Bronze'           
           WHEN IFNULL(100 * COUNT(visit_id) / COUNT(Visits.id), 0) BETWEEN 0 AND 50 THEN 'Silver'
	   END AS status
FROM Members LEFT OUTER JOIN Visits ON member_id = Members.id
		     LEFT OUTER JOIN Purchases ON Visits.id = visit_id
GROUP BY Members.id, name