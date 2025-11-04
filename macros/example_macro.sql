{% macro usd_only(model) %}
select *
from {{ model }}
where currency = 'USD'
{% endmacro %}
