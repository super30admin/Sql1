# Sql1

1. Problem 1: Big Countries (https://leetcode.com/problems/big-countries/)
Solution:

SELECT name, population, area
FROM World 
WHERE area >= 3000000 
OR population >=25000000;

2. Problem 2: Nth Highest Salary (https://leetcode.com/problems/nth-highest-salary/)
Solution:

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      with cte as(select id, salary, DENSE_RANK()
      OVER (ORDER BY salary DESC) AS dns_rnk
      FROM Employee)

      SELECT DISTINCT IFNULL(salary, null)
      FROM cte
      WHERE dns_rnk = N

  );
END

3. Problem 3: Delete Duplicate Emails (https://leetcode.com/problems/delete-duplicate-emails/)
Solution:

DELETE P1 
FROM Person P1
JOIN Person P2
Where P1.email = P2.email AND P1.id > P2.id
