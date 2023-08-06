'''MySQL query is used to delete duplicate records from the Person table based on their email and id. It uses a self-join to match records with the same email but different ids, and then deletes the duplicate records. The record with the higher id is kept, and the record with the lower id is deleted.
'''
DELETE p1
FROM Person p1
JOIN Person p2
  ON p1.email = p2.email
  AND p1.id > p2.id;
