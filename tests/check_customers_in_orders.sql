select 
    order_id
from {{ ref('stg_orders') }} orders
where orders.customer_id not in (
    select customer_id from {{ ref('stg_customers') }}
)