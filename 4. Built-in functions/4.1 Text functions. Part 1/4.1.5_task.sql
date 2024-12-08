SELECT REPEAT('*', CHAR_LENGTH(name)) AS name, surname
FROM Directors
ORDER BY CHAR_LENGTH(name) DESC, surname