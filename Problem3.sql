# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below

# Use self join and delete the email which has a duplicate and whose id is
  # the largest.
delete p2
from person p1, person p2 
where p1.email= p2.email and p2.id>p1.id
