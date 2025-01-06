SELECT CONCAT('(', P1.x, '; ', P1.y, ')') AS p1,
	   CONCAT('(', P2.x, '; ', P2.y, ')') AS p2,
       ABS(
	       ROUND(
			     SQRT(
				      POW(P1.x - P2.x, 2) + POW(P1.y - P2.y, 2)), 1)) AS distance
FROM Points AS P1 CROSS JOIN Points AS P2
WHERE ABS(SQRT(POW(P1.x - P2.x, 2) + POW(P1.y - P2.y, 2))) > 5 AND P1.id < P2.id