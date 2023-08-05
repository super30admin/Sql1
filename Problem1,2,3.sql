-- Problem 1
SELECT name,population, area from World where area>=3000000 or population >= 25000000;

-- Problem 2

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
RETURN(
    SELECT *, DENSE_RANK() OVER(ORDER BY Salary DESC)  AS RNK FROM Employee)
    SELECT DISTINCT isull(Salary,null) from CTE WHERE rnk=N
);
END

-- Problem 3

DELETE P1
FROM Person P1 ,Person P2 WHERE P1.email=P2.email and P1.id>P2.id