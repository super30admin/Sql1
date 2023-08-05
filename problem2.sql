-- M is a variable which will be used tocalculate the offset for our nth highest sal
-- We will set it to N - 1 since our offset will start from zero
-- We will return the salary of the employee who is at the Nth highest position

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
DECLARE M INT;
SET M = N - 1;
  RETURN (
    SELECT DISTINCT(salary)
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET M 
  );
END