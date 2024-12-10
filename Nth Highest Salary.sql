CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  
    DECLARE M INT;
    SET  M = N-1;
RETURN(
    SELECT DISTINCT salary FROM Employee ORDER BY salary DESC LIMIT M,1 
   
  );
END


/* WITH CTE_table AS (
        SELECT id, salary, DENSE_RANK() OVER(ORDER BY salary DESC) AS RNK FROM   Employee
    )
    
    SELECT DISTINCT IFNULL(salary,NULL) FROM CTE_table WHERE RNK = N

   
*/

/*
SELECT id, DISTINCT(salary) FROM Employee ORDER BY salary DESC 
*/