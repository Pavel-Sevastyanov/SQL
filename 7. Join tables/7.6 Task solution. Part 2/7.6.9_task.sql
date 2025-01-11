SELECT request_at AS day,
	   ROUND(
			 SUM(status IN ('cancelled_by_client', 'cancelled_by_driver')) / COUNT(*), 2) AS cancellation_rate
FROM Trips LEFT OUTER JOIN Users AS U1 ON client_id = U1.id 
		   LEFT OUTER JOIN Users AS U2 ON driver_id = U2.id 
WHERE U1.banned = 'no' AND U2.banned = 'no'
GROUP BY request_at
HAVING DAY(request_at) BETWEEN 1 AND 3