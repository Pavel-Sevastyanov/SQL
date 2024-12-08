SELECT english, russian
FROM Palindromes
WHERE english LIKE REVERSE(english) AND russian LIKE REVERSE(russian)
ORDER BY english