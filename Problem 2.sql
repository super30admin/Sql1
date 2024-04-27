#Nth Highest Salary (https://leetcode.com/problems/nth-highest-salary/)

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
RETURN (
      # Write your MySQL query statement below.
      with CTE as(
        select *, dense_rank() over(order by salary desc) as rnk from employee #using dense_rank to not have holes in ranking
      )
      select distinct ifnull(CTE.salary,null) from CTE where CTE.rnk =N
      #IFNULL() function returns a specified value if the expression is NULL. Here we are showing if salaryis null then show null
  );
END