SELECT Playback.id AS session_id
FROM Playback 
WHERE Playback.id NOT IN (SELECT P1.id
						  FROM Ads INNER JOIN Playback AS P1 ON Ads.user_id = P1.user_id
                          WHERE time_stamp BETWEEN start_time AND end_time)