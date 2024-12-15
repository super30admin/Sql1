-- Write your PostgreSQL query statement below
with cte as (
    -- recrods i want to keep
    select min(id) as id, email from Person group by email
)
delete from Person
where id not in (select id from cte);