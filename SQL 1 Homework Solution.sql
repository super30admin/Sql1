# Sql1

# Problem 1: Big Countries (https://leetcode.com/problems/big-countries/)

SELECT name, population, area FROM World
WHERE area >= 3000000 OR population >=25000000


# Problem 2: Nth Highest Salary (https://leetcode.com/problems/nth-highest-salary/)

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
         WITH CTE AS (
         SELECT *, DENSE_RANK() OVER (ORDER BY SALARY DESC) AS rnk
        FROM EMPLOYEE
            ) 
         SELECT DISTINCT IFNULL(SALARY,null) FROM CTE WHERE rnk = N

  );
END

# Problem 3: Delete Duplicate Emails (https://leetcode.com/problems/delete-duplicate-emails/)

DELETE p1 from Person p1 
INNER JOIN Person p2 on p1.email = p2.email AND p1.id > p2.id
