CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
Set N = N-1;
  RETURN (
     # Write your MySQL query statement below.
    SELECT DISTINCT salary FROM Employee ORDER BY Salary DESC
    LIMIT 1 OFFSET N
 );
END