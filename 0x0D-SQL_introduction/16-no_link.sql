-- Retrieve all entries from the second_table with a valid name in my MySQL server.
-- Arrange the records in descending order based on their score.
SELECT `score`, `name`
FROM `second_table`
WHERE `name` != ""
ORDER BY `score` DESC