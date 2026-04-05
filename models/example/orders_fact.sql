select 
o.orderid as orderid,
o.customerid as customerid,
sum(oi.revenue) as revenue
from 
{{ ref('orders') }} o
join 
{{ref('orderitems')}} oi
on o.orderid=oi.orderid
group by 1,2