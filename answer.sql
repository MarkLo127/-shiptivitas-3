-- TYPE YOUR SQL QUERY BELOW

-- PART 1: Create a SQL query that maps out the daily average users before and after the feature change
SELECT
  CASE
    WHEN date(login_timestamp, 'unixepoch') < '2018-06-02' THEN 'Before Feature Launch'
    ELSE 'After Feature Launch'
  END AS period,
  COUNT(DISTINCT user_id) * 1.0 / COUNT(DISTINCT date(login_timestamp, 'unixepoch')) AS daily_avg_users
FROM login_history
GROUP BY period;
-- PART 2: Create a SQL query that indicates the number of status changes by card
SELECT
  c.name AS card_name,
  COUNT(cch.id) AS status_change_count
FROM card c
LEFT JOIN card_change_history cch ON c.id = cch.cardID
WHERE cch.oldStatus IS NOT NULL
  AND cch.oldStatus != cch.newStatus
GROUP BY c.id, c.name
ORDER BY status_change_count DESC;




