SELECT T1.name AS home_team,
	   T2.name AS away_team
FROM Teams AS T1 CROSS JOIN Teams AS T2
WHERE T1.name != T2.name