SELECT
  usertype AS `User Type`,
  COUNT(*) AS `Total Trips`
FROM `cyclistic-case-study-485903.CYCLISTIC_2019_2020_CLEAN.2019_2020_Cyclistic_Data`
WHERE usertype IN ('Customer', 'Subscriber')
GROUP BY usertype;
