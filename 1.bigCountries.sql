# Write your MySQL query statement below

# return the name, area and population of countries whose either size is greater than 3 million or population is atleast 25 million

select name, population, area from world where population>=25000000 or area>=3000000;