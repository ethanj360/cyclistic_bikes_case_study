WITH base AS (
  SELECT
    usertype as `User Type`,
    EXTRACT(YEAR FROM DATE(start_time)) AS Year,
    EXTRACT(MONTH FROM DATE(start_time)) AS Month,
    ride_length
  FROM `cyclistic-case-study-485903.CYCLISTIC_2019_2020_CLEAN.TableV2`
  WHERE start_time IS NOT NULL AND ride_length IS NOT NULL AND ride_length > 0
),
monthly AS (
  SELECT
    `User Type`,
    Year,
    Month,
    COUNT(*) AS rides,
    ROUND(AVG(ride_length) / 60, 2) AS `Average Minutes`
  FROM base
  GROUP BY `User Type`, year, month
),
totals AS (
  SELECT year, month, SUM(rides) AS total_rides
  FROM monthly
  GROUP BY year, month
)
SELECT
  m.`User Type`,
  m.year,
  m.month,
  m.rides,
  m.`Average Minutes`,
  ROUND(100 * m.rides / t.total_rides, 2) AS `Month Share %`
FROM monthly m
JOIN totals t USING (year, month)
ORDER BY year, month, `User Type`;
