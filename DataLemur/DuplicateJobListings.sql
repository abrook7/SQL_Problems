--https://datalemur.com/questions/duplicate-job-listings

SELECT COUNT(company_id) as co_w_duplicate_jobs
FROM (SELECT company_id, title, description, COUNT(company_id) as repeats FROM job_listings GROUP BY 1,2,3) as duplicates
WHERE repeats > 1;