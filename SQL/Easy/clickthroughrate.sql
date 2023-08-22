-- link: https://datalemur.com/questions/click-through-rate

-- solution:

select app_id, round((sum(case when event_type = 'click' then 1 else 0 end)*
100.0)/sum(case when event_type = 'impression' then 1 else 0 end) , 2)  as ctr
from events
where timestamp >= '01/01/2022'
and timestamp < '01/01/2023'
group by app_id