-- link: https://leetcode.com/problems/investments-in-2016/submissions/
-- solution:

select round(sum(tiv_2016), 2) as tiv_2016
from Insurance
where tiv_2015 in (
select tiv_2015 
from Insurance
group by tiv_2015
having count(tiv_2015) >= 2 )
and (lat, lon) in (
  select lat,lon
  from Insurance
  group by lat, lon
  having count(*) < 2
)
