SELECT
  usertype as `User Type`,
  CASE
    WHEN ride_length < 5*60 THEN 'under 5 min'
    WHEN ride_length < 10*60 THEN '5 to 10 min'
    WHEN ride_length < 20*60 THEN '10 to 20 min'
    WHEN ride_length < 40*60 THEN '20 to 40 min'
    WHEN ride_length < 60*60 THEN '40 to 60 min'
    ELSE '60+ min'
  END AS `Ride Length`,
  COUNT(*) AS rides,
  ROUND(
    100 * COUNT(*) / SUM(COUNT(*)) OVER (PARTITION BY usertype),
    2
  ) AS `User Type %`
FROM `cyclistic-case-study-485903.CYCLISTIC_2019_2020_CLEAN.TableV2`
WHERE ride_length IS NOT NULL AND ride_length > 0
GROUP BY usertype, `Ride Length`
ORDER BY usertype, `User Type %` DESC;
