-- Display the count of records with identical scores in the second_table on my MySQL server.
-- Organize the records in descending order based on the count.
SELECT `score`, COUNT(*) AS `number`
FROM `second_table`
GROUP BY `score`
ORDER BY `number` DESC;