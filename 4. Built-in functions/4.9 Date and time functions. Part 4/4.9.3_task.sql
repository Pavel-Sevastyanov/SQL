SELECT name, 
	   surname, 
       DATE_FORMAT(STR_TO_DATE(birth_date, '%d %b %Y'), GET_FORMAT(DATE, 'ISO')) AS birth_date,
       TIME_FORMAT(STR_TO_DATE(birth_time, 'Hours: %H, Minutes: %i'), GET_FORMAT(TIME, 'ISO')) AS birth_time
FROM Actors
WHERE MONTH(STR_TO_DATE(birth_date, '%d %b %Y')) = 9
