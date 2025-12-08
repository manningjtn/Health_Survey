with county as
(
    select
        county_name,
        state,
        city,
        zipcode
    from {{ source("county_src_dim", "SURVEY_DATA_CLEANING") }}
    group by
        county_name, state, city, zipcode
)

select * from county