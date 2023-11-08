CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  #SET N = N-1;
  RETURN (
     select distinct ifnull(null,salary) from (select salary, dense_rank() over (order by salary desc) as sal_rank from Employee) temp
     where temp.sal_rank = N
      
  );
END

