-- link: https://datalemur.com/questions/sql-third-transaction

-- solution:

select user_id, spend, transaction_date
from (
select user_id, spend, transaction_date, 
row_number() over (partition by user_id order by transaction_date) as rownum
from transactions) as t2
where rownum = 3