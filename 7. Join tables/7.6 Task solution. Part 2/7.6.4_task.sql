SELECT COUNT(*) AS users_count
FROM Subscriptions AS Sub LEFT OUTER JOIN Streams ON (Sub.user_id = Streams.user_id) 
													  AND YEAR(stream_date) = 2023 
WHERE ('2023' BETWEEN YEAR(start_date) AND YEAR(end_date)) 
	  AND stream_date IS NULL