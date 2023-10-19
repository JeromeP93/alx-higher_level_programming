-- Show the mean temperature (in Fahrenheit) per city, sorted in descending order of temperature.
SELECT `city`, AVG(`value`) AS `avg_temp`
FROM `temperatures`
GROUP BY `city`
ORDER BY `avg_temp` DESC;