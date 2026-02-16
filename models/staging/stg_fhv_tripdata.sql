with source as (
    select * from {{ source('raw', 'fhv_tripdata') }}
),

renamed as (
    select
        -- identifiers
        dispatching_base_num ,
        Affiliated_base_number as  affiliated_base_num,
        cast(PULocationID as integer) as pickup_location_id,
        cast(DOLocationID as integer) as dropoff_location_id,

        -- timestamps
        cast(pickup_datetime as timestamp) as pickup_datetime, 
        cast(dropOff_datetime as timestamp) as dropoff_datetime,

        --extra info
        SR_Flag as sr_flag

        from source 
        where 
        dispatching_base_num is not null
)
select * from renamed