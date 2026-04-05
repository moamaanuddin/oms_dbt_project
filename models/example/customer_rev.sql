select 
c.name as name,
c.customerid as customerid,
sum(o.revenue) as revenue
from 
{{ref('customers')}} c
join
{{ref('orders_fact')}} o
on c.customerid=o.customerid
group by 1,2 order by revenue desc limit 10