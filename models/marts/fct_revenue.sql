{{ config(materialized='table') }}

select
  order_date,
  currency,
  sum(amount) as total_revenue,
  count(order_id) as total_orders
from {{ ref('stg_orders') }}
where amount is not null
group by order_date, currency
