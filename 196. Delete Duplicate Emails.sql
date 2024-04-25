-- Using self join
DELETE p1 FROM 
Person p1, 
Person p2
WHERE p1.email = p2.email
AND p1.id > p2.id

-- Using Cross join
DELETE p1 FROM 
Person p1 CROSS JOIN
Person p2
WHERE p1.email = p2.email
AND p1.id > p2.id