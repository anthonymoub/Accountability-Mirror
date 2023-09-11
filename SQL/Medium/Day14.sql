-- link: https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/solutions/3682479/mysql-2-selects-1-union/
-- solution:


 with friendsa as (
    select
        requester_id,
        count(*) as friends_a
    from
        requestaccepted
    where
        accept_date is not null
    group by
        requester_id
),
friendsb as (
    select
        accepter_id,
        count(*) as friends_b
    from
        requestaccepted
    group by
        accepter_id
)
select
    a.requester_id as id,
    (case when friends_a is not null then friends_a else 0 end)
    + (case when friends_b is not null then friends_b else 0 end) as num
from
    friendsa a
inner join
    friendsb b on a.requester_id = b.accepter_id
order by num desc
limit 1

 





