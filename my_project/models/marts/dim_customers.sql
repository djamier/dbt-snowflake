select
    {{ dbt_utils.generate_surrogate_key(['customer_id']) }} as customer_key
    , customer_id
    , first_name
    , last_name
    , customer_gender
from {{ ref('stg_customers') }}
