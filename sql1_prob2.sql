CREATE OR REPLACE FUNCTION NthHighestSalary(N INT) RETURNS TABLE (Salary INT) AS $$
BEGIN
  RETURN QUERY (
    with CTE as (
        Select distinct e.Salary as rankedSalary, dense_rank() over (order by e.Salary desc) as rnk 
            from Employee e)
    select e.rankedSalary as Salary 
        from CTE e
    where rnk= N
      
  );
END;
$$ LANGUAGE plpgsql;

