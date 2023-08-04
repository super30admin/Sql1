-- The offset for having the  highest salary would be 0, 2nd highest salary would be 1, 3rd highest would be 2..so we set N = N-1 before 
-- using LIMIT offset and row 
-- Solved on Leetcode: Yes
-- Problems faced: None
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
set N = N-1;
  RETURN (
SELECT distinct(salary)
FROM Employee 
ORDER BY salary desc 
limit N,1
      );
END