SELECT name AS country, CASE
							WHEN AVG(weather_state) <= 15 THEN 'Cold'
							WHEN AVG(weather_state) >= 25 THEN 'Hot'
							ELSE 'Warm'
						END AS weather_type
FROM Weather INNER JOIN Countries ON Weather.country_id = Countries.id 
									 AND MONTH(day) = '09' 
                                     AND YEAR(day) = '2023'
GROUP BY country