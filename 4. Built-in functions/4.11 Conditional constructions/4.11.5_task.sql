SELECT name, surname, status
FROM Clients
ORDER BY CASE
             WHEN status = 'Gold' THEN 1
             WHEN status = 'Silver' THEN 2
             WHEN status = 'Bronze' THEN 3
             WHEN status = 'Basic' THEN 4
		 END, name