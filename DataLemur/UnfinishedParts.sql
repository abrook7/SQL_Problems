--https://datalemur.com/questions/tesla-unfinished-parts

SELECT DISTINCT part  
FROM parts_assembly
WHERE finish_date IS NULL AND assembly_step != 1;