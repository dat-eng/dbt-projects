-- Custom test: ensure no negative revenue values
select *
from {{ ref('fct_revenue') }}
where total_revenue < 0
