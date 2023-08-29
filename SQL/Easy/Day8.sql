-- link: https://datalemur.com/questions/top-profitable-drugs

-- solution:

select drug,(total_sales - cogs) as profit
from pharmacy_sales
order by profit desc
limit 3