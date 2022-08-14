# Write your MySQL query statement below
SELECT 
id,
CASE
    WHEN p_id IS null THEN 'Root'
    WHEN id IN (
        SELECT p_id
        FROM Tree
        WHERE p_id IS NOT NULL
        GROUP BY p_id
        )
        THEN 'Inner'
ELSE 'Leaf'
END AS type
FROM Tree
ORDER BY id ASC