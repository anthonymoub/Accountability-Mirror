-- link: https://datalemur.com/questions/laptop-mobile-viewership

-- solution:

select sum(case when device_type = 'laptop' 
then 1 else 0 end) as laptop, 
sum(case when device_type in ('phone', 'tablet') then 1 else 0 end) as mobile
from viewership
