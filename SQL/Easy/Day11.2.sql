-- link: https://leetcode.com/problems/average-selling-price/description/?envType=study-plan-v2&envId=top-sql-50

-- solution:

select p.product_id,round(sum(p.price*u.units)/sum(u.units),2) as average_price 
from Prices p 
left join 
UnitsSold u 
on p.product_id=u.product_id 
where u.purchase_date>=p.start_date and u.purchase_date<=p.end_date 
group by p.product_id