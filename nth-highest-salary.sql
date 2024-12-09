"""
Write a solution to find the nth highest salary from the Employee table. If there is no nth highest salary, return null.

"""

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
set n = n-1;
RETURN (
    # Write your MySQL query statement below.
    select 
        salary 
    from 
        Employee 
    order by 
        salary desc 
    limit 1 offset n
  );
END
