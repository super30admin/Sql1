--Using window function
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
       WITH cte AS(
           SELECT *, dense_rank() OVER(ORDER BY salary DESC) as rnk FROM   Employee)
       SELECT DISTINCT ifnull(salary,null) FROM cte
       WHERE rnk = N 
  );
END


--Another Solution without using window function
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
DECLARE M INT;
SET M = N-1;
  RETURN (
      # Write your MySQL query statement below.
       SELECT DISTINCT salary FROM EMPLOYEE
       ORDER BY salary DESC
       LIMIT M,1 
  );
END