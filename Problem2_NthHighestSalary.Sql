CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
WITH CTE AS(
    SELECT *, DENSE_RANK() OVER (Order By Salary desc) AS Rnk FROM Employee
    )

    SELECT DISTINCT IFNULL(salary, null) FROM CTE
    WHERE Rnk = N

  );
END