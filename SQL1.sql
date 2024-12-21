# Problem 1: Big Countries (https://leetcode.com/problems/big-countries/)
# Write your MySQL query statement below
SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000;

# Problem 2: Nth Highest Salary (https://leetcode.com/problems/nth-highest-salary/)
# Write your MySQL query statement below
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
       # Write your MySQL query statement below.
        WITH TEMP AS
        (
            SELECT id, salary, DENSE_RANK() OVER(ORDER BY salary DESC) AS ranks
            FROM Employee
        )
        SELECT IFNULL(salary, null)
        FROM TEMP
        WHERE ranks = N
  );
END

# Problem 3: Delete Duplicate Emails (https://leetcode.com/problems/delete-duplicate-emails/)
# Write your MySQL query statement below
DELETE p2
FROM Person p1
JOIN Person p2
ON p1.email = p2.email AND p2.id > p1.id 