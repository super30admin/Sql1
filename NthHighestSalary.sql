CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    Declare m  int;
    set m = (n-1);
RETURN (
    select distinct salary from employee order by salary desc 
    limit m,1 
);
END