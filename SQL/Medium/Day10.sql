-- link: https://leetcode.com/problems/last-person-to-fit-in-the-bus/submissions/?envType=study-plan-v2&envId=top-sql-50

-- solution:

WITH ordered AS (
    SELECT *,
           SUM(weight) OVER (ORDER BY turn) AS running_sum
    FROM Queue
)
SELECT person_name
FROM ordered
WHERE running_sum <= 1000
order by running_sum desc 
limit 1