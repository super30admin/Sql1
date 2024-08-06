create function getNthHighestSalary(N int) returns int
begin
      return (
       with t1 as (
        select *, dense_rank() over (order by salary desc) as rnk
        from Employee
       )
       select distinct salary
       from t1
       where rnk = N
    );
end
