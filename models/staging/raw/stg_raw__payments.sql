with 

source as (

    select * from {{ source('raw', 'payments') }}

),

renamed as (

    select
        id,
        orderid,
        paymentmethod,
        status,
        amount,
        created

    from source

)

select * from renamed
