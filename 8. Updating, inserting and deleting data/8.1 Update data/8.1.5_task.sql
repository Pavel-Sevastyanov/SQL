UPDATE Grades INNER JOIN Students ON student_id = Students.id
			  INNER JOIN Classes ON class_id = Classes.id
SET grade = 5
WHERE student = 'Mary Jane' AND name = 'Math'