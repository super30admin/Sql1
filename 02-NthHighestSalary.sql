-- Problem 2: Nth Highest Salary (https://leetcode.com/problems/nth-highest-salary/)

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
RETURN (
    # Write your MySQL query statement below.
    with cte as (
        select salary, dense_rank()
        over (order by salary desc) as rnk
        from employee
    )
    select distinct ifnull(salary, null)
    from cte
    where rnk=N
  );
END