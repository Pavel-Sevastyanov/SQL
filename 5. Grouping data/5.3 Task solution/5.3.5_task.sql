SELECT SUM(WEEKDAY(submit_date) in (5, 6)) AS weekend_count,
       SUM(WEEKDAY(submit_date) in (0, 1, 2, 3, 4)) AS working_count
FROM Actions