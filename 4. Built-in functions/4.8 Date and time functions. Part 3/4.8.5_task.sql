SELECT CONCAT_WS(' ', name, surname) AS staffer,
       TIMEDIFF(TIMEDIFF(work_end, work_start), TIMEDIFF(break_end, break_start)) AS work_time
FROM Staff
ORDER BY work_time DESC, staffer ASC