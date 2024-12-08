SELECT REPEAT(english, CHAR_LENGTH(english)) AS english
FROM Palindromes
WHERE english LIKE REVERSE(english) 
	  AND russian NOT LIKE REVERSE(russian)