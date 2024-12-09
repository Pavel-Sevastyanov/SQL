SELECT CONCAT(UPPER(LEFT(name, 1)), SUBSTRING(name, 2)) AS name, 
	   CONCAT(UPPER(LEFT(surname, 1)), SUBSTRING(surname, 2)) AS surname
FROM Directors
WHERE CONVERT(name, BINARY) LIKE LOWER(name)
	  OR CONVERT(surname, BINARY) LIKE LOWER(surname)
ORDER BY name ASC