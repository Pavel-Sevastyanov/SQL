SELECT QUARTER(birth_date) AS quarter,
       GROUP_CONCAT(
                    CONCAT_WS(' ', name, surname)
                    ORDER BY CONCAT_WS(' ', name, surname)
                    SEPARATOR ', '
                    ) AS directors
FROM Directors
GROUP BY quarter
HAVING COUNT(*) > 1