-- link: https://datalemur.com/questions/sql-histogram-tweets

-- solution:

select count(user_id) as tweet_bucket, tweets as user_num
from(
select  user_id , count(tweet_id) as tweets
from tweets
where tweet_date >= '01/01/2022'
and tweet_date < '01/01/2023'
group by user_id) t
group by tweets
order by tweet_bucket asc