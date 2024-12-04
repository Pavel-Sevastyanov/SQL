SELECT title, director, release_year
FROM Films
WHERE release_year NOT IN (2004, 2008, 2012)
ORDER BY 2, 3 DESC