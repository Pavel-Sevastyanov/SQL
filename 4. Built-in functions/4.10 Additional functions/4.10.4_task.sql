SELECT name, surname, country, IF(IF(country = 'USA', rating + 10, rating) > 100, 100, IF(country = 'USA', rating + 10, rating)) AS rating
FROM Directors
ORDER BY rating DESC, name ASC