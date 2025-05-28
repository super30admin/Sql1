CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
    with cte as( 
      select id,salary,dense_rank() over (order by salary desc) as salaryrank from employee
    )
    select distinct ifnull(salary,null) as getNthHighestSalary
    from cte where salaryrank=N
  );
END