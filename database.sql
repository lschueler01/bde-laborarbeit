CREATE DATABASE IF NOT EXISTS weatherdata
create table weatherdata(
    latitude --decimal -> DEC(size, d)
    longitude --decimal -> DEC(size, d)
    timezone --> string
    timezone_offset --> shift in seconds from UTC -> INT
    current_datetime --> UNIX datetime --> Convert to datetime!!!
    current_temp -- Current temp in Kelvin -> configure API to have it in Celsius
    current_pressure -- hPa
    current_humidity -- %
    current_windspeed -- meter/sec
    weather_id -- conversion table from API
    weather_main -- string
    weather_description  -- long weather description -> String -> get in DE?
)