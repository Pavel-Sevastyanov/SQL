SELECT title, director
FROM Films
WHERE NOT title LIKE '% _%'
ORDER BY title