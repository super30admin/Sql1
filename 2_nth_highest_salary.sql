CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
        WITH CTE AS (
            SELECT *, DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
        FROM Employee)
        SELECT DISTINCT IFNULL(salary, NULL) FROM CTE WHERE rank=N

  );
END