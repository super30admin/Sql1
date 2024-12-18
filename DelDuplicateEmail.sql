DELETE u1
FROM users u1
INNER JOIN users u2
ON u1.email = u2.email
WHERE u1.id > u2.id;