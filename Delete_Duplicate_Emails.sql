delete p2.* 
from Person P1 
join Person P2
on P1.email = P2.email
and P1.id < p2.id
