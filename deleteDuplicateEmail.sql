# Using Cross join
-- DELETE p1
-- FROM Person p1
-- CROSS JOIN Person p2
-- ON p1.email = p2.email AND p1.id > p2.id;

# Using self join
DELETE p1 
FROM Person p1
JOIN Person p2
ON p1.email = p2.email AND p1.id > p2.id;
