-- link: https://datalemur.com/questions/sql-page-with-no-likes

-- solution:

select page_id
from pages where page_id not in (
select page_id from page_likes)