SELECT SUM(apple_count) AS apple_count, 
	   SUM(orange_count) AS orange_count
FROM (SELECT SmallBoxes.apple_count, SmallBoxes.orange_count
	  FROM SmallBoxes INNER JOIN BigBoxes ON small_box_id = SmallBoxes.id

	  UNION ALL

	  SELECT apple_count, orange_count
	  FROM BigBoxes) AS AllBoxes 