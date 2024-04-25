-- Nth highest salary

/*Write a solution to find the nth highest salary from the Employee table. 
If there is no nth highest salary, return null. 

Answer as follows: 

CTE named cte select all columns from the table Employee, and add a new column rnk using danse_rank() window function.

danse_rank() assigns a rank to each row based on the salary column in descending order.
Rows with the same salary are assigned the same rank, and no gaps are left between ranks.

IFNULL() function is used for cases where the salary value is NULL*/

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (

      WITH cte AS (
        SELECT *, DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk FROM Employee)

        SELECT DISTINCT IFNULL (salary, null) 
        FROM cte 
        WHERE rnk = N
  );
END

-- other mathod:  using LIMIT clause



CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    SET N = N-1; 
    -- adjusts the value of N to match the indexing used in the LIMIT.

  RETURN (

      IFNULL((SELECT DISTINCT salary FROM Employee ORDER BY salary DESC LIMIT N,1),NULL)
  );
END