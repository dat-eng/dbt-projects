-- Custom test: ensure no negative revenue values
select *
from "dbt_learn"."analytics"."fct_revenue"
where total_revenue < 0