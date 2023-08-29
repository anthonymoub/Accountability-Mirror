-- link: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/solutions/3955545/easy-solution-sql-beats-100/?envType=study-plan-v2&envId=top-sql-50

-- solution:
with managers as (
select managerId, count(name) as reports
from Employee
group by managerId
having reports >= 5 )

select name
from Employee
where id in (
  select managerId
  from managers
)