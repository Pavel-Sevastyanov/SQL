UPDATE Grades INNER JOIN Classes ON class_id = Classes.id
SET grade = NULL
WHERE date_of_receipt = '2023-07-26' AND Classes.id = 3