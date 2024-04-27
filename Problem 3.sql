#Problem 3: Delete Duplicate Emails (https://leetcode.com/problems/delete-duplicate-emails/)

delete p1.*
from person p1
cross join person p2
where p1.email = p2.email #to check if the email ids are matching
and p1.id > p2.id; 