SELECT name, surname
FROM (SELECT name, surname, 1 AS sortvalue
	  FROM Mathematicians
      
	  UNION ALL

	  SELECT name, surname, 2
	  FROM Physicists

	  UNION ALL
      
	  SELECT name, surname, 3
	  FROM Programmers) AS Prog
ORDER BY sortvalue, name DESC, surname DESC