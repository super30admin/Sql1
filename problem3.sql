-- We create two table aliases and create a self join on both the tables
-- where email is the same and id is greater than the second table.


DELETE p1 FROM Person p1, Person p2
WHERE p1.email = p2.email
AND p1.id > p2.id;