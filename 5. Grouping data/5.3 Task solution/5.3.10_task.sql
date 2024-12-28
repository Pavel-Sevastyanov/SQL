SELECT question_id
FROM Activity
WHERE action != 'skip'
GROUP BY question_id
ORDER BY SUM(answer_id IS NOT NULL) / SUM(answer_id IS NULL) DESC, question_id
LIMIT 1