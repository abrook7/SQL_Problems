# Write your MySQL query statement below
SELECT name
FROM Customer
WHERE NOT referee_id = 2 OR NOT IFNULL(referee_id,0)