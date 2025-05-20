-- Write your PostgreSQL query statement below
DELETE FROM Person
USING Person p2
WHERE Person.email = p2.email
AND Person.id > p2.id;
