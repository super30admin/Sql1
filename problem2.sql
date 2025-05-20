CREATE OR REPLACE FUNCTION NthHighestSalary(N INT) RETURNS TABLE (Salary INT) AS $$
BEGIN
  RETURN QUERY (
    -- Write your PostgreSQL query statement below.
    WITH CTE AS (
        SELECT e.salary, DENSE_RANK() OVER(ORDER BY e.salary DESC) AS rnk
        FROM Employee e
    )
    SELECT DISTINCT c.salary
    FROM CTE c
    WHERE c.rnk = N
  );
END;
$$ LANGUAGE plpgsql;