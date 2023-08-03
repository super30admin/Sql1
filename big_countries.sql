# Write your MySQL query statement below
WITH CTE AS (select * from world)
select name, population, area 
from CTE where area >= 3000000 or population >= 25000000;
