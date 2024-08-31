CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
   WITH CTE AS (
    SELECT salary, DENSE_RANK() OVER(ORDER BY SALARY DESC) AS 'rnk' from Employee
    ) 
    SELECT DISTINCT(salary) from cte where rnk = n
  );
END