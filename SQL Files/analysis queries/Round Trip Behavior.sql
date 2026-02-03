SELECT
  usertype,
  COUNT(*) AS `Total Rides`,
  COUNTIF(start_station_name = end_station_name AND start_station_name IS NOT NULL AND start_station_name != '') AS `Round Trips`,
  ROUND(
    100 * COUNTIF(start_station_name = end_station_name AND start_station_name IS NOT NULL AND start_station_name != '')
    / COUNT(*),
    2
  ) AS `Round Trip Rate`
FROM `cyclistic-case-study-485903.CYCLISTIC_2019_2020_CLEAN.TableV2`
WHERE usertype IN ('Customer', 'Subscriber')
GROUP BY usertype
ORDER BY usertype;
