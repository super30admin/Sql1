CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
    select if((select count(*) from employee) >=N , salary, null ) from
        (select salary, dense_rank() over (order by salary desc) as rn from employee) e
    where rn = N
    group by 1
  );
END