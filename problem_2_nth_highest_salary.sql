CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
RETURN(
    WITH cte AS (
        SELECT salary, DENSE_RANK() OVER (ORDER BY salary desc) as rnk
        FROM Employee
    )

    SELECT DISTINCT(salary) from cte as highest
    WHERE rnk = n);
END