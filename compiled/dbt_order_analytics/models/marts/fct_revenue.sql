

select
  order_date,
  currency,
  sum(amount) as total_revenue,
  count(order_id) as total_orders
from "dbt_learn"."analytics"."stg_orders"
where amount is not null
group by order_date, currency