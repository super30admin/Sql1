# Write your MySQL query statement below
with temp_table as(
    select id,email,row_number() over(partition by email order by id ASC) as rnk from Person
)
delete from Person
where id IN(
    select id from temp_table where rnk>1
)