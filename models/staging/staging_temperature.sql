SELECT
  CAST("time" AS TIMESTAMP) AS _time,
  CAST(temperature_2m AS NUMERIC) AS _temperature,
  CAST(latitude AS NUMERIC) AS _latitude,
  CAST(longitude AS NUMERIC) AS _longitude,
  city AS _city
FROM {{ source('source_api', 'temperature') }}