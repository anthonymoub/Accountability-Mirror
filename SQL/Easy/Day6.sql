-- link: https://datalemur.com/questions/teams-power-users

-- solution:

select sender_id, count(message_id) as message_count
from messages
where sent_date >= '08/01/2022'
and sent_date <= '08/31/2022'
group by sender_id
order by message_count desc
limit 2