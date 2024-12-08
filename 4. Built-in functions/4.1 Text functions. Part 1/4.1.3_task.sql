SELECT name, surname
FROM Directors
WHERE CONVERT(name, BINARY) = LOWER(name) OR CONVERT(surname, BINARY) = LOWER(surname)
ORDER BY name