# Write your MySQL query statement below
delete tgt
    from person tgt 
    inner join
    person stg
on tgt.email = stg.email and stg.id < tgt.id