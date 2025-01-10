SELECT P1.id AS p1,
       P2.id AS p2,
       ABS((P1.x - P2.x) * (P1.y - P2.y)) AS area
FROM Points AS P1 CROSS JOIN Points AS P2 ON P1.id < P2.id
WHERE (P1.x - P2.x) * (P1.y - P2.y) != 0
ORDER BY area DESC, p1 ASC, p2 ASC