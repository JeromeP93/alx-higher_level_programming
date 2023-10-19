-- Display all entries from the second_table with a score greater than or equal to 10 in my MySQL server.
-- The records are arranged in descending order based on their score.
SELECT `score`, `name`
FROM `second_table`
WHERE `score` >= 10
ORDER BY `score` DESC;