-- Solution to Problem 1
SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000

-- Solution to Problem 2 (Using windows function)
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      WITH CTE_RANK AS (
        SELECT *, DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
        FROM Employee
      )  
      SELECT DISTINCT IFNULL(salary, null)
      FROM CTE_RANK
      WHERE rnk = N
  );

-- Solution to Problem 2 (without using windows function, with variable declearation)
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  DECLARE M INT;
  SET M = N-1;
  RETURN (
    SELECT DISTINCT salary 
    FROM Employee
    ORDER BY salary DESC
    LIMIT M, 1
  );
END

-- Solution to Problem 3 (Using CROSS JOIN)
DELETE p1 
FROM Person p1 
CROSS JOIN Person p2
WHERE p1.email = p2.email AND p1.ID > p2.ID

-- Solution to Problem 3 (Alternative answer)
DELETE p1 
FROM Person p1 
JOIN Person p2
WHERE p1.email = p2.email AND p1.ID > p2.ID

-- Solution to Problem 3 (Alternative answer)
DELETE p1 
FROM Person p1, Person p2
WHERE p1.email = p2.email AND p1.ID > p2.ID

