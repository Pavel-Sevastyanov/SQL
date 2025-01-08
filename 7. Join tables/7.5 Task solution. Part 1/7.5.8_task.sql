SELECT Departments.name AS department,
	   IFNULL(COUNT(Students.name), 0) AS students_count
FROM Students RIGHT OUTER JOIN Departments ON Students.dept_id = Departments.id
GROUP BY department
ORDER BY students_count DESC,
		 department ASC