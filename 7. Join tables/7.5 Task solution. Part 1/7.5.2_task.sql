SELECT E1.symbol AS metal, E2.symbol AS nonmetal
FROM Elements AS E1 CROSS JOIN Elements AS E2
WHERE E1.type = 'metal' AND E2.type = 'nonmetal'