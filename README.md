# Sql1

1. Problem 1: Big Countries (https://leetcode.com/problems/big-countries/)
# Write your MySQL query statement below
SELECT name, population, area
FROM World
WHERE area>=3000000  OR population>=25000000

2. Problem 2: Nth Highest Salary (https://leetcode.com/problems/nth-highest-salary/)
# Write your MySQL query statement below
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
DECLARE M int;
SET M=N-1;
  RETURN (
    SELECT DISTINCT IFNULL(salary, null) FROM Employee ORDER BY salary DESC LIMIT M,1
  );
END

3. Problem 3: Delete Duplicate Emails (https://leetcode.com/problems/delete-duplicate-emails/)
# Write your MySQL query statement below
DELETE p1 
FROM person p1, person p2 
WHERE p1.email=p2.email AND p1.id>p2.id
