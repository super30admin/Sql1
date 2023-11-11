CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN 
 RETURN (
   select salary from (select *, dense_rank() over(order by salary) as rk from Employee) as a
     where rk = n
     limit 1
   );
END;
