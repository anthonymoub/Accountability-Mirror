-- link: https://leetcode.com/problems/article-views-i/submissions/?envType=study-plan-v2&envId=top-sql-50

-- solution:


select distinct author_id as id
from Views
where author_id = viewer_id
order by id 