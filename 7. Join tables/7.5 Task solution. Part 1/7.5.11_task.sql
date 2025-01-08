SELECT S1.sub_id AS post_id, IFNULL(COUNT(S2.parent_id), 0) AS number_of_comments 
FROM Submissions AS S1 LEFT OUTER JOIN Submissions AS S2 ON S2.parent_id = S1.sub_id
WHERE S1.parent_id IS NULL
GROUP BY S1.sub_id
ORDER BY post_id DESC