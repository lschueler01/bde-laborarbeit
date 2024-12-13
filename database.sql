CREATE DATABASE IF NOT EXISTS weatherdata
create table weatherdata(
    latitude --decimal -> DEC(size, d)
    longitude --decimal -> DEC(size, d)
    timezone --> string
    timezone_offset --> shift in seconds from UTC -> INT
    current_datetime --> UNIX datetime --> Convert to datetime!!! (Select dateadd(S, current_datetime], '1970-01-01') FROM weatherdata?)
    local_time -- UNIX time in local time zone
    current_temp -- Current temp in Kelvin -> configure API to have it in Celsius
    current_pressure -- hPa
    current_humidity -- %
    current_windspeed -- meter/sec
    weather_id -- conversion table from API
    weather_main -- string
    weather_description  -- long weather description -> String -> get in DE?
)

-- optional depending on api response
create table weathercodes(
    weather_id
    weather_main
    weather_description
)

-- optional depending on api response
create table city_coordinates(
    longitude
    latitude
    city_name
)