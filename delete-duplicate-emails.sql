"""
Write a solution to delete all duplicate emails, keeping only one unique email with the smallest id.

For SQL users, please note that you are supposed to write a DELETE statement and not a SELECT one.

"""

delete 
    p1 
from 
    person p1, person p2 
where 
    p1.Email=p2.Email and p1.id > p2.id;
