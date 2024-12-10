CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
SET N=N-1;
    
    RETURN (
        SELECT distinct salary 
        FROM Employee 
        ORDER BY salary DESC 
        LIMIT 1 OFFSET N
    );
END    