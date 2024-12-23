SELECT name, surname, 
       CONCAT(REPEAT('*', CHAR_LENGTH(SUBSTRING_INDEX(email, '@', 1))), '@', SUBSTRING_INDEX(email, '@', -1)) AS email
FROM Directors
ORDER BY SUBSTRING_INDEX(email, '@', 1)