SELECT DISTINCT C1.user_id
FROM Confirmations AS C1 CROSS JOIN Confirmations AS C2
WHERE ABS(to_seconds(C1.time_stamp) - to_seconds(C2.time_stamp)) <= 24 * 3600
	  AND C1.user_id = C2.user_id
	  AND C1.time_stamp != C2.time_stamp