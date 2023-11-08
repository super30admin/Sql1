CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
    # Write your MySQL query statement below.
    WITH CTE AS (
      SELECT *, dense_rank() OVER (ORDER BY SALARY DESC) AS rnk FROM         Employee)
select distinct ifnull(null,salary ) from CTE where rnk=N
         );
END  