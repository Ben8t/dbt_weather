SELECT
  _city AS city,
  DATE(_time) AS date_time,
  AVG(_temperature) AS avg_temperature
FROM {{ ref("staging_temparature") }}
GROUP BY _city, DATE(_time)