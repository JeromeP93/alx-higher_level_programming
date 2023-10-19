-- Retrieve all entries from the second_table in my MySQL server with a score greater than or equal to 10.
-- Arrange the records in descending order based on their score.
SELECT `score`, `name`
FROM `second_table`
WHERE `score` >= 10
ORDER BY `score` DESC;