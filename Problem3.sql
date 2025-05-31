DELETE p1 from PERSON p1
JOIN PERSON p2
ON p1.email = p2.email 
AND p1.id>p2.id