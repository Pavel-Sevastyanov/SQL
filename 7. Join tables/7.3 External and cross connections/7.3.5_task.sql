SELECT MaleStaff.staffer AS male_staffer,
	   FemaleStaff.staffer AS female_staffer
FROM MaleStaff CROSS JOIN FemaleStaff
WHERE ABS(MaleStaff.age - FemaleStaff.age) < 5
ORDER BY male_staffer, female_staffer