CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    RETURN (
      # Write your MySQL query statement below.
   WITH CTE AS (
            SELECT *, DENSE_RANK() OVER(ORDER BY salary DESC) AS 'rank' FROM Employee
    )
    SELECT DISTINCT IFNULL(CTE.SALARY, null) FROM CTE WHERE CTE.rank = N
  );
END