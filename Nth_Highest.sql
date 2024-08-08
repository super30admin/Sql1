CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
     # Write your MySQL query statement below.
   WITH CTE as (
         SELECT *, DENSE_RANK() OVER(ORDER BY salary DESC) as rnk FROM Employee
        )
        SELECT DISTINCT IFNULL(Salary, null) FROM CTE WHERE rnk = N
  );
END