SELECT R2.driver_id, IFNULL(COUNT(DISTINCT R1.id), 0) AS count
FROM Rides AS R1 RIGHT OUTER JOIN Rides AS R2 ON R1.passenger_id = R2.driver_id
GROUP BY R2.driver_id