-- link: https://datalemur.com/questions/completed-trades

-- solution:

select u.city, count(*) as orders
from trades t
left join users u
on t.user_id = u.user_id
where t.status = 'Completed'
group by city 
order by orders desc
limit 3
