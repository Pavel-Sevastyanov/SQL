SELECT 'bee' AS word,
		COUNT(*) AS count
FROM Files
WHERE content LIKE '% bee %' OR content LIKE 'bee %' OR content LIKE '% bee' OR content LIKE 'bee'

UNION

SELECT 'geek',
		COUNT(*) AS count
FROM Files
WHERE content LIKE '% geek %' OR content LIKE 'geek %' OR content LIKE '% geek' OR content LIKE 'geek'