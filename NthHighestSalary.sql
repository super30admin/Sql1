--Did this code successfully run on Leetcode : Yes
--Any problem you faced while coding this : No

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      WITH CTE AS
      (select id, salary, dense_rank() over (order by salary desc) as rnk from Employee)
      select distinct ifnull(salary, null) from CTE where rnk = N
  );
END