ALTER TABLE `cyclistic-case-study-485903.CYCLISTIC_2019_2020_CLEAN.2019_2020_Cyclistic_Data`
RENAME COLUMN `trip_id STRING` to trip_id,
RENAME COLUMN `end_time TIMESTAMP` to end_time,
RENAME COLUMN `start_station_name STRING` to start_station_name,
RENAME COLUMN `usertype STRING` to usertype,
RENAME COLUMN `ride_length STRING` to ride_length,
RENAME COLUMN `day_of_week INT` to day_of_week,
RENAME COLUMN `hour_start INT` to hour_start,
RENAME COLUMN `weekday_or_weekend STRING` to weekday_or_weekend;
