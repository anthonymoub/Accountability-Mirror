-- link: https://leetcode.com/problems/immediate-food-delivery-ii/?envType=study-plan-v2&envId=top-sql-50

-- solution:

with immediate as (select customer_id, (case when order_date = customer_pref_delivery_date then 1 else 0 end) as immediate,
row_number() over (partition by customer_id order by order_date) as order_number
from Delivery)

select (sum(case when immediate = 1 then 1 else 0 end)/count(*))*100 as immediate_percentage
from immediate
where order_number = 1  
