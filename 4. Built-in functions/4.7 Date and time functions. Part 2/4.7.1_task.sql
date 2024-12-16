SELECT id,
	   SUBSTRING_INDEX(actor, ' ', 1) AS name, 
       SUBSTRING_INDEX(actor, ' ', -1) AS surname,
	   DATE(birth_date) AS birth_date,
       LPAD(TIME(birth_date), 8, '0') AS birth_time
FROM Actors
