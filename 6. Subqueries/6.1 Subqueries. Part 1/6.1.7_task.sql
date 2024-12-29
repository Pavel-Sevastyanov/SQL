SELECT title
FROM Films
WHERE running_time > ANY (SELECT running_time FROM Films WHERE director = 'Brad Bird')
ORDER BY title ASC