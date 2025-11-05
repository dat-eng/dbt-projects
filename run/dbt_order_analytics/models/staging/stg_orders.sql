
  create view "dbt_learn"."analytics"."stg_orders__dbt_tmp"
    
    
  as (
    select
  order_id,
  initcap(customer_name) as customer_name,
  amount,
  currency,
  cast(created_at as date) as order_date
from "dbt_learn"."raw"."orders"
  );