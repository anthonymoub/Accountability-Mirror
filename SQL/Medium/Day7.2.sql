-- link: https://leetcode.com/problems/confirmation-rate/solutions/3574094/easy-join-and-sub-query-solution/?envType=study-plan-v2&envId=top-sql-50

-- solution:
select s.user_id,case 
when c.confirmation_rate is null then 0 else c.confirmation_rate 
end as confirmation_rate
from signups s left join ( 
select user_id, round(avg(rate),2) confirmation_rate from
(select *, case
when action="timeout" then 0 else 1 
end as rate
from confirmations)a
group by user_id)c on s.user_id=c.user_id