--SQL1 SOLUTIONS

--Big Countries

select name,population,area from World
where area >= 3000000 or population >= 25000000;



--Finding Nth highest salary

CREATE FUNCTION getNthHighestSalary(N IN NUMBER) RETURN NUMBER IS
result NUMBER;
BEGIN
    /* Write your PL/SQL query statement below */
    SELECT distinct ifnull(a.salary, NULL) into result from
   (SELECT id,salary,
   dense_rank() over (order by salary desc) as rnk from Employee) a
   where a.rnk=N;
    RETURN result;
END;



-- Duplicate Emails

DELETE FROM Person
where id in ( select a.id from (
    SELECT id,email,row_number() over (partition by email order by id) as row_num
    from Person) a
    where a.row_num != 1
);