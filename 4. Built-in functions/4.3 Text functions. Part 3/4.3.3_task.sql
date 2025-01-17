SELECT name, surname, REPLACE(email, 'outlook.com', 'pygen.ru') AS email
FROM Directors
WHERE SUBSTRING_INDEX(email, '@', -1) LIKE 'outlook.com'
ORDER BY email ASC