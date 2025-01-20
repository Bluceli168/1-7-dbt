with 

source as (

    select * from {{ source('raw', 'customers') }}

),

renamed as (

    select
        id,
        first_name,
        last_name

    from source

)

select * from renamed
