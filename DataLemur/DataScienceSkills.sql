--https://datalemur.com/questions/matching-skills

WITH PYTHON_KNOWLEDGE as 
(
  SELECT candidates.candidate_id as candidate_id, candidates.skill as skill1, candidate_temp.skill as skill2 
  FROM candidates 
  INNER JOIN candidates as candidate_temp
    ON candidates.candidate_id = candidate_temp.candidate_id
  WHERE candidates.skill = 'Python' AND candidate_temp.skill = 'Tableau'
)

SELECT candidates.candidate_id
FROM candidates
INNER JOIN PYTHON_KNOWLEDGE
  ON candidates.candidate_id = PYTHON_KNOWLEDGE.candidate_id
WHERE candidates.skill = 'PostgreSQL';