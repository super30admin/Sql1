with ranked_emails as 
(
    select 
        id
        , email
        , row_number() over(partition by email order by id) as rnk
    from 
        Person
)
delete 
from person p
where p.id in (select ranked_emails.id from ranked_emails where rnk > 1)