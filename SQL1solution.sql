# 595. Probelm 1. Big Countries .Write your MySQL query statement below
Select name, population, area
From World
Where area >=3000000 OR population >= 25000000;

#177. Problem 2. Nth Highest Salary
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
RETURN (
# Write your MySQL query statement below.
With CTE AS (
    Select *, DENSE_RANK() OVER(ORDER BY salary DESC) AS rnk
    FROM Employee)
    SELECT DISTINCT IFNULL (salary, null)  from CTE 
    WHERE rnk = N
 );
END

#196. Problem 3. Delete Duplicate Emails
# Write your MySQL query statement below
DELETE p FROM  Person p, Person b
WHERE p.email = b.email and p.id > b.id;

