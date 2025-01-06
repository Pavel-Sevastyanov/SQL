SELECT '[0-5)' AS session_duration,
	   COUNT(*) AS total
FROM Sessions
WHERE duration BETWEEN 0 AND (5 * 60 - 1)

UNION

SELECT '[5-10)' AS session_duration,
	   COUNT(*) AS total
FROM Sessions
WHERE duration BETWEEN (5 * 60) AND (10 * 60 - 1)

UNION

SELECT '[10-15)' AS session_duration,
	   COUNT(*) AS total
FROM Sessions
WHERE duration BETWEEN (10 * 60) AND (15 * 60 - 1)

UNION

SELECT '15 or more' AS session_duration,
	   COUNT(*) AS total
FROM Sessions
WHERE duration >= (15 * 60)