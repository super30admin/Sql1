DELETE p1 
FROM person p1 CROSS JOIN person p2
WHERE p1.email = p2.email AND p1.id > p2.id