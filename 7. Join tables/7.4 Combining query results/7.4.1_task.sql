SELECT 'Mathematician' AS profession, 
	   COUNT(*) AS total
FROM Mathematicians

UNION ALL

SELECT 'Physicist',
	   COUNT(*) AS total
FROM Physicists

UNION ALL

SELECT 'Programmer',
	   COUNT(*) AS total
FROM Programmers