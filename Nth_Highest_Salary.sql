CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      WITH CTE AS (SELECT *, DENSE_RANK() OVER(ORDER BY SALARY) as rnk FROM Employee) 
       select distinct ifnull (salary, null) from CTE where rnk = N
  );
END