
with
    health_survey_src as (
    SELECT
        PROVIDER_ID,
        HOSPITAL_NAME,
        ADDRESS,
        CITY,
        STATE,
        ZIPCODE,
        COUNTY_NAME,
        PHONE_NUMBER,
        MEASURE_ID,
        QUESTION,
        ANSWER_DESCRIPTION,
        PATIENT_SURVEY_STAR_RATING,
        PATIENT_SURVEY_STAR_RATING_FOOTNOTE,
        ANSWER_PERCENT,
        ANSWER_PERCENT_FOOTNOTE,
        LINEAR_MEAN_VALUE,
        NUMBER_OF_COMPLETED_SURVEYS,
        NUMBER_OF_COMPLETED_SURVEYS_FOOTNOTE,
        SURVEY_RESPONSE_RATE_PERCENT,
        SURVEY_RESPONSE_RATE_PERCENT_FOOTNOTE,
        MEASURE_START_DATE,
        MEASURE_END_DATE,
        LOCATION
    from {{ source("health_survey_src", "SURVEY_DATA") }}
    )

select *
from health_survey_src
