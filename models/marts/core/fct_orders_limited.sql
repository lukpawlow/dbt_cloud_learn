select * from {{ ref('fct_orders') }}
{{ limit_data_in_dev('order_date', 5000) }}