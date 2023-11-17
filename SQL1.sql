
-- #SQL 1

-- #Problem 595

SELECT w.name, w.population, w.area
FROM World w
WHERE w.area >= '3000000' OR w.population >= '25000000';

-- #Problem 177

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
DECLARE M INT;
SET M = N - 1;
  RETURN (
      # Write your MySQL query statement below.
       SELECT DISTINCT salary FROM Employee ORDER BY salary DESC LIMIT M, 1
  );
END

-- #Problem 196

DELETE p1 FROM Person p1, Person p2
WHERE p1.email=p2.email AND p1.id> p2.id;