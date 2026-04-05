select 
customerid,
concat(firstname,'_',lastname) as name,
email,
phone
from 
sleekmart_oms.l1_landing.customers