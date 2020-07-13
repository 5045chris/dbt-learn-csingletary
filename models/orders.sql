select
    orders.order_id,
    orders.customer_id,
    payments.amount
from {{ ref('stg_orders') }} as orders
left join {{ ref('stg_payment') }} as payments
    on orders.order_id  = payments.order_id