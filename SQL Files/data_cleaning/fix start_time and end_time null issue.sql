CREATE OR REPLACE TABLE `cyclistic-case-study-485903.CYCLISTIC_2019_2020_CLEAN.TableV2` AS
SELECT
  trip_id,

  SAFE.PARSE_DATETIME('%m/%d/%Y %H:%M:%S', start_time) AS start_time,
  SAFE.PARSE_DATETIME('%m/%d/%Y %H:%M:%S', end_time) AS end_time,

  start_station_name,
  end_station_name,
  usertype,

  CASE
    WHEN ride_length IS NULL OR ride_length = '' THEN NULL
    WHEN ARRAY_LENGTH(SPLIT(ride_length, ':')) = 3 THEN
      SAFE_CAST(SPLIT(ride_length, ':')[SAFE_OFFSET(0)] AS INT64) * 3600 +
      SAFE_CAST(SPLIT(ride_length, ':')[SAFE_OFFSET(1)] AS INT64) * 60 +
      SAFE_CAST(SPLIT(ride_length, ':')[SAFE_OFFSET(2)] AS INT64)
    WHEN ARRAY_LENGTH(SPLIT(ride_length, ':')) = 2 THEN
      SAFE_CAST(SPLIT(ride_length, ':')[SAFE_OFFSET(0)] AS INT64) * 60 +
      SAFE_CAST(SPLIT(ride_length, ':')[SAFE_OFFSET(1)] AS INT64)
    ELSE NULL
  END AS ride_length,

  SAFE_CAST(day_of_week AS INT64) AS day_of_week,
  SAFE_CAST(hour_start AS INT64) AS hour_start,

  weekday_or_weekend
FROM `cyclistic-case-study-485903.CYCLISTIC_2019_2020_CLEAN.2019_2020_Cyclistic_Data`;
