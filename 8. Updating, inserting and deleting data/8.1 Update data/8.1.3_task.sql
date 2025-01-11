UPDATE Grades
SET grade = CASE 
				WHEN grade IN ('A', 'B') THEN 'Great'
                WHEN grade = 'C' THEN 'Well'
                WHEN grade IN ('D', 'E') THEN 'Bad'
			END 
            