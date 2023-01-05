with customers as (select * from {{ ref("dim_customers") }})

select customer_id, sum(number_of_orders) as sn
from customers
group by 1
having sn < 0
