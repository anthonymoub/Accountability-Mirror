-- link: https://leetcode.com/problems/invalid-tweets/?envType=study-plan-v2&envId=top-sql-50

-- solution:

select tweet_id
from Tweets
where length(content) >= 15