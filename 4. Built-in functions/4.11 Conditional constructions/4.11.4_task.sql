SELECT name, surname,
       CASE
           WHEN 
                SUBSTRING_INDEX(email, '@', -1) = 'midtown.com' 
                AND CHAR_LENGTH(SUBSTRING_INDEX(email, '@', 1)) >= 2
                AND (LEFT(email, 1) NOT BETWEEN '0' AND '9')
		   THEN 'Correct'
           ELSE 'Incorrect'
       END AS 'email_status'
FROM Students
ORDER BY name ASC
       