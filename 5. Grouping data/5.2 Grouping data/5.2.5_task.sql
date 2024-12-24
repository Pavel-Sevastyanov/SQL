SELECT SUBSTRING_INDEX(email, '@', -1) AS domain,
       GROUP_CONCAT(SUBSTRING_INDEX(email, '@', 1) ORDER BY email SEPARATOR ', '  ) AS users
FROM Directors
GROUP BY domain
ORDER BY domain ASC