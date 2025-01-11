UPDATE Grades INNER JOIN Students ON student_id = Students.id
SET grade = 5
WHERE student = 'Peter Parker';

SELECT *
FROM Grades