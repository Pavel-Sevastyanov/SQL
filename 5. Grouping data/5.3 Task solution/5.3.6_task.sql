SELECT ad_id, ROUND(
                    IFNULL(
                           (SUM(action = 'clicked') * 100) / (SUM(action = 'clicked') + SUM(action = 'viewed')), 
                           0), 
					2) AS rating
FROM Actions
GROUP BY ad_id
ORDER BY rating DESC