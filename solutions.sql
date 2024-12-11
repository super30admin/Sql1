--1. Problem 1: Big Countries (https://leetcode.com/problems/big-countries/)
select name,population,area from world where 
area >= 3000000 or population >= 25000000
order by name

--2. Problem 2: Nth Highest Salary (https://leetcode.com/problems/nth-highest-salary/)
CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
   select salary from (
        select distinct salary, DENSE_RANK() OVER (ORDER BY SALARY DESC) AS    rank_row
        from employee)ranked_salaries
    WHERE rank_row = @N

    );
END

--3. Problem 3: Delete Duplicate Emails (https://leetcode.com/problems/delete-duplicate-emails/)
/* Write your T-SQL query statement below */
WITH cte AS (
    SELECT id, email, ROW_NUMBER() OVER (PARTITION BY email ORDER BY id ASC) AS row_num
    FROM Person
)
delete from Person where id in (select id from cte where row_num > 1);