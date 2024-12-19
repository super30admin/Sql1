# Write your MySQL query statement below
DELETE FROM Person
WHERE id IN(
    SELECT id FROM
    (SELECT *, ROW_NUMBER() OVER(PARTITION BY email ORDER BY id) AS Instances FROM Person )p
    WHERE p.Instances>1)