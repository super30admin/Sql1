CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    DECLARE M int;
    SET M = N-1
    RETURN(
        #Write your Mysql query statement below
        SELECT distinct salary
        from Employee
        order by salary desc
        limit 1 offset M
    );
END