CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
    select DISTINCT salary from
    (select salary, dense_rank() OVER (ORDER BY salary DESC) as Ranking from employee) as ranked_salary
    WHERE Ranking = N
  );
END