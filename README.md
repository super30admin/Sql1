# Sql1

1. Problem 1: Big Countries (https://leetcode.com/problems/big-countries/)
Select name, population, area
from world
where area >= 3000000 or population >= 25000000;

2. Problem 2: Nth Highest Salary (https://leetcode.com/problems/nth-highest-salary/)
CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
      SELECT MAX(SALARY) AS getNthHighestSalary
      FROM (
            SELECT SALARY,  DENSE_RANK() OVER (ORDER BY SALARY DESC) AS ROWNO
            FROM EMPLOYEE
            )E
      WHERE E.ROWNO = @N
        
    );
END

3. Problem 3: Delete Duplicate Emails (https://leetcode.com/problems/delete-duplicate-emails/)

with cte as 
(
select id, row_number() over (partition by email order by id asc)as rnk
from person
)

delete from cte
where rnk >1;
