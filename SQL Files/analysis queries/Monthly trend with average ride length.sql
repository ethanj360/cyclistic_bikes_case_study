SELECT
  usertype as `User Type`,
  EXTRACT(YEAR FROM DATE(start_time)) AS Year,
  EXTRACT(MONTH FROM DATE(start_time)) AS Month,
  COUNT(*) AS Rides,
  ROUND(AVG(ride_length) / 60, 2) AS `Average Ride Minutes`
FROM `cyclistic-case-study-485903.CYCLISTIC_2019_2020_CLEAN.TableV2`
WHERE start_time IS NOT NULL AND ride_length IS NOT NULL AND ride_length > 0
GROUP BY usertype, year, month
ORDER BY Year, Month, usertype;
