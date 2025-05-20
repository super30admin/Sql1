# Write your MySQL query statement below
with cte as(
    select id,row_number() over (partition by email order by id) as rnk
    from person
)
delete
from person
where id in(select id 
            from cte 
            where rnk > 1);
