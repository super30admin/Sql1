DELETE p2
From person p1 JOIN person p2
ON p1.email = p2.email
Where p1.id< p2.id