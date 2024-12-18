SELECT name, surname, IF(country = 'England', 'England', 'Other country') AS country
FROM Directors
ORDER BY name ASC