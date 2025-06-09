# Sql1

1. Problem 1: Big Countries (https://leetcode.com/problems/big-countries/)

A country is big if:

it has an area of at least three million (i.e., 3000000 km2), or
it has a population of at least twenty-five million (i.e., 25000000).
Write a solution to find the name, population, and area of the big countries.

Return the result table in any order.

The result format is in the following example.

------------------------------------------------------------------------------------------------
Solution:

SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000;



------------------------------------------------------------------------------------------------
2. Problem 2: Nth Highest Salary (https://leetcode.com/problems/nth-highest-salary/)

Write a solution to find the nth highest distinct salary from the Employee table. If there are less than n distinct salaries, return null.

The result format is in the following example.

------------------------------------------------------------------------------------------------
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
    WITH Ranked AS (
      SELECT DISTINCT
        salary,
        DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
      FROM Employee
    )
    SELECT salary
    FROM Ranked
    WHERE rnk = N
  );
END;

------------------------------------------------------------------------------------------------


3. Problem 3: Delete Duplicate Emails (https://leetcode.com/problems/delete-duplicate-emails/)


Write a solution to delete all duplicate emails, keeping only one unique email with the smallest id.

For SQL users, please note that you are supposed to write a DELETE statement and not a SELECT one.

For Pandas users, please note that you are supposed to modify Person in place.

After running your script, the answer shown is the Person table. The driver will first compile and run your piece of code and then show the Person table. The final order of the Person table does not matter.

The result format is in the following example.

 
------------------------------------------------------------------------------------------------


DELETE p1
FROM Person p1
JOIN Person p2
  ON p1.email = p2.email
WHERE p1.id > p2.id;

------------------------------------------------------------------------------------------------
