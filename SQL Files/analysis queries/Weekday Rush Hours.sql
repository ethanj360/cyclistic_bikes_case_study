SELECT
  usertype,
  CASE
    WHEN weekday_or_weekend = 'Weekday' AND hour_start BETWEEN 6 AND 9
      THEN 'Weekday Morning Rush (6AM to 9AM)'
    WHEN weekday_or_weekend = 'Weekday' AND hour_start BETWEEN 16 AND 19
      THEN 'Weekday Evening Rush (4 PM to 7 PM)'
    WHEN weekday_or_weekend = 'Weekday'
      THEN 'Weekday Other Hours'
    ELSE 'Weekend'
  END AS `Time`,
  COUNT(*) AS `Total Rides`,
  ROUND(
    100 * COUNT(*) / SUM(COUNT(*)) OVER (PARTITION BY usertype),
    2
  ) AS `User Type Share %`
FROM `cyclistic-case-study-485903.CYCLISTIC_2019_2020_CLEAN.TableV2`
WHERE hour_start IS NOT NULL
GROUP BY usertype, `Time`
ORDER BY usertype, `User Type Share %` DESC;
