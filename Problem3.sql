-- We need to delete the duplicates so we implicitly perform a self join to filter rows that occur twice and keep only top one using the id 
-- Solved on Leetcode: Yes
-- Problems faced: None
delete p1
from Person p1 , Person p2
where p1.email = p2.email and
p1.id > p2.id
