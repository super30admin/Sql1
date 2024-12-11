CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
RETURN (
     # Write your MySQL query statement below.
 with cte as (select *, dense_rank() over ( order by salary desc) as r from Employee )
 select distinct ifnull(salary,null) from cte
where r = N
);
END